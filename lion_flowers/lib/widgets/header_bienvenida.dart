import 'package:flutter/material.dart';


class HeaderBienvenida extends StatelessWidget {
  const HeaderBienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bienvenido a Lion Flowers ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              "Encuentra el arreglo perfecto",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
        const CircleAvatar(
          radius: 24,
          backgroundColor: Colors.pinkAccent,
          child: Icon(Icons.local_florist, color: Colors.white),
        ),
      ],
    );
  }
}
