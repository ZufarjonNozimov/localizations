import 'package:flutter/material.dart';
import 'package:localizations/local_controller.dart';
import 'package:localizations/main.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    context.watch<LocalController>();
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${context.read<LocalController>().localizations["name"]}"),
            Text(
                "${context.read<LocalController>().localizations["lastName"]}"),
            const SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () async {
                    if (preferences.getString("local") != null) {
                      preferences.remove("local");
                    }
                    preferences.setString("local", "uz");
                    context.read<LocalController>().changeLocal(
                          preferences.getString("local") ?? "uz",
                        );
                  },
                  child: const Text("UZ"),
                ),
                TextButton(
                  onPressed: () async {
                    if (preferences.getString("local") != null) {
                      preferences.remove("local");
                    }
                    preferences.setString("local", "en");
                    context.read<LocalController>().changeLocal(
                          preferences.getString("local") ?? "en",
                        );
                  },
                  child: const Text("EN"),
                ),
                TextButton(
                  onPressed: () async {
                    if (preferences.getString("local") != null) {
                      preferences.remove("local");
                    }
                    preferences.setString("local", "ru");
                    context.read<LocalController>().changeLocal(
                          preferences.getString("local") ?? "ru",
                        );
                  },
                  child: const Text("RU"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
