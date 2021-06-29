import 'dart:math';
import 'dart:ui';

int getIntInRange(int min, int max) {
  assert(min >= 0 && min <= 254, 'mim should be in range from 0 to 254');
  assert(max >= 0 && max <= 255, 'max should be in range from 0 to 255');
  assert(min < max, 'min should be less then max');
  return min + Random().nextInt(max - min);
}

Color getScaffoldColor() => Color.fromARGB(
      255,
      getIntInRange(100, 200),
      getIntInRange(100, 200),
      getIntInRange(100, 200),
    );

Color getButtonColor() => Color.fromARGB(
      255,
      getIntInRange(0, 80),
      getIntInRange(0, 80),
      getIntInRange(0, 80),
    );

Color getButtonTextColor() => Color.fromARGB(
      255,
      getIntInRange(140, 235),
      getIntInRange(140, 235),
      getIntInRange(140, 235),
    );

Color getCardColor() => Color.fromARGB(
      255,
      getIntInRange(235, 255),
      getIntInRange(235, 255),
      getIntInRange(235, 255),
    );
