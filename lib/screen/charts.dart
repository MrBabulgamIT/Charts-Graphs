import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:graph_charts/model/piechartsmodel.dart';

class ChartsBasic extends StatefulWidget {
  ChartsBasic({Key? key}) : super(key: key);

  @override
  State<ChartsBasic> createState() => _ChartsBasicState();
}

class _ChartsBasicState extends State<ChartsBasic>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(
        length: 3,
        animationDuration: Duration(seconds: 1),
        initialIndex: 0,
        vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Tab Bar",
            style: TextStyle(
                fontSize: 30,
                decoration: TextDecoration.underline,
                color: Colors.black),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.cyanAccent),
                  child: TabBar(
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    controller: tabController,
                    isScrollable: true,
                    labelPadding: EdgeInsets.all(10),
                    tabs: [
                      Container(
                        child: Tab(
                            child: Icon(
                          Icons.camera_alt,
                          size: 30,
                          color: Colors.black,
                        )),
                      ),
                      Tab(
                          child: Icon(
                        Icons.pie_chart,
                        size: 30,
                        color: Colors.black,
                      )),
                      Tab(
                          child: Icon(
                        Icons.pie_chart_outline_sharp,
                        size: 30,
                        color: Colors.black,
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: TabBarView(controller: tabController, children: [
            Center(
              child: Text("This is First Page"),
            ),
            Center(
              child: Text("This is secound Page"),
            ),
            Center(
              child: Text("This is thaird Page"),
            ),
          ]))
        ],
      ),
    );
  }
}
