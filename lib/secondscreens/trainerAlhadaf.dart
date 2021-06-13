import 'package:flutter/material.dart';
import 'detailphoto.dart';

class TrainingAlhadaf extends StatelessWidget {
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
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 425,
                  width: double.infinity,
                  child: GridView.count(
                      crossAxisCount: 2, children: [
                    Container(
                      child: InkWell(
                        onTap: () {

                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image(
                                  image: NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/training%2F2-2.jpg?alt=media&token=9f0a8a40-7370-4df6-aac4-41cf476476b6'),
                                  height: 170,
                                  fit: BoxFit.fill,                              ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: InkWell(
                        onTap: (){},
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image(
                                  image: NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/training%2F1-2.jpg?alt=media&token=34ad6bde-1b7e-4f86-8b59-5c90cdb3d6c3'),
                                  fit: BoxFit.fill,
                                  height: 170,                            ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: InkWell(
                        onTap: (){},
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image(
                                  image: NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/training%2F5-3.jpg?alt=media&token=2dae71ad-9740-40ed-87a2-d54fe12c71dd'),
                                  fit: BoxFit.fill,
                                  height: 170,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: InkWell(
                        onTap: (){},
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image(
                                  image: NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/training%2F4-3.jpg?alt=media&token=6a5adef7-a596-4b5a-8ec4-27fdad1e6522'),
                                  height: 170,
                                  fit: BoxFit.fill,
                                ),
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
