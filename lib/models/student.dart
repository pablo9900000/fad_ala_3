class Student {
  final int id;
  final String name;
  final String email;
  final String rollNumber;
  final String course;

  Student({
    required this.id,
    required this.name,
    required this.email,
    this.rollNumber = '',
    this.course = '',
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'] ?? 0,
      name: json['name'] ?? 'Unknown',
      email: json['email'] ?? 'No Email',
      // API doesn't allow roll/course, so we default valid strings or extract if mapped
      rollNumber: '',
      course: '',
    );
  }

  // To support adding/editing if we were sending back to API, but for local we just use the object.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'rollNumber': rollNumber,
      'course': course,
    };
  }
}
