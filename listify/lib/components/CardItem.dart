import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {

  String title;
  String price;
  String image;
  String city;
  String date;

  CardItem(
    {super.key, 
    required this.title, 
    required this.price, 
    required this.image,
    required this.city,
    required this.date
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        child: Row(
          children: [
            Image.network(image),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'R\$ $price', 
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          city,
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          date,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    )
                  ],
                )
              ),
            )
            
          ],
        ),
      ),
    );
  }
}