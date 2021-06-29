import 'package:flutter/widgets.dart';

import 'common.dart';

final _transitionColor = getScaffoldColor();
BoxDecoration getCircularGradient() => BoxDecoration(
      gradient: SweepGradient(
        center: FractionalOffset.center,
        colors: <Color>[
          _transitionColor,
          getScaffoldColor(),
          getScaffoldColor(),
          getScaffoldColor(),
          getScaffoldColor(),
          getScaffoldColor(),
          getScaffoldColor(),
          getScaffoldColor(),
          _transitionColor,
        ],
        stops: const <double>[0, .125, .25, .375, .5, .625, .75, .875, 1],
      ),
    );
