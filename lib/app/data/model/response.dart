/// data : [{"id":30,"user_id":3,"book_id":5,"tanggal_pinjam":"2024-02-10","tanggal_kembali":"2024-01-28","status":"DIPINJAM","created_at":"2024-02-10T03:40:03.000000Z","updated_at":"2024-02-10T03:40:03.000000Z","buku":[{"id":5,"judul":"Ratione quia sit iusto mollitia ut perspiciatis quia.","kategori_id":1,"penulis":"Alika Hafshah Haryanti M.Farm","penerbit":"ERLANGGA","status":"TERSEDIA","tanggal_publikasi":"2008-07-25","created_at":"2024-01-23T20:56:41.000000Z","updated_at":"2024-01-23T20:56:41.000000Z"}]}]

class Response {
  Response({
      this.data,});

  Response.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  List<Data>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 30
/// user_id : 3
/// book_id : 5
/// tanggal_pinjam : "2024-02-10"
/// tanggal_kembali : "2024-01-28"
/// status : "DIPINJAM"
/// created_at : "2024-02-10T03:40:03.000000Z"
/// updated_at : "2024-02-10T03:40:03.000000Z"
/// buku : [{"id":5,"judul":"Ratione quia sit iusto mollitia ut perspiciatis quia.","kategori_id":1,"penulis":"Alika Hafshah Haryanti M.Farm","penerbit":"ERLANGGA","status":"TERSEDIA","tanggal_publikasi":"2008-07-25","created_at":"2024-01-23T20:56:41.000000Z","updated_at":"2024-01-23T20:56:41.000000Z"}]

class Data {
  Data({
      this.id, 
      this.userId, 
      this.bookId, 
      this.tanggalPinjam, 
      this.tanggalKembali, 
      this.status, 
      this.createdAt, 
      this.updatedAt, 
      this.buku,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    userId = json['user_id'];
    bookId = json['book_id'];
    tanggalPinjam = json['tanggal_pinjam'];
    tanggalKembali = json['tanggal_kembali'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['buku'] != null) {
      buku = [];
      json['buku'].forEach((v) {
        buku?.add(Buku.fromJson(v));
      });
    }
  }
  int? id;
  int? userId;
  int? bookId;
  String? tanggalPinjam;
  String? tanggalKembali;
  String? status;
  String? createdAt;
  String? updatedAt;
  List<Buku>? buku;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId;
    map['book_id'] = bookId;
    map['tanggal_pinjam'] = tanggalPinjam;
    map['tanggal_kembali'] = tanggalKembali;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (buku != null) {
      map['buku'] = buku?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 5
/// judul : "Ratione quia sit iusto mollitia ut perspiciatis quia."
/// kategori_id : 1
/// penulis : "Alika Hafshah Haryanti M.Farm"
/// penerbit : "ERLANGGA"
/// status : "TERSEDIA"
/// tanggal_publikasi : "2008-07-25"
/// created_at : "2024-01-23T20:56:41.000000Z"
/// updated_at : "2024-01-23T20:56:41.000000Z"

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