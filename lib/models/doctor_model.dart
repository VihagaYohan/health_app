class DoctorModel {
  final String name;
  final String position;
  final int averageReview;
  final int totalReview;
  final String profile;

  DoctorModel(
      {required this.name,
      required this.position,
      required this.averageReview,
      required this.totalReview,
      required this.profile});
}

List<DoctorModel> nearByDoctors = [
  DoctorModel(
      name: "name 1",
      position: "position 1",
      averageReview: 3,
      totalReview: 195,
      profile: 'assets/images/doctor_1.jpg'),
  DoctorModel(
      name: "name 2",
      position: "position 2",
      averageReview: 3,
      totalReview: 195,
      profile: 'assets/images/doctor_2.jpg'),
  DoctorModel(
      name: "name 3",
      position: "position 3",
      averageReview: 3,
      totalReview: 195,
      profile: 'assets/images/doctor_3.jpg')
];
