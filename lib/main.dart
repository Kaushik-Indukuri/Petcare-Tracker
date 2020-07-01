import 'package:flutter/material.dart';
import 'package:pet_care/menu_dashboard_layout/menu_dashboard_layout.dart';
import 'package:pet_care/ui/Nutrition/nutrition_page.dart';
import 'menu_dashboard_layout/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MenuDashboardLayout()
    );
  }
}