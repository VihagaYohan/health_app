import 'package:flutter/material.dart';
import 'package:health_app/models/doctor_model.dart';
import 'package:ionicons/ionicons.dart';

class NearbyDoctors extends StatelessWidget {
  const NearbyDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(nearByDoctors.length, (index) {
      print(nearByDoctors[index].averageReview);
      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage(''), fit: BoxFit.cover)),
            ),
            const SizedBox(width: 10),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(nearByDoctors[index].name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('General Practitioner'),
                  SizedBox(height: 20),
                  Row(children: [
                    Icon(Ionicons.star, size: 18, color: Colors.yellow),
                    Padding(
                        padding: EdgeInsets.only(left: 4, right: 6),
                        child: Text('4.0',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Text("195 Reviews")
                  ])
                ])
          ],
        ),
      );
    }));
  }
}
