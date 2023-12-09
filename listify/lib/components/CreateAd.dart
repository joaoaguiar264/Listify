import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:listify/components/SelectImage.dart';
import 'package:listify/components/InputText.dart';
import 'package:listify/data/CategoriesData.dart';
import 'package:dropdown_search/dropdown_search.dart';

class CreateAd extends StatefulWidget {
  const CreateAd({super.key});

  @override
  State<CreateAd> createState() => _CreateAdState();
  
}

class _CreateAdState extends State<CreateAd>{
  var imageController_1;
  var imageController_2;
  var imageController_3;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Ad'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SelectImage(
                    imageController: imageController_1,
                  ),
                  SelectImage(
                    imageController: imageController_1,
                  ),
                  SelectImage(
                    imageController: imageController_1,
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              InputText(
                label: 'Title',
              ),
              InputText(
                label: 'Description',
                height: 4,
              ),
              InputText(
                label: 'Price',
              ),
              InputText(
                label: 'City',
              ),

              DropdownSearch(
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                    ),
                  ), 
                ),
                items: categoriesData,
                popupProps: PopupProps.menu(),
                ),

              InputText(
                label: 'Email',
              ),
              InputText(
                label: 'Phone',
              ),
      
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {}, 
                  child: const Text('Publish Ad'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
  