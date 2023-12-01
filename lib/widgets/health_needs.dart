import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIcons = [
      CustomIcon(icon: 'assets/images/appointment.png', name: 'Appointment'),
      CustomIcon(icon: 'assets/images/hospital.png', name: "Hospital"),
      CustomIcon(icon: 'assets/images/virus.png', name: 'Covid-19'),
      CustomIcon(icon: "assets/images/more.png", name: 'More')
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.4)),
              child: Image.asset(customIcons[index].icon),
            ),
            const SizedBox(height: 6),
            Text(customIcons[index].name)
          ],
        );
      }),
    );
  }
}

class CustomIcon {
  final String icon;
  final String name;
  CustomIcon({required this.icon, required this.name});
}
