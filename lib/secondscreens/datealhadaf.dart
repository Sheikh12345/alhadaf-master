import 'package:alhadaf/fetchScreens/dateacadmy.dart';
import 'package:alhadaf/fetchScreens/dateclubs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detailphoto.dart';

class DateAlhadaf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/background.jpeg?alt=media&token=018e76e8-e52d-4870-b76b-20587ec780c5'),
              fit: BoxFit.fill),
        ),
        child: ListView(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                child: Image(
                    image: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/WhatsApp%20Image%202021-06-04%20at%209.07.26%20AM.jpeg?alt=media&token=344437bb-79d0-4167-a22a-1dadf48163c9'),
                    width: double.infinity,
                    fit: BoxFit.cover),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Colors.black,
                    child: RaisedButton(
                      color: Colors.black,
                        child: Text('مواعيد اختبارات الأندية',style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>DateClubs()));
                        }),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Colors.black,
                    child: RaisedButton(
                      color: Colors.black,
                        child: Text('مواعيد تدريب الأكاديمية',style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>DateAcadmy()));
                        }),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) =>
                      DetailPhoto(
                      )));
                },
                  child: Image(image: NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/9.png?alt=media&token=a0845b61-6bc5-4a02-a92f-e62eee573996'),
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
