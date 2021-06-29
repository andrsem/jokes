import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/joke.dart';
import '../jokes/logic/joke_notifier.dart';

final jokeProvider = StateNotifierProvider<JokeNotifier, Joke>(
  (ref) => JokeNotifier(initialJoke),
);
