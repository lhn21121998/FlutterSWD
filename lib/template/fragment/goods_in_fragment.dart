import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';

class GoodsInFragment extends StatefulWidget {
  @override
  _GoodsInFragmentState createState() => _GoodsInFragmentState();
}

class _GoodsInFragmentState extends State<GoodsInFragment> {
  File _imageFile;
  String imgUrl = 'a';
  Future pickImageFromGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = image;
    });
  }

  Future uploadImage() async {
    String fileName = basename(_imageFile.path);
    StorageReference reference = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask uploadTask = reference.putFile(_imageFile);
    StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
  }

  Future downloadImage() async {
    String fileName = basename(_imageFile.path);
    StorageReference reference = FirebaseStorage.instance.ref().child(fileName);
    String imgAddress = await reference.getDownloadURL();
    setState(() {
      imgUrl = imgAddress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Name',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    width: 200.0,
                    height: 30.0,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Name'),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Size',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 35.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 30.0,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Size'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Color',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 30.0,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Color'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Quantity',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 30.0,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Quantity'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed: () {
                  pickImageFromGallery();
                },
                child: Text(
                  'Choose Image',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0,
                  ),
                ),
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(
                height: 20.0,
              ),
              _imageFile == null
                  ? Text('Choose Image')
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.file(
                        _imageFile,
                        height: 200.0,
                        width: 200.0,
                      ),
                    ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed: () {
                  uploadImage();
                  downloadImage();
                  print(imgUrl);
                },
                child: Text(
                  'Goods In',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0,
                  ),
                ),
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
