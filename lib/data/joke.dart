class Joke {
  const Joke({
    required this.success,
    required this.setup,
    required this.punchline,
  });

  factory Joke.fromJson(Map<String, dynamic> json) => Joke(
        success: json['success'] as bool,
        setup: json['body'][0]['setup'] as String,
        punchline: json['body'][0]['punchline'] as String,
      );

  final bool success;
  final String setup;
  final String punchline;
}

const initialJoke =
    Joke(success: true, setup: "It's a joke", punchline: 'Ho Ho Ho');

const exampleResponse = {
  'success': true,
  'body': [
    {
      '_id': '5f80ccd641785ba7c7d27b4d',
      'type': 'general',
      'setup': 'What do you call a belt made out of watches?',
      'punchline': 'A waist of time.'
    }
  ]
};
