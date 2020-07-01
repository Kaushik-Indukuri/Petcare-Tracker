import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pet_care/bloc/navigation_bloc.dart';
import 'package:pet_care/styles/configuration.dart';
import 'package:pet_care/ui/Nutrition/nutrition_info.dart';


class NutritionPage extends StatefulWidget with NavigationStates{

  const NutritionPage ({Key key, this.onMenuTap}) : super(key: key);
  final Function onMenuTap;

  @override
  _NutritionPageState createState() => _NutritionPageState();
}

class _NutritionPageState extends State<NutritionPage> {

  List<String> foodvalue = ["2 Cups", "2.25 Cups", "2.5 Cups",
    "2.75 Cups", "3 Cups", "3.25 Cups", "3.5 Cups", "3.75 Cups"];
  List<double> cups = [1, 2.25, 2.5, 2.75, 3, 3.25, 3.5, 3.75];
  String food = "";
  var cupvalue;
  bool graphupdate = false;

  void foodamount() {
      setState(() {
        food = foodvalue[new Random().nextInt(foodvalue.length)];
        cupvalue = cups[new Random().nextInt(cups.length)];
      });
      graphchange();
  }

  void graphchange() {
    if(cupvalue >= 3) {
      setState(() {
        graphupdate = true;
      });
    }
    else {
      setState(() {
        graphupdate = false;
      });
    }
  }

  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;

  String brand = "Brand";
  String formula = "Formula";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
          decoration: BoxDecoration(
            color: const Color(0xFFE9E9E9),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                height: height * 0.115,
                left: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.only(
                        top: 40, left: 32, right: 16, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget> [
                              InkWell(
                                child: Icon(Icons.menu, color: Colors.black),
                                onTap: widget.onMenuTap,
                              ),
                            Text("Nutrition", style: TextStyle(fontSize: 25,
                                color: Colors.black,
                                fontFamily: 'OpenSansBold',
                                fontWeight: FontWeight.bold)),
                            InkWell(
                                child: Icon(Icons.refresh, color: Colors.black),
                                onTap: (){
                                  foodamount();
                                }
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: height * 0.05,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 19),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => NutritionInfo()));
                          },
                          child: Container(
                            height: 240,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      width: 162,
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey[300],
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: shadowList,
                                      ),
                                      margin: const EdgeInsets.only(top: 40),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Hero(
                                        tag: 1,
                                        child: Image.asset('images/goldenretriever1.png',
                                          height: height*0.355,
                                          width: width*0.355,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin:  EdgeInsets.only(
                                      top: 60, bottom: 20),
                                  padding: EdgeInsets.only(left: 20.0, right: 18.0),
                                  decoration: BoxDecoration(color: Colors.white,
                                    boxShadow: shadowList,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Align(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text(food, style: TextStyle(fontSize: 25,
                                            color: Colors.black,
                                            fontFamily: 'OpenSansBold',
                                            fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: height*0.05),
                                        Text("More Details  >", style: TextStyle(fontSize: 15,
                                            color: Colors.grey,
                                            fontFamily: 'OpenSans',
                                            fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: height*0.02,),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              child: Padding(
                                padding: EdgeInsets.all(6.0),
                                child: Container(
                                  padding: EdgeInsets.only(left: 16.0,
                                      top: 5.0,
                                      right: 15.0,
                                      bottom: 6.0),
                                  decoration: kInnerDecoration,
                                  child: DropdownButton<String>(
                                    items: [
                                      DropdownMenuItem<String>(
                                        value: "Canidae",
                                        child: Center(
                                          child: Text("Canidae"),
                                        ),
                                      ),
                                      DropdownMenuItem<String>(
                                        value: "Blue Buffalo",
                                        child: Center(
                                          child: Text("Blue Buffalo"),
                                        ),
                                      ),
                                      DropdownMenuItem<String>(
                                        value: "Diamond",
                                        child: Center(
                                          child: Text("Diamond"),
                                        ),
                                      ),
                                    ],
                                    onChanged: (_value) =>
                                    {
                                      setState(() {
                                        brand = _value;
                                      }),
                                    },
                                    hint: Text(brand,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'OpensSans',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              decoration: kGradientBoxDecoration,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Container(
                                  padding: EdgeInsets.only(left: 16.0,
                                      top: 5.0,
                                      right: 15.0,
                                      bottom: 6.0),
                                  decoration: kInnerDecoration,
                                  child: DropdownButton<String>(
                                    items: [
                                      DropdownMenuItem<String>(
                                        value: "Naturals",
                                        child: Center(
                                          child: Text("Naturals"),
                                        ),
                                      ),
                                      DropdownMenuItem<String>(
                                        value: "Hi-Energy",
                                        child: Center(
                                          child: Text("Hi-Energy"),
                                        ),
                                      ),
                                      DropdownMenuItem<String>(
                                        value: "Life Protection",
                                        child: Center(
                                          child: Text("Life Protection"),
                                        ),
                                      ),
                                    ],
                                    onChanged: (_value) =>
                                    {
                                      setState(() {
                                        formula = _value;
                                      }),
                                    },
                                    hint: Text(formula,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'OpensSans',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              decoration: kGradientBoxDecoration,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(17),
                            topLeft: Radius.circular(17),
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(10, 10.0, 30, 0.0),
                        child: Text("Predictive Weight Model of Your Dog",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'OpenSansBold',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 1.70,
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(17),
                                    bottomLeft: Radius.circular(17),
                                  ),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 18.0, left: 12.0, top: 24, bottom: 12),
                                child: LineChart(
                                  showAvg ? avgData() : mainData(),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 60,
                            height: 34,
                            child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  showAvg = !showAvg;
                                });
                              },
                              child: Text(
                                'avg',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: showAvg ? Color(0xff68737d) : Colors
                                        .black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xFFE9E9E9),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xFFE9E9E9),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          textStyle:
          const TextStyle(color: Color(0xff68737d), fontWeight: FontWeight.bold, fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return '1YR';
              case 5:
                return '2YR';
              case 8:
                return '3YR';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '15lb';
              case 3:
                return '45lb';
              case 5:
                return '75lb';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData:
      FlBorderData(show: true, border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        graphupdate ? LineChartBarData(
          spots: [
            FlSpot(0, 0),
            FlSpot(0.2, 0.6),
            FlSpot(0.6, 1.9),
            FlSpot(1, 3.4),
            FlSpot(1.5, 4),
            FlSpot(2, 4.55),
            FlSpot(2.75, 4.6),
            FlSpot(3.5, 4.6),
            FlSpot(5, 4.7),
            FlSpot(8, 4.77),
            FlSpot(11, 4.8),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ) : LineChartBarData(
          spots: [
            FlSpot(0, 0),
            FlSpot(0.2, 0.8),
            FlSpot(0.6, 1.9),
            FlSpot(1, 3.6),
            FlSpot(1.5, 5),
            FlSpot(2, 5.8),
            FlSpot(2.75, 5.5),
            FlSpot(3.5, 5.4),
            FlSpot(5, 5),
            FlSpot(8, 4.77),
            FlSpot(11, 4.8),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          textStyle:
          const TextStyle(color: Color(0xff68737d), fontWeight: FontWeight.bold, fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return '1YR';
              case 5:
                return '2YR';
              case 8:
                return '3YR';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '15lb';
              case 3:
                return '45lb';
              case 5:
                return '75lb';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData:
      FlBorderData(show: true, border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2),
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2),
          ],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(show: true, colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2).withOpacity(0.1),
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2).withOpacity(0.1),
          ]),
        ),
      ],
    );
  }
}