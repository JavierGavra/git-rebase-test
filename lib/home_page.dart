import 'package:flutter/material.dart';
import 'package:git_rebase_test/feature_1.dart';
import 'package:git_rebase_test/feature_2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _menuItem({
    required Function() onTap,
    required Color backgroundColor,
    required Color foregroundColor,
    required String title,
    required String sign,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        width: 150,
        color: backgroundColor,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Snackbar preview",
              textAlign: TextAlign.center,
              style: TextStyle(color: foregroundColor, fontSize: 15),
            ),
            const SizedBox(height: 10),
            Text(
              "(feature 1)",
              textAlign: TextAlign.center,
              style: TextStyle(color: foregroundColor, fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }

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
                _menuItem(
                  onTap: () =>
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const Feature1())),
                  backgroundColor: colors.primary,
                  foregroundColor: colors.onPrimary,
                  title: "Snackbar preview",
                  sign: "(feature 1)",
                ),
                _menuItem(
                  onTap: () =>
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const Feature2())),
                  backgroundColor: colors.secondary,
                  foregroundColor: colors.onSecondary,
                  title: "Counter test",
                  sign: "(feature 2)",
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
