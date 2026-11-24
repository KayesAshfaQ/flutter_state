import 'package:flutter_state/inherited_data.dart';
import 'package:material_ui/material_ui.dart';

class DataProvider extends StatefulWidget {
  final Widget child;

  const DataProvider({super.key, required this.child});

  @override
  State<StatefulWidget> createState() {
    return _DataProviderState();
  }
}

class _DataProviderState extends State<DataProvider> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedData(
      counter: _counter,
      increment: _incrementCounter,
      child: widget.child,
    );
  }
}
