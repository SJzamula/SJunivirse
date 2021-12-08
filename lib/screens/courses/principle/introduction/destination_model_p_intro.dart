import '../../../model/activity_model.dart';
import 'activities_introduction.dart';

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

List<DestinationPrinciple> destinations = [
  DestinationPrinciple(
    imageUrl: 'assets/images/intro.jpeg',
    description: 'Короткий огляд всіх подальших семінарів та тренінгів з Принципу',
    activities: [ Activity(
        imageUrl: 'assets/images/intro.jpeg',
        name: 'Вступ',
        type: 'Вступ - це короткий огляд всіх подальших семінарів та тренінгів з Принципу. Роздивимося основоположні ідеї,'
            ' які в подальшому будемо більше розкривати. Також ця тема буде тісно переплітатися з темою щастя.',
      ),
    ],
  ),
  DestinationPrinciple(
    imageUrl: 'assets/images/first.jpeg',
    description: 'Семінар першого рівня, де викладені осносні 3 основні теми',
    activities: [
      Activity(
        imageUrl: 'assets/images/pc.jpeg',
        name: 'Принцип Творення',
        type: 'Поняття першопричини різні люди розглядають по різному. Одні кажуть, що першопричина існувала вічно,'
            'інші кажуть, що першопричини не існує і те, що людина - це і є сама першопричина. Такі погляди породили '
            'життєві філософії, що сформували спосіб життя. Тому тут ми розглянемо тему першопричини, а також '
            'універсальні закони росту і розвику людини.В кінці цієї теми ми подивимося, які цілі різні філософії ставили людині. '
            'Тобто рохдивимося 3 основні цілі людини і спробуємо через це сформулювати і поставити собі цілі, які так необхідні для розвитку.',
      ),
      Activity(
        imageUrl: 'assets/images/rc.jpeg',
        name: 'Причини конфліктів',
        type: 'Презентація в гугл мітс',
      ),
      Activity(
        imageUrl: 'assets/images/pr.jpeg',
        name: 'Принцип Відновлення',
        type: 'Презентація в гугл мітс',
      ),
    ]
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