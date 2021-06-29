import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/common.dart';

class JokeCard extends ConsumerWidget {
  const JokeCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final joke = ref.watch(jokeProvider);
    return Center(
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: getCardColor().withOpacity(0.85),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                Text(
                  joke.setup,
                  style: const TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 14),
                Text(
                  joke.punchline,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
