import 'package:flutter/material.dart';

class Feature1 extends StatelessWidget {
  const Feature1({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar preview"),
        foregroundColor: colors.onPrimary,
        backgroundColor: colors.primary,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Pressed this button to show preview of \"Snackbar\""),
            const SizedBox(height: 10),
            FilledButton(
              onPressed: () => _showSnackbar(context, colors),
              child: const Text("Show Snackbar"),
            )
          ],
        ),
      ),
    );
  }

  void _showSnackbar(BuildContext context, ColorScheme colors) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        content: const Text("Hello world!"),
        action: SnackBarAction(
          label: 'Hide',
          onPressed: () {},
        ),
      ),
    );
  }
}
