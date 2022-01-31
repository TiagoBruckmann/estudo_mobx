// import dos pacotes
import 'package:mobx/mobx.dart';

class IncrementMobX {

  final _increment = Observable(0);

  IncrementMobX() {
    incrementer = Action(_sum);
    decrement = Action(_decrement);
  }

  int get increment => _increment.value;
  set increment(int newIncrement) => _increment.value = newIncrement;
  Action? incrementer;
  Action? decrement;

  _sum() {
    increment++;
  }

  _decrement() {
    increment--;
  }

}