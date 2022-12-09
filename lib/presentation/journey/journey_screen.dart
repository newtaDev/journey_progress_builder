import 'package:flutter/material.dart';
import 'package:journey_progress_builder/presentation/journey/widgets/journey_progress_builder.dart';

class JourneyScreen extends StatelessWidget {
  const JourneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Journey Progress builder',),
      ),
      body: const JourneyProgressBuilder(countOfCircles: 121),
    );
  }
}
