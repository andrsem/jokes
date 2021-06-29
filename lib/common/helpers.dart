import 'dart:math';
import 'dart:ui';

int _next(int min, int max) {
  assert(min >= 0 && min <= 254, 'mim should be in range from 0 to 254');
  assert(max >= 0 && max <= 255, 'max should be in range from 0 to 255');
  assert(min < max, 'min should be less then max');
  return min + Random().nextInt(max - min);
}

Color getScaffoldColor() =>
    Color.fromARGB(255, _next(100, 200), _next(100, 200), _next(100, 200));

Color getButtonColor() =>
    Color.fromARGB(255, _next(0, 80), _next(0, 80), _next(0, 80));

Color getButtonTextColor() =>
    Color.fromARGB(255, _next(140, 235), _next(140, 235), _next(140, 235));

Color getCardColor() =>
    Color.fromARGB(255, _next(235, 255), _next(235, 255), _next(235, 255));
