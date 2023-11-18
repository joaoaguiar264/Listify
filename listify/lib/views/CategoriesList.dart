import 'package:flutter/material.dart';
import 'package:listify/data/CategoriesData.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext, context) => Divider(
          height: 20,
          ),
        itemCount: categoriesData.length, 
        itemBuilder: (context, index){
          return ListTile(
            title: Text(categoriesData[index]),
          );
        }
      ),
    );
  }
}