import 'package:flutter/material.dart';
import 'package:pet_care/styles/configuration.dart';

class NutritionInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: bluegreen,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  )
                ],
              )),
          Container(
            margin:EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
                        Navigator.pop(context);
                      }),
                      Text("Nutrition Info", style: TextStyle(fontSize: 25, color: Colors.black,
                          fontFamily: 'OpenSansBold', fontWeight: FontWeight.bold)),
                      IconButton(icon: Icon(Icons.share), onPressed: (){
                      })
                    ],
                  ),
                  Hero(
                    tag: 1,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset('images/goldenretriever1.png',
                        height: height*0.45,
                        width: width*0.45,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: shadowList,
                  borderRadius: BorderRadius.circular(20)),
              child: Text("Important Nutritional and Feeding Information",
                style: TextStyle(
                  fontFamily: 'OpenSansBold',
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w100,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  color: Colors.white,
                  child: Text("1. Remember to feed you dog once or twice a day, usually no more. If you do feed your dog twice a day, feed it in 8-12 hour intervals"),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  color: Colors.white,
                  child: Text("2. Remember to feed you dog once or twice a day, usually no more. If you do feed your dog twice a day, feed it in 8-12 hour intervals"),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  color: Colors.white,
                  child: Text("3. Remember to feed you dog once or twice a day, usually no more. If you do feed your dog twice a day, feed it in 8-12 hour intervals"),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  color: Colors.white,
                  child: Text("4. Remember to feed you dog once or twice a day, usually no more. If you do feed your dog twice a day, feed it in 8-12 hour intervals"),
                ),
                SizedBox(height: 50,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}