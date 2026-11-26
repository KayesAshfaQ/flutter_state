import 'package:material_ui/material_ui.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';
import 'providers/light_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LightProvider>(
      create: (context) => LightProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: const HomePage(),
      ),
    );
  }
}
