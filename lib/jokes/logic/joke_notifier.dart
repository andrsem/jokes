import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/api_service.dart';
import '../../data/joke.dart';

class JokeNotifier extends StateNotifier<Joke> {
  JokeNotifier(Joke state) : super(state);

  Future<void> fetchJoke() async =>
      state = Joke.fromJson(await APIService.getFakeData(endpoint: 'endpoint'));
}
