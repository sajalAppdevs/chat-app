import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserImage extends StatefulWidget {

  final void Function(File pickedImage) imagePickFn;
  const UserImage({Key? key, required this.imagePickFn}) : super(key: key);

  @override
  State<UserImage> createState() => _UserImageState();
}

class _UserImageState extends State<UserImage> {
   File? _pickedImage;
  void _pickImage()async{
    final _picker = ImagePicker();
   final pickedImageFile=await _picker.pickImage(source: ImageSource.camera,imageQuality: 50,maxWidth: 150);
   setState((){
     if(pickedImageFile!=null) {
       _pickedImage = File(pickedImageFile.path) ;
     }
   });
   widget.imagePickFn(File(pickedImageFile!.path));
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: _pickedImage!=null?FileImage(_pickedImage!):null,
          backgroundColor: Theme.of(context).primaryColor,
          radius: 40,
        ),
        TextButton.icon(
          onPressed: _pickImage,
          icon: Icon(
            Icons.image,
            color: Theme.of(context).primaryColor,
          ),
          label: Text(
            'Add Image',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ),
      ],
    );
  }
}
