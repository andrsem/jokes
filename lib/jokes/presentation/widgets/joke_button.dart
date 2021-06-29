import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/common.dart';

class JokeButton extends ConsumerWidget {
  const JokeButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(jokeProvider);
    final jokeNotifier = ref.read(jokeProvider.notifier);
    return ElevatedButton(
      onPressed: () async => jokeNotifier.fetchJoke(),
      style: ElevatedButton.styleFrom(
        onPrimary: getButtonTextColor(),
        primary: getButtonColor().withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadowColor: Colors.black38,
      ),
      child: const Padding(
        padding: EdgeInsets.all(25),
        child: Text(
          'get random joke',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
