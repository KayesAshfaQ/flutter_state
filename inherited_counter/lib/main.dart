import 'package:flutter_state/data_provider.dart';
import 'package:material_ui/material_ui.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: DataProvider(
        child: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
