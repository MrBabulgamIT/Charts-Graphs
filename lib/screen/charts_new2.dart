import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:graph_charts/model/earningstimeline.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Charts_New_2 extends StatefulWidget {
  const Charts_New_2({Key? key}) : super(key: key);

  @override
  State<Charts_New_2> createState() => _Charts_New_2State();
}

class _Charts_New_2State extends State<Charts_New_2> {
  @override
  Widget build(BuildContext context) {
    final List<EarningsTimeline> listEarnings = [
      EarningsTimeline(year: "08", earning: 10),
      EarningsTimeline(year: "09", earning: 21),
      EarningsTimeline(year: "10", earning: 30),
      EarningsTimeline(year: "11", earning: 58),
      EarningsTimeline(year: "12", earning: 42),
      EarningsTimeline(year: "13", earning: 43.5),
      EarningsTimeline(year: "14", earning: 73),
      EarningsTimeline(year: "15", earning: 79.6),
      EarningsTimeline(year: "16", earning: 82),
      EarningsTimeline(year: "17", earning: 93),
      EarningsTimeline(year: "18", earning: 108),
      EarningsTimeline(year: "19", earning: 109),
      EarningsTimeline(year: "20", earning: 117),
    ];

    List<charts.Series<EarningsTimeline, String>> timeline = [
      charts.Series(
        id: 'Subscriber',
        data: listEarnings,
        domainFn: (EarningsTimeline timeline, _) => timeline.year.toString(),
        measureFn: (EarningsTimeline timeline, _) => timeline.earning,
      )
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Charts Sample')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Charts Sample",
            style: TextStyle(
              fontSize: 25,
              decorationStyle: TextDecorationStyle.dotted,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Center(
            child: Container(
              height: 400,
              padding: EdgeInsets.all(20),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(
                        'Cristiano Ronaldo Earnings ',
                      ),
                      Expanded(
                        child: charts.BarChart(timeline, animate: true),
                      ),
                      Text(
                        'Source: Jony Arts',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
