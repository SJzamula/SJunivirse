import '../../../model/activity_model.dart';

class DestinationPrinciple {
  String imageUrl;
  String description;
  List<Activity> activities;

  DestinationPrinciple({
    required this.imageUrl,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/pc.png',
    name: 'Понеділок',
    type: 'Презентація в гугл мітс',
  ),
  Activity(
    imageUrl: 'assets/images/galaxy.jpg',
    name: 'Вівторок',
    type: 'Презентація в гугл мітс',
  ),
  Activity(
    imageUrl: 'assets/images/galaxy.jpg',
    name: 'Середа',
    type: 'Презентація в гугл мітс',
  ),
];

List<DestinationPrinciple> destinations = [
  DestinationPrinciple(
    imageUrl: 'assets/images/Introduction.jpg',
    description: 'Короткий огляд всіх подальших семінарів та тренінгів з Принципу',
    activities: activities,
  ),
  DestinationPrinciple(
    imageUrl: 'assets/images/pc.png',
    description: 'Семінар першого рівня, де викладені осносні 3 основні теми',
    activities: activities,
  ),
  // DestinationPrinciple(
  //   imageUrl: 'assets/images/second_level_seminar.jpg',
  //   description: 'In this lecture we are talking about all course and new truth.',
  //   activities: activities,
  // ),
  // DestinationPrinciple(
  //   imageUrl: 'assets/images/first_level_seminar.jpg',
  //   description: 'In this lecture we are talking about all course and new truth.',
  //   activities: activities,
  // ),

];