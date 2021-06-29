import 'package:flutter/material.dart';

import 'jokes/presentation/home_screen/home_screen.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Jokes Hub',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
