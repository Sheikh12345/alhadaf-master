import 'package:alhadaf/tabs/attacs.dart';
import 'package:alhadaf/tabs/trainingFour.dart';
import 'package:alhadaf/tabs/trainingthree.dart';
import 'package:alhadaf/tabs/trainning.dart';
import 'package:flutter/material.dart';

class Training extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            bottom: TabBar(
              indicatorColor: Colors.green[800],
              isScrollable: true,
              tabs: [
                Tab(
                  child: Container(
                    child: Text(
                      'تدريبات رياضية',
                      style: TextStyle(fontSize: 18,color: Colors.white),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'تكتيكات',
                      style:TextStyle(fontSize: 18,color: Colors.white),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'تدريبات حراس المرمي',
                      style:TextStyle(fontSize: 18,color: Colors.white),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'تدريبات المدربين',
                      style:TextStyle(fontSize: 18,color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
            Trainning(),
            Attaccs()  ,
            TrainingThree(),
            TrainingFour()
            ],
          ),
        ));
  }
}
