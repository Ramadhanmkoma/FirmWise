class Farmer {
  late int id;
  late String firstName;
  late String middleName;
  late String lastName;
  late String email;
  late String password;

  Farmer(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.middleName,
      required this.email,
      required this.password});

  factory Farmer.fromJson(Map<String, dynamic> json) {
    return Farmer(
      id: json['id'] as int,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      middleName: json['middle_name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }
}
