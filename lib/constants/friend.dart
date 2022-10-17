class Friend {
  final String? name;
  final String? nickname;
  final String? password;
  final String? email;
  final String? phone;
  final String? age;
  final String? friendsP;
  final String? gender;
  bool isExpanded = false;

  Friend(
      {required this.name,
      required this.nickname,
      required this.password,
      required this.email,
      required this.phone,
      required this.age,
      required this.friendsP,
      this.gender
      });
}
