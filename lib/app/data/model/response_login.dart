/// status : 200
/// message : "Login sukses"
/// data : {"id":20,"token":"17|6zOKkyFeyPNadRdJiJ0mMFAQFC2UogYMavyK5rUve16009b0","name":"ivan","password":"$2y$12$WypxlxbzVhjHRrP23yFPPOrMAp0MjGUdbVyKkKqvWsaoaG9AcJq4."}

class ResponseLogin {
  ResponseLogin({
      this.status, 
      this.message, 
      this.data,});

  ResponseLogin.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? status;
  String? message;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

/// id : 20
/// token : "17|6zOKkyFeyPNadRdJiJ0mMFAQFC2UogYMavyK5rUve16009b0"
/// name : "ivan"
/// password : "$2y$12$WypxlxbzVhjHRrP23yFPPOrMAp0MjGUdbVyKkKqvWsaoaG9AcJq4."

class Data {
  Data({
      this.id, 
      this.token, 
      this.name, 
      this.password,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    token = json['token'];
    name = json['name'];
    name = json['email'];
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