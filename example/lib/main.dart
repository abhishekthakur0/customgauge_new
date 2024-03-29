import 'package:flutter/material.dart';
import 'package:customgauge_new/customgauge_new.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CustomGauge example app'),
        ),
        body: Container(
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: <Widget>[
                    CustomGauge(
                      gaugeSize: 200,
                      segments: [
                        GaugeSegment('Low', 20, Colors.red),
                        GaugeSegment('Medium', 40, Colors.orange),
                        GaugeSegment('High', 40, Colors.green),
                      ],
                      currentValue: 60,
                      displayWidget:
                          Text('Fuel in tank', style: TextStyle(fontSize: 12)),
                    ),
                    CustomGauge(
                      gaugeSize: 200,
                      segments: [
                        GaugeSegment('Critically Low', 10, Colors.red),
                        GaugeSegment('Low', 20, Colors.orange),
                        GaugeSegment('Medium', 20, Colors.yellow),
                        GaugeSegment('High', 50, Colors.green),
                      ],
                      currentValue: 45,
                      needleColor: Colors.red,
                      showMarkers: false,
                      displayWidget:
                          Text('Fuel in tank', style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
              ),
              Expanded(

                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CustomGauge(
                      gaugeSize: 100,
                      segments: [
                        GaugeSegment('Low', 20, Colors.blue[200]!),
                        GaugeSegment('Medium', 40, Colors.blue),
                        GaugeSegment('High', 40, Colors.blue[800]!),
                      ],
                      currentValue: 70,
                      displayWidget: Text('Temp', style: TextStyle(fontSize: 12)),
                    ),
                    CustomGauge(
                      gaugeSize: 100,
                      segments: [
                        GaugeSegment('Critically Low', 10, Colors.red),
                        GaugeSegment('Low', 20, Colors.orange),
                        GaugeSegment('Medium', 20, Colors.yellow),
                        GaugeSegment('High', 50, Colors.green),
                      ],
                      currentValue: 45,
                      needleColor: Colors.blue,
                      showMarkers: false,
                      valueWidget: Container(),
                      displayWidget: Text('Fuel', style: TextStyle(fontSize: 12)),
                    ),
                    CustomGauge(
                      gaugeSize: 100,
                      minValue: 30,
                      maxValue: 150,
                      segments: [
                        GaugeSegment('Low', 20, Colors.red),
                        GaugeSegment('Slightly Low', 20, Colors.yellow),
                        GaugeSegment('Correct', 20, Colors.green),
                        GaugeSegment('High', 60, Colors.orange),
                      ],
                      currentValue: 72,
                      displayWidget:
                          Text('Pulse', style: TextStyle(fontSize: 12)),
                    ),
                    CustomGauge(
                      minValue: 0,
                      maxValue: 150,
                      gaugeSize: 100,
                      segments: [
                        GaugeSegment('Good', 80, Colors.green),
                        GaugeSegment('High', 70, Colors.red),
                      ],
                      currentValue: 75,
                      showMarkers: false,
                      displayWidget:
                          Text('Speed', style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
