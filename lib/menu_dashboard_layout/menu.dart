import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_care/bloc/navigation_bloc.dart';

class Menu extends StatelessWidget {
  final Animation<Offset> slideAnimation;
  final Animation<double> menuAnimation;
  final int selectedIndex;
  final Function onMenuItemClicked;

  const Menu({Key key, this.slideAnimation, this.menuAnimation, this.selectedIndex, @required this.onMenuItemClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF374ABE),
              Color(0xFF00B0FF),
              Color(0xFF64B6FF),
            ],
            stops: [
              0.1, 0.8, 1
            ]
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.NutritionClickedEvent);
                  onMenuItemClicked();
                },
                child: Text(
                  "Nutrition",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: selectedIndex == 0 ? FontWeight.w900 : FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.ExerciseClickedEvent);
                  onMenuItemClicked();
                },
                child: Text(
                  "Exercise",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: selectedIndex == 1 ? FontWeight.w900 : FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.VaccineClickedEvent);
                  onMenuItemClicked();
                },
                child: Text(
                  "Vaccines",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: selectedIndex == 2 ? FontWeight.w900 : FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.BehaviourClickedEvent);
                  onMenuItemClicked();
                },
                child: Text(
                  "Behavior Log",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: selectedIndex == 3 ? FontWeight.w900 : FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.YourDogClickedEvent);
                  onMenuItemClicked();
                },
                child: Text(
                  "Your Dog",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: selectedIndex == 4 ? FontWeight.w900 : FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}