import  'package:flutter/material.dart';
import 'package:pet_care/bloc/navigation_bloc.dart';

class VaccinePage extends StatefulWidget with NavigationStates{
  const VaccinePage ({Key key, this.onMenuTap}) : super(key: key);
  final Function onMenuTap;

  @override
  _VaccinePage createState() => new _VaccinePage();
}

class _VaccinePage extends State<VaccinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: GestureDetector(
            onTap: widget.onMenuTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.menu), color: Colors.black87, ),
                Text("Vaccine Log",
                    style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        color: Colors.black87)
                ),
                IconButton(icon: Icon(Icons.add), color: Colors.transparent, ),
              ],
            ),
          )
      ),

      body:

      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: [Colors.blue[500], Colors.teal]

            )
        ),
        child: ListWheelScrollView(
            itemExtent: 100,
            useMagnifier: true,
            diameterRatio: 2.4,
            offAxisFraction: 0.0,

            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:(
                      Center(
                        child: Text('Distemper - Pet Clinic - 10/25/15',
                            style: TextStyle(fontSize: 17, color: Colors.black, letterSpacing: 1.8)
                        ),
                      )
                  ),

                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: (
                      Center(
                        child: Text('Rabies - ABC Pet Clinic - 4/25/16',
                            style: TextStyle(fontSize: 17, color: Colors.black, letterSpacing: 1.8)
                        ),
                      )
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onSubmitted: (text){
                      print(text);
                    },
                    style: TextStyle(fontSize: 17, color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Vaccine - Clinic - Date",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  height: 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              ),
            ]),
      ),
    );
  }
}