class User  {
  late int id;
  late String name;

  User(this.id, this.name);

  @override
  String toString() {
    // TODO: implement toString
    return '$id --  $name';
  }

  getId() {
    return id;
  }
}

extension Info on User {
  void showInfo() {
    print("extension info");
  }
}