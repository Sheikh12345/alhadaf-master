import 'package:alhadaf/fetchScreens/acadmyorder.dart';
import 'package:alhadaf/fetchScreens/cluborders.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detailphoto.dart';

class TestAlhadaf extends StatelessWidget {
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
              SizedBox(
                height: 20,
              ),
              Text(
                'الأن يمكنك حجز اختبارات العديد من الأندية \nاو حجز الأكاديمية المناسبة لك عبر خدمتنا',
                style:
                    TextStyle(fontFamily: 'Cairo',fontSize: 15, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  child: GridView.count(crossAxisCount: 2, children: [
                    Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => AcadmyOrders()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                    'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/444.png?alt=media&token=70a15e21-bc75-4596-8374-28d3c5d8ace0'),
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => ClupsOrders()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                    'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/777.png?alt=media&token=65e95d39-0743-4d18-acbc-de23a278e63e'),
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(height: 20,),
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
              SizedBox(height: 20,),

            ],
          ),
      ),
    );
  }
}
