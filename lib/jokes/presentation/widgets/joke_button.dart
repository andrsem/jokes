import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/common.dart';

class JokeButton extends HookConsumerWidget {
  const JokeButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller =
        useAnimationController(duration: const Duration(milliseconds: 400));
    final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );
    ref.watch(jokeProvider);
    final jokeNotifier = ref.read(jokeProvider.notifier);

    return RotationTransition(
      turns: _animation,
      child: ElevatedButton(
        onPressed: () async {
          await jokeNotifier.fetchJoke();
          _controller.status == AnimationStatus.dismissed
              ? await _controller.forward()
              : await _controller.reverse();
        },
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
      ),
    );
  }
}
