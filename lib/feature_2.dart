import 'package:flutter/material.dart';

class Feature2 extends StatefulWidget {
  const Feature2({super.key});

  @override
  State<Feature2> createState() => _Feature2State();
}

class _Feature2State extends State<Feature2> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter test"),
        foregroundColor: colors.onSecondary,
        backgroundColor: colors.secondary,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "The number will count how many you pressed the \"Floating button\"",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 20, color: colors.secondary, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _increment(),
        foregroundColor: colors.onSecondaryContainer,
        backgroundColor: colors.secondaryContainer,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _increment() => setState(() => _counter++);
}
