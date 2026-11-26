import 'package:material_ui/material_ui.dart';

class InheritedData extends InheritedWidget {
  final int counter;
  final VoidCallback increment;

  const InheritedData({
    super.key,
    required super.child,
    required this.counter,
    required this.increment,
  });

  static InheritedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedData>()!;
  }

  @override
  bool updateShouldNotify(InheritedData oldWidget) {
    return oldWidget.counter != counter;
  }
}
