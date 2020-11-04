<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Siswa;
use App\User;
use App\Mapel;

class SiswaController extends Controller
{
    public function index(Request $request)
    {
        if ($request->has('cari')) {
            $data_siswa = Siswa::where('nama_depan', 'LIKE', '%' . $request->cari . '%')->get();
        } else {
            $data_siswa = Siswa::all();
        }
        return view('siswa.index', compact('data_siswa'));
    }

    public function create(Request $request)
    {
        // validasi
        $this->validate($request, [
            'nama_depan'    => 'required',
            'email'         => 'required|email|unique:users',
            'jenis_kelamin' => 'required',
            'agama'         => 'required',
            'avatar'        => 'mimes:jpeg,jpg,png,gif'
        ]);
        // Insert ke Table User
        $user                 = new User;
        $user->role           = 'siswa';
        $user->name           = $request->nama_depan;
        $user->email          = $request->email;
        $user->password       = bcrypt('rahasia');
        $user->remember_token = str_random(60);
        $user->save();
        // Insert ke Table Siswa
        $request->request->add(['user_id' => $user->id]);
        $siswa = Siswa::create($request->all());
        if ($request->hasFile('avatar')) {
            $request->file('avatar')->move('images/', $request->file('avatar')->getClientOriginalName());
            $siswa->avatar = $request->file('avatar')->getClientOriginalName();
            $siswa->save();
        }
        return redirect('/siswa')->with('success', 'Berhasil Tambah Data Siswa');
    }

    public function edit($id)
    {
        $siswa = Siswa::find($id);
        return view('siswa.edit', compact('siswa'));
    }

    public function update(Request $request, $id)
    {
        // dd($request->all());

        $siswa = Siswa::find($id);
        $siswa->update($request->all());
        if ($request->hasFile('avatar')) {
            $request->file('avatar')->move('images/', $request->file('avatar')->getClientOriginalName());
            $siswa->avatar = $request->file('avatar')->getClientOriginalName();
            $siswa->save();
        }
        return redirect('/siswa')->with('success', 'Berhasil Update Data Siswa');
    }

    public function delete($id)
    {
        $siswa = Siswa::find($id);
        $siswa->delete();
        return redirect('/siswa')->with('success', 'Berhasil Delete Data Siswa');
    }

    public function profile($id)
    {
        $siswa = Siswa::find($id);
        $mpel  = Mapel::all();
        return view('siswa.profile', compact(['siswa', 'mpel']));
    }

    public function addnilai(Request $request, $id)
    {
        // validasi
        $this->validate($request, [
            'nilai'    => 'required|numeric',
        ]);

        $siswa = Siswa::find($id);
        if ($siswa->mapel()->where('mapel_id', $request->mapel)->exists()) {
            return redirect('/siswa/' . $id . '/profile')->with('error', 'Data Mata Pelajaran Sudah ada');
        }

        $siswa->mapel()->attach($request->mapel, ['nilai' => $request->nilai]);
        return redirect('/siswa/' . $id . '/profile')->with('success', 'Berhasil Tambah Nilai');
    }
}
