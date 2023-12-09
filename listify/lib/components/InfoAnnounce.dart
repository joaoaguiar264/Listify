import 'package:flutter/material.dart';

class InfoAnnounce extends StatelessWidget {
  String title;
  String price;
  String description;

  InfoAnnounce(
      {super.key,
      required this.title,
      required this.price,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Carro',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'R\$ 15000',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Corsinha 2002 muito bem conservado',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
