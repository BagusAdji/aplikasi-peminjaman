/// status : 200
/// message : "success"
/// data : [{"id":1,"user_id":2,"book_id":1,"tanggal_pinjam":"2024-01-01 00:00:00","tanggal_kembali":"2024-01-10 00:00:00","status":"DIPINJAM","created_at":"2024-01-09T06:09:06.000000Z","updated_at":"2024-01-09T06:09:06.000000Z","user":{"id":2,"username":"said","nama":"said","telp":"085","alamat":"alamat","role":"PEMINJAM","created_at":"2024-01-09T05:36:44.000000Z","updated_at":"2024-01-09T05:36:44.000000Z"},"book":{"id":1,"kategori_id":1,"judul":"Belajar mengenal angka","penulis":"kusnaidi","penerbit":"PT alangka","tahun_terbit":2024,"created_at":"2024-01-09T05:43:09.000000Z","updated_at":"2024-01-09T05:43:09.000000Z"}}]

class ResponsePinjam {
  ResponsePinjam({
      this.status, 
      this.message, 
      this.data,});

  ResponsePinjam.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(DataPinjam.fromJson(v));
      });
    }
  }
  int? status;
  String? message;
  List<DataPinjam>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// user_id : 2
/// book_id : 1
/// tanggal_pinjam : "2024-01-01 00:00:00"
/// tanggal_kembali : "2024-01-10 00:00:00"
/// status : "DIPINJAM"
/// created_at : "2024-01-09T06:09:06.000000Z"
/// updated_at : "2024-01-09T06:09:06.000000Z"
/// user : {"id":2,"username":"said","nama":"said","telp":"085","alamat":"alamat","role":"PEMINJAM","created_at":"2024-01-09T05:36:44.000000Z","updated_at":"2024-01-09T05:36:44.000000Z"}
/// book : {"id":1,"kategori_id":1,"judul":"Belajar mengenal angka","penulis":"kusnaidi","penerbit":"PT alangka","tahun_terbit":2024,"created_at":"2024-01-09T05:43:09.000000Z","updated_at":"2024-01-09T05:43:09.000000Z"}

class DataPinjam {
  DataPinjam({
    this.id,
    this.userId,
    this.bookId,
    this.tanggalPinjam,
    this.tanggalKembali,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.buku,
  });

  DataPinjam.fromJson(dynamic json) {
    id = json['id'];
    userId = json['user_id']; // Jangan lakukan konversi ke int di sini
    bookId = json['book_id']; // Jangan lakukan konversi ke int di sini
    tanggalPinjam = json['tanggal_pinjam'];
    tanggalKembali = json['tanggal_kembali'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    if (json['buku'] != null) {
      buku = [];
      json['buku'].forEach((v) {
        buku?.add(Buku.fromJson(v));
      });
    }
  }

  int? id;
  int? userId; // Gunakan tipe dynamic untuk userId
  int? bookId; // Gunakan tipe dynamic untuk bookId
  String? tanggalPinjam;
  String? tanggalKembali;
  String? status;
  String? createdAt;
  String? updatedAt;
  User? user;
  List<Buku>? buku;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId; // Tidak perlu konversi ke int
    map['book_id'] = bookId; // Tidak perlu konversi ke int
    map['tanggal_pinjam'] = tanggalPinjam;
    map['tanggal_kembali'] = tanggalKembali;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (user != null) {
      map['user'] = user!.toJson();
    }
    if (buku != null) {
      map['buku'] = buku?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}


/// id : 1
/// kategori_id : 1
/// judul : "Belajar mengenal angka"
/// penulis : "kusnaidi"
/// penerbit : "PT alangka"
/// tahun_terbit : 2024
/// created_at : "2024-01-09T05:43:09.000000Z"
/// updated_at : "2024-01-09T05:43:09.000000Z"

class Buku {
  Buku({
    this.id,
    this.judul,
    this.kategoriId,
    this.penulis,
    this.penerbit,
    this.status,
    this.tanggalPublikasi,
    this.createdAt,
    this.updatedAt,});

  Buku.fromJson(dynamic json) {
    id = json['id'];
    judul = json['judul'];
    kategoriId = json['kategori_id'];
    penulis = json['penulis'];
    penerbit = json['penerbit'];
    status = json['status'];
    tanggalPublikasi = json['tanggal_publikasi'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? judul;
  int? kategoriId;
  String? penulis;
  String? penerbit;
  String? status;
  String? tanggalPublikasi;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['judul'] = judul;
    map['kategori_id'] = kategoriId;
    map['penulis'] = penulis;
    map['penerbit'] = penerbit;
    map['status'] = status;
    map['tanggal_publikasi'] = tanggalPublikasi;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}


// "status": 200,
// "message": "Login sukses",
// "data": {
// "id": 1,
// "token": "31|IGPXX7BPwAnihrFb3MjD3hkQYPVNyWlTEHDiP3OO744ef784",
// "name": "aji",
// "password": "$2y$12$neKxyuWR8i/MwzHxp7oH5ekxxJcjmVoJpoUuhf1B/8/NjLwFkalK2"

class User {
  User({
    this.id,
    this.token,
    this.name,
    this.password,});

  User.fromJson(dynamic json) {
    id = json['id'];
    token = json['token'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
  }

  int? id;
  String? token;
  String? name;
  String? email;
  String? password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['token'] = token;
    map['name'] = name;
    map['email'] = email;
    map['password'] = password;
    return map;
  }
}
