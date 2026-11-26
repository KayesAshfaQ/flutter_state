import 'package:flutter/widgets.dart';

class LightProvider extends ChangeNotifier {
  bool _isLightOn = false;

  bool get isLightOn => _isLightOn;

  void lightSwitch(bool value) {
    _isLightOn = value;
    notifyListeners();
  }
}
