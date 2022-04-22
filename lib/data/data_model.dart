class User {
  String id ="";
  String name ="";
  String phone ="";
  String email ="";
  String image ="";


  User(this.id, this.name, this.image, this.phone, this.email);

  User.fromJson(Map<String, dynamic> json) {
    id= json['id'];
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['job'] = this.phone;
    data['image'] = this.image;

    return data;
  }
}