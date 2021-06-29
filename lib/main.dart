import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'jokes/presentation/home_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        title: 'Jokes Hub',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    ),
  );
}
