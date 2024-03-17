import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Feature3 extends StatelessWidget {
  const Feature3({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text("Toast"),
        foregroundColor: colors.onTertiary,
        backgroundColor: colors.tertiary,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Pressed this button to show preview of \"Toast\" (pacakge)"),
            const SizedBox(height: 10),
            FilledButton(
              onPressed: () => Fluttertoast.showToast(msg: "Hello world!"),
              style: FilledButton.styleFrom(
                backgroundColor: colors.tertiary,
                foregroundColor: colors.onTertiary,
              ),
              child: const Text("Show Toast"),
            )
          ],
        ),
      ),
    );
  }
}
