import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcadmyOrders extends StatefulWidget {
  @override
  _AcadmyOrdersState createState() => _AcadmyOrdersState();
}

class _AcadmyOrdersState extends State<AcadmyOrders> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/background.jpeg?alt=media&token=018e76e8-e52d-4870-b76b-20587ec780c5'),
                fit: BoxFit.fill),
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "اختر الاكاديمية المراد حجز ألاختبارات به",
                  style: GoogleFonts.cairo(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              StreamBuilder<QuerySnapshot>(
                  stream:
                  FirebaseFirestore.instance.collection('acadmy').snapshots(),
                  builder: (ctx, snapshot) {
                    if(snapshot.hasError){
                      return Text('Check your internt');
                    }
                    if(snapshot.connectionState  == ConnectionState.waiting){
                      return Center(child: CircularProgressIndicator(),);
                    }
                    return Container(
                      height: 640,
                      width: double.infinity,
                      child: ListView.builder(
                          controller: ScrollController(keepScrollOffset: false),
                          scrollDirection: Axis.vertical,
                          itemCount: snapshot.data.docs.length,
                          itemBuilder: (_, i) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=> AcadmyOrders()));
                                  },
                                  child: Card(
                                    child: Container(
                                      height: 120,
                                      color: Colors.white30,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image(
                                            image: NetworkImage(snapshot.data.docs[i]['img']),
                                            height: 100,
                                          ),
                                          SizedBox(),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 25, top: 10),
                                                child: Text(
                                                  snapshot.data.docs[i]['text'],
                                                  style: GoogleFonts.cairo(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.green),
                                                ),
                                              ),
                                              SizedBox(height: 38,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 15),
                                                child: Text(
                                                  snapshot.data.docs[i]['price']
                                                  ,style: GoogleFonts.cairo(color: Colors.green[800],fontWeight: FontWeight.bold,fontSize: 18),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
  }
