import 'package:flutter/material.dart';

class LocalController with ChangeNotifier {
  Map<String, String> localizations = {
    "name": "Name",
    "lastName": "Last Name",
  };

  void changeLocal(String text) {
    if (text == "uz") {
      localizations = {
        "name": "Ism",
        "lastName": "Familya",
      };
    }
    if (text == "ru") {
      localizations = {
        "name": "Имя",
        "lastName": "Фамилия",
      };
    }
    if (text == "en") {
      localizations = {
        "name": "Name",
        "lastName": "Last Name",
      };
    }
    notifyListeners();
  }
}
