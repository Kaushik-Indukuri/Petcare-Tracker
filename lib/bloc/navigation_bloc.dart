import 'package:bloc/bloc.dart';
import 'package:pet_care/ui/Behavior/behaviour_page.dart';
import 'package:pet_care/ui/Exercise/exercise_page.dart';
import 'package:pet_care/ui/vaccines_page.dart';
import 'package:pet_care/ui/Nutrition/nutrition_page.dart';
import 'package:pet_care/ui/yourdog_page.dart';

enum NavigationEvents {
  NutritionClickedEvent,
  ExerciseClickedEvent,
  VaccineClickedEvent,
  BehaviourClickedEvent,
  YourDogClickedEvent
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  final Function onMenuTap;

  NavigationBloc({this.onMenuTap});

  @override
  NavigationStates get initialState => NutritionPage(
    onMenuTap: onMenuTap,
  );

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.NutritionClickedEvent:
        yield NutritionPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.ExerciseClickedEvent:
        yield ExercisePage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.VaccineClickedEvent:
        yield VaccinePage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.BehaviourClickedEvent:
        yield BehaviourPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.YourDogClickedEvent:
        yield YourDogPage(
          onMenuTap: onMenuTap,
        );
        break;
    }
  }
}