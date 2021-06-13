import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class TalentShowPerson extends StatefulWidget {

  @override
  _TalentShowPersonState createState() => _TalentShowPersonState();
}

class _TalentShowPersonState extends State<TalentShowPerson> {

  String _name;
  String _position;
  String _country;
  String _location;
  String _numberId;
  String _number;
  String _email;
  String _date;

  final _key = GlobalKey<FormState>();

  TextStyle styleField = TextStyle(
      fontFamily: 'Cairo',
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black87);

  final name = TextEditingController();
  final position = TextEditingController();
  final country = TextEditingController();
  final location = TextEditingController();
  final numberId = TextEditingController();
  final number = TextEditingController();
  final email = TextEditingController();
  final date = TextEditingController();

  final picker = ImagePicker();

  VideoPlayerController _videoPlayerController;

  File file;

  _pickVideo() async {
    final video = await picker.getVideo(source: ImageSource.gallery);

    file = File(video.path);

    _videoPlayerController = VideoPlayerController.file(file)
      ..initialize().then((_) {
      setState(() {

      });
        _videoPlayerController.play();
      });
  }

  _pickVideoCamera() async {
    final video = await picker.getVideo(source: ImageSource.camera);

    file = File(video.path);

    _videoPlayerController = VideoPlayerController.file(file)
      ..initialize().then((_) {
      setState(() {

      });
        _videoPlayerController.play();

       });
  }



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
      return Directionality(textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Container(
            height:size.height,
            width: size.width,
            child: Form(
              key: _key,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'تقديم طلب فردي',
                        style: TextStyle(fontFamily: 'Cairo', fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    TextFormField(
                      controller: name,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'الاسم لا يمكن ان يكون فارغ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _name = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'الاسم'),
                      style: styleField,
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: position,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'مركز اللعب لا يمكن ان يكون فارغ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _position = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'مركز اللعب'),
                      style: styleField,
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: country,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'البلد لا يمكن ان يكون فارغ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _country = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'البلد'),
                      style: styleField,
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: location,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'العنوان لا يمكن ان يكون فارغ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _location = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'العنوان'),
                      style: styleField,
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: numberId,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'الرقم القومي لا يمكن ان يكون فارغ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _numberId = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'الرقم القومي'),
                      style: styleField,
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'رقم الهاتف لا يمكن ان يكون فارغ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _number = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'رقم الهاتف'),
                      style: styleField,
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: email,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'البريد الالكتروتي لا يمكن ان يكون فارغ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _email = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'البريد الالكتروني'),
                      style: styleField,
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: date,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'التاريخ لا يمكن ان يكون فارغ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _date = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'التاريخ'),
                      style: styleField,
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        '${file==null?"":file.toString()}',
                        style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text('ارسال فيديو من ',style: TextStyle(fontFamily: 'Cairo',fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          color: Colors.green[800],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Text('معرض',style: TextStyle(fontFamily: 'Cairo',fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),),
                          onPressed: _pickVideo,
                        ),
                        /// Material button is same as Raised button
                        MaterialButton(
                          color: Colors.green[800],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Text('كاميرا',style: TextStyle(fontFamily: 'Cairo',fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),),
                          onPressed: _pickVideoCamera,
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    MaterialButton(
                        color: Colors.green[800],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text('ارسال الطلب',style: TextStyle(fontFamily: 'Cairo',fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                        onPressed: (){
                          if (!_key.currentState.validate()) {
                            return;
                          }
                          _key.currentState.save();

                          task();
                          print(task());
                        }),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
            ),
          ),
        ),);
  }
  Future task()async{



    /// always use camel case in dart for variable
    final Name=name.text;
    final Date = date.text;
    final Numper=number.text;
    final Email=email.text;
    final Numberid=numberId.text;
    final Country = country.text;
    final Posation = position.text;
    final Loaction = location.text;

         return  await FirebaseStorage.instance
        .ref()
        .child('videos/${Uri.file(  file.path).pathSegments.last}')
        .putFile(file).then((value) {
         value.ref.getDownloadURL().then((value) async{
         final videoLink = '$value';
         return await FirebaseFirestore.instance.collection('professional').add({
              'video' : videoLink,
              'name' : Name,
              'date' : Date,
              'number' : Numper,
              'number id' : Numberid,
              'Email' : Email,
              'country' : Country,
              'position' : Posation,
              'loaction' : Loaction,
           }).whenComplete((){
           name.clear();
           date.clear();
           number.clear();
           email.clear();
           numberId.clear();
           country.clear();
           location.clear();
             position.clear();
           setState(() {
            file = null;
           });

         }).catchError((e){
           print( "error => "+e.toString());
         });
          });
    });
  }
}
