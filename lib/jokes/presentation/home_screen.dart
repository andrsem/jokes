import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../common/common.dart';

import 'widgets/widgets.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(jokeProvider);

    return Scaffold(
      body: Container(
        decoration: getCircularGradient(),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Spacer(flex: 2),
              JokeCard(),
              Spacer(),
              JokeButton(),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
