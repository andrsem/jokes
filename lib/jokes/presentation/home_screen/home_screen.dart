import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jokes/common/helpers.dart';
import '../../../common/providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final joke = ref.watch(jokeProvider);
    final jokeNotifier = ref.read(jokeProvider.notifier);
    return Scaffold(
      backgroundColor: getScaffoldColor(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Card(
                elevation: 3,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: getCardColor(),
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
              const Spacer(),
              ElevatedButton(
                onPressed: () async {
                  await jokeNotifier.fetchJoke();
                },
                style: ElevatedButton.styleFrom(
                  primary: getButtonColor(),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                  child: Text(
                    'get random joke',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
