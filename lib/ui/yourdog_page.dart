import 'package:flutter/material.dart';
import 'package:pet_care/bloc/navigation_bloc.dart';
import 'package:pet_care/styles/configuration.dart';

import 'Nutrition/nutrition_page.dart';


class YourDogPage extends StatefulWidget with NavigationStates{
  const YourDogPage ({Key key, this.onMenuTap}) : super(key: key);
  final Function onMenuTap;

  @override
  _YourDogPageState createState() => _YourDogPageState();
}

class _YourDogPageState extends State<YourDogPage> {

  final _controller = TextEditingController();
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();

  String breed = "Breed";
  String gender = "Gender";
  String name;
  var age;
  var lean;
  var birthday;
  bool isGoldenRetriever = false;


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
                      children: [
                        InkWell(
                          child: Icon(Icons.menu, color: Colors.black),
                          onTap: widget.onMenuTap,
                        ),
                        Text("Your Dog", style: TextStyle(fontSize: 25,
                            color: Colors.black,
                            fontFamily: 'OpenSansBold',
                            fontWeight: FontWeight.bold)),
                        Icon(Icons.share, color: Colors.black),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: height*0.15,
            left: 0,
            right: 0,
             child: Container(
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.all(Radius.circular(20)),
               ),
               margin: EdgeInsets.symmetric(horizontal: 30),
               padding: EdgeInsets.symmetric(vertical: height*0.05, horizontal: 50),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: <Widget>[
                   TextField(
                     controller: _controller,
                     decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.grey),
                         borderRadius: BorderRadius.all(Radius.circular(30))
                       ),
                       focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.blueAccent),
                           borderRadius: BorderRadius.all(Radius.circular(30))
                       ),
                       hintText: "Name",
                     ),
                     onSubmitted: (text) {
                       name = text;
                     },
                   ),
                   SizedBox(height: height*0.045,),
                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: DropdownButton<String>(
                       items: [
                         DropdownMenuItem<String>(
                           value: "Golden Retriever",
                           child: Center(
                             child: Text("Golden Retriever"),
                           ),
                         ),
                         DropdownMenuItem<String>(
                           value: "German Shepherd",
                           child: Center(
                             child: Text("German Shepherd"),
                           ),
                         ),
                       ],
                       onChanged: (_value) =>
                       {
                         setState(() {
                           breed = _value;
                         }),
                       },
                       hint: Text(breed,
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontFamily: 'OpensSans',
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: height*0.045,),
                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: DropdownButton<String>(
                       items: [
                         DropdownMenuItem<String>(
                           value: "Male",
                           child: Center(
                             child: Text("Male"),
                           ),
                         ),
                         DropdownMenuItem<String>(
                           value: "Female",
                           child: Center(
                             child: Text("Female"),
                           ),
                         ),
                       ],
                       onChanged: (_value) =>
                       {
                         setState(() {
                           gender = _value;
                         }),
                       },
                       hint: Text(gender,
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontFamily: 'OpensSans',
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: height*0.045,),
                   TextField(
                     controller: _controller1,
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
                       hintText: "Age",
                     ),
                     onChanged: (text) {
                       age = text;
                     },
                   ),
                   SizedBox(height: height*0.06,),
                   TextField(
                     controller: _controller2,
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
                       hintText: "Birthday",
                     ),
                     onChanged: (value) {
                       birthday = value;
                     },
                   ),
                   SizedBox(height: height*0.06,),
                   TextField(
                     controller: _controller3,
                     decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey),
                           borderRadius: BorderRadius.all(Radius.circular(30))
                       ),
                       focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.blueAccent),
                           borderRadius: BorderRadius.all(Radius.circular(30))
                       ),
                       hintText: "Lean Weight",
                     ),
                     onChanged: (value) {
                       lean = value;
                     },
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