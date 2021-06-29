import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/common.dart';
import '../../data/joke.dart';

class JokeNotifier extends StateNotifier<Joke> {
  JokeNotifier(Joke state) : super(state);

  Future<Joke> fetchJoke() async => state = Joke.fromJson(
        await APIService.getFakeData(endpoint: '/random/joke'),
      );
}
