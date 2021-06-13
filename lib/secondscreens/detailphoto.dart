import 'package:flutter/material.dart';

class DetailPhoto extends StatefulWidget {


  @override
  _DetailPhotoState createState() => _DetailPhotoState();
}

class _DetailPhotoState extends State<DetailPhoto> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 300,
        width: double.infinity,
        child: Center(
          child: Image.network('https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/9.png?alt=media&token=a0845b61-6bc5-4a02-a92f-e62eee573996'),
        ),
      ),
    );
  }
}
