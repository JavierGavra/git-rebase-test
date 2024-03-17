import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Git rebase Test"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () => print("Click feature 1"),
                  child: Container(
                    height: 150,
                    width: 150,
                    color: colors.primary,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Snackbar preview",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: colors.onPrimary, fontSize: 15),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "(feature 1)",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: colors.surfaceVariant, fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => print("Click feature 2"),
                  child: Container(
                    height: 150,
                    width: 150,
                    color: colors.secondary,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Counter test",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: colors.onSecondary, fontSize: 15),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "(feature 2)",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: colors.surfaceVariant, fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(height: 150, width: 150, color: colors.tertiary),
                Container(height: 150, width: 150, color: colors.surfaceVariant),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
