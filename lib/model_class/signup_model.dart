class User {
  bool? success;
  bool? error;
  String? message;
  Details? details;

  User({this.success, this.error, this.message, this.details});

  User.fromJson(Map<String, dynamic> json) {
    success = json['Success'];
    error = json['Error'];
    message = json['Message'];
    details =
    json['details'] != null ? new Details.fromJson(json['details']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Success'] = this.success;
    data['Error'] = this.error;
    data['Message'] = this.message;
    if (this.details != null) {
      data['details'] = this.details!.toJson();
    }
    return data;
  }
}

class Details {
  String? userName;
  String? password;
  String? name;
  int? phoneNo;
  int? role;
  String? sId;
  int? iV;

  Details(
      {this.userName,
        this.password,
        this.name,
        this.phoneNo,
        this.role,
        this.sId,
        this.iV});

  Details.fromJson(Map<String, dynamic> json) {
    userName = json['UserName'];
    password = json['Password'];
    name = json['Name'];
    phoneNo = json['PhoneNo'];
    role = json['Role'];
    sId = json['_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserName'] = this.userName;
    data['Password'] = this.password;
    data['Name'] = this.name;
    data['PhoneNo'] = this.phoneNo;
    data['Role'] = this.role;
    data['_id'] = this.sId;
    data['__v'] = this.iV;
    return data;
  }
}