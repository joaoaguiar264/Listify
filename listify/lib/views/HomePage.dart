import 'package:flutter/material.dart';
import 'package:listify/components/CardItem.dart';
import 'package:listify/components/Tabbar.dart';
import 'package:listify/views/CategoriesList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ListiFy'),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: const Color.fromARGB(255, 223, 218, 218),
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CategoriesList(),
                      )
                    );
                }, 
                child: Tabbar(name: 'Categories')
                ),
              Tabbar(name: 'Cities'),
            ],
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context, index){
                return CardItem(
                  title: 'Couch',
                  price: '500',
                  image: 'https://source.unsplash.com/150x180/?couch',
                  city: 'São José',
                  date: '11/18',
                );
              }
            ),
          )

        ],
      ),
    );
  }
}