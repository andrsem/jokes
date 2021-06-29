import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../common/providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final joke = ref.watch(jokeProvider);
    final jokeNotifier = ref.read(jokeProvider.notifier);
    return Scaffold(
      backgroundColor: const Color.fromARGB(230, 140, 40, 90),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.amber.shade50,
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
                onPressed: () async => jokeNotifier.fetchJoke(),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
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
