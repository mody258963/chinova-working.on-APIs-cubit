

class Username {
  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;

  Username.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    gender = json['gender'];
    status = json['status'];
  }
}
