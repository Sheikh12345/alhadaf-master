import 'package:alhadaf/player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Gift extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: DefaultTabController(
      length: 2,
      child: Container(
        width: size.width,
        height: size.height * 0.759,
        color: Colors.blue,
        child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.green[800],
              title: Text("Talent"),
              bottom: TabBar(indicatorColor: Colors.grey[400], tabs: [
                Tab(
                  child: Text(
                    "Talent View",
                    style: GoogleFonts.cabin(
                        color: Colors.white, fontSize: size.width * 0.04),
                  ),
                ),
                Tab(
                  child: Text(
                    "Team View",
                    style: GoogleFonts.cabin(
                        color: Colors.white, fontSize: size.width * 0.04),
                  ),
                ),
              ])),
          body: Container(
            decoration: BoxDecoration(),
            child: Container(
              width: size.width,
              height: size.height * 0.835,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/background.jpeg?alt=media&token=018e76e8-e52d-4870-b76b-20587ec780c5'),
                    fit: BoxFit.fill),
              ),
              child: TabBarView(
                children: [
                  Container(
                      width: size.width,
                      height: size.height * 0.835,
                      child: StreamBuilder<QuerySnapshot>(
                        stream: FirebaseFirestore.instance
                            .collection("personTalent")
                            .snapshots(),
                        builder: (_, snapshot) {
                          if (snapshot.hasData) {
                            return ListView.builder(
                                itemCount: snapshot.data.docs.length,
                                itemBuilder: (_, index) {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CustomVideoPlayer(
                                                    address:
                                                        "${snapshot.data.docs[index]["video"]}",
                                                  )));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: size.height * 0.003,
                                          horizontal: 3),
                                      width: size.width,
                                      height: size.height * 0.18,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[700],
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: size.width * .5,
                                            height: size.height * 0.17,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://media.istockphoto.com/photos/soccer-player-kicking-ball-picture-id500240235?k=6&m=500240235&s=612x612&w=0&h=nwCD6Uw4xHykbB6fmzaEv6luHLMShwY888XhDCLTHdI="),
                                                  fit: BoxFit.fill),
                                            ),
                                            child: Icon(
                                              Icons.play_arrow,
                                              color: Colors.white,
                                              size: size.width * 0.15,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                top: size.height * 0.01,
                                                bottom: size.height * 0.01,
                                                left: size.width * 0.007),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: size.width * 0.01),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "Code:  ",
                                                            style: GoogleFonts
                                                                .cabin(
                                                              color: Colors
                                                                  .grey[400],
                                                              fontSize:
                                                                  size.width *
                                                                      0.035,
                                                            ),
                                                          ),
                                                          Text(
                                                            "${snapshot.data.docs[index]["code"]}",
                                                            style: GoogleFonts
                                                                .cabin(
                                                              color:
                                                                  Colors.white,
                                                              fontSize:
                                                                  size.width *
                                                                      0.035,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            size.height * 0.001,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "Position:  ",
                                                            style: GoogleFonts
                                                                .cabin(
                                                              color: Colors
                                                                  .grey[400],
                                                              fontSize:
                                                                  size.width *
                                                                      0.035,
                                                            ),
                                                          ),
                                                          Text(
                                                            "${snapshot.data.docs[index]["position"]}",
                                                            style: GoogleFonts
                                                                .cabin(
                                                              color:
                                                                  Colors.white,
                                                              fontSize:
                                                                  size.width *
                                                                      0.035,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            size.height * 0.001,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "Country:  ",
                                                            style: GoogleFonts
                                                                .cabin(
                                                              color: Colors
                                                                  .grey[400],
                                                              fontSize:
                                                                  size.width *
                                                                      0.035,
                                                            ),
                                                          ),
                                                          Text(
                                                            "${snapshot.data.docs[index]["country"]}",
                                                            style: GoogleFonts
                                                                .cabin(
                                                              color:
                                                                  Colors.white,
                                                              fontSize:
                                                                  size.width *
                                                                      0.035,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            size.height * 0.002,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "DOB:  ",
                                                            style: GoogleFonts
                                                                .cabin(
                                                              color: Colors
                                                                  .grey[400],
                                                              fontSize:
                                                                  size.width *
                                                                      0.035,
                                                            ),
                                                          ),
                                                          Text(
                                                            "${snapshot.data.docs[index]["DOB"]}",
                                                            style: GoogleFonts
                                                                .cabin(
                                                              color:
                                                                  Colors.white,
                                                              fontSize:
                                                                  size.width *
                                                                      0.035,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            size.height * 0.001,
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                                Container(
                                                  child: RatingBarIndicator(
                                                    rating: double.parse(snapshot.data
                                                        .docs[index]["rat"].toString()),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    ),
                                                    itemCount: 5,
                                                    itemSize: size.width * 0.08,
                                                    direction: Axis.horizontal,
                                                  ),
                                                )

                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                      )),
                  Container(
                    width: size.width,
                    height: size.height * 0.835,
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CustomVideoPlayer(
                                            address:
                                                "https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/videos%2F45382c44-a0dd-407f-b54c-cb45e829b0575945936469637456017.mp4?alt=media&token=efda2094-c849-480d-b561-fd82c3db578f",
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: size.height * 0.003, horizontal: 3),
                              width: size.width,
                              height: size.height * 0.18,
                              decoration: BoxDecoration(
                                color: Color(0xff31454c),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: size.width * .5,
                                    height: size.height * 0.17,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/gift%2F6-2.jpg?alt=media&token=d28adc96-4b82-4343-b2ed-fa8eec2b2719"),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: size.height * 0.01,
                                        bottom: size.height * 0.01,
                                        left: size.width * 0.007),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: size.width * 0.01),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "Code:  ",
                                                    style: GoogleFonts.cabin(
                                                      color: Colors.grey[400],
                                                      fontSize:
                                                          size.width * 0.035,
                                                    ),
                                                  ),
                                                  Text(
                                                    "1xr34adsf",
                                                    style: GoogleFonts.cabin(
                                                      color: Colors.white,
                                                      fontSize:
                                                          size.width * 0.035,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: size.height * 0.001,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Country:  ",
                                                    style: GoogleFonts.cabin(
                                                      color: Colors.grey[400],
                                                      fontSize:
                                                          size.width * 0.035,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Egypt",
                                                    style: GoogleFonts.cabin(
                                                      color: Colors.white,
                                                      fontSize:
                                                          size.width * 0.035,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: size.height * 0.002,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                            // child: RatingBarIndicator(
                                            //   rating: 5,
                                            //   itemBuilder: (context, index) => Icon(
                                            //     Icons.star,
                                            //     color: Colors.amber,
                                            //   ),
                                            //   itemCount: 5,
                                            //   itemSize: size.width*0.08,
                                            //   direction: Axis.horizontal,
                                            // ),
                                            )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
