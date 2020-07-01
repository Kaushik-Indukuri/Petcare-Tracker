import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pet_care/bloc/navigation_bloc.dart';
import 'package:pet_care/styles/configuration.dart';
import 'package:pet_care/ui/Exercise/practice_training.dart';


class ExercisePage extends StatefulWidget with NavigationStates{
  const ExercisePage ({Key key, this.onMenuTap}) : super(key: key);
  final Function onMenuTap;

  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  List<String> times = ["30 min", "45 min", "1 hr",
    "1.25 hrs  ", "1.5 hrs", "2 hrs", "2.5 hrs"];
  List<double> cups = [1, 2.25, 2.5, 2.75, 3, 3.25, 3.5, 3.75];
  String exercisetime = "";
  String frequency = "Frequency";

  final _time = TextEditingController();
  final _activity = TextEditingController();

  void foodamount() {
    setState(() {
      exercisetime = times[new Random().nextInt(times.length)];
    });
  }

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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          child: Icon(Icons.menu, color: Colors.black),
                          onTap: widget.onMenuTap,
                        ),
                        Text("Exercise", style: TextStyle(fontSize: 25,
                                color: Colors.black,
                                fontFamily: 'OpenSansBold',
                                fontWeight: FontWeight.bold)),
                        InkWell(
                          child: Icon(Icons.refresh, color: Colors.black),
                          onTap: (){
                            foodamount();
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.135,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: height*0.06, horizontal: height*0.05),
                          decoration: kInnerDecoration,
                          child: Column(
                            children: <Widget>[
                              Text(exercisetime, style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black,
                                  fontFamily: 'OpenSansBold',
                                  fontWeight: FontWeight.bold
                              ),),
                              Text("per day", style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontFamily: 'OpenSansBold',
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          )
                        ),
                      ),
                      decoration: kGradientBoxDecoration,
                    ),
                  ),
                  SizedBox(height:25),
                  Text("Indoor Activities:                                                  ",
                      style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.green,
                      fontFamily: 'OpenSansBold',
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10),
                  Container(height: height*0.076,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: indoor.length,
                      itemBuilder: (context,index){
                        return Container(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: shadowList,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Text(indoor[index]['name'], style: TextStyle(
                                fontSize: 15.5,
                                //fontStyle: FontStyle.italic,
                                color: Colors.black,
                                fontFamily: 'OpenSansBold',
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Outdoor Activities:                                                ",
                    style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: Colors.green,
                        fontFamily: 'OpenSansBold',
                        fontWeight: FontWeight.bold
                    ),),
                  SizedBox(height: 10),
                  Container(height: height*0.076,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: outdoor.length,
                      itemBuilder: (context,index){
                        return Container(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => DogTrainingPage()));
                                },
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  margin: EdgeInsets.only(left: 20),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: shadowList,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Text(outdoor[index]['name'], style: TextStyle(
                                      fontSize: 15.5,
                                      //fontStyle: FontStyle.italic,
                                      color: Colors.black,
                                      fontFamily: 'OpenSansBold',
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(vertical: height*0.02, horizontal:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Set Activity Reminders", style: TextStyle(
                                  fontSize:18,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.deepOrangeAccent,
                                  fontFamily: 'OpenSansBold',
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(width: 20,),
                              Icon(Icons.check),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DropdownButton<String>(
                            items: [
                              DropdownMenuItem<String>(
                                value: "Everyday",
                                child: Center(
                                  child: Text("Everyday"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "Your Choice",
                                child: Center(
                                  child: Text("Your Choice"),
                                ),
                              ),
                            ],
                            onChanged: (_value) =>
                            {
                              setState(() {
                                frequency = _value;
                              }),
                            },
                            hint: Text(frequency,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpensSans',
                              ),
                            ),
                          ),
                        ),
                        TextField(
                          controller: _time,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueAccent),
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            hintText: "Time",
                          ),
                          onChanged: (value) {},
                        ),
                        SizedBox(height: 5,),
                        TextField(
                          controller: _activity,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueAccent),
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            hintText: "Activity",
                          ),
                          onChanged: (value) {},
                        ),
                        SizedBox(height: 3,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}