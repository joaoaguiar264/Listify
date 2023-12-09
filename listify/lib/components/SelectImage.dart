import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SelectImage extends StatefulWidget {
  var imageController;

  SelectImage({super.key, required this.imageController});

  @override
  State<SelectImage> createState() => _SelectImageState();
}

var image;

class _SelectImageState extends State<SelectImage> {
  loadImage() async{
  var picker = ImagePicker();
  var selectedImage = await picker.pickImage(source: ImageSource.camera);

  setState(() {
    image = selectedImage;
  });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: 100,
      color: Colors.grey,
      child: image == null 
        ? IconButton(
          onPressed: loadImage,
          icon: const Icon(Icons.add_a_photo),
        ) 
        : Image.file(
          File(image.path),
          fit: BoxFit.cover,
        )
    );
  }
}