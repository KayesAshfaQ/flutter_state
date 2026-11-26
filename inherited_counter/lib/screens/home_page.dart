import 'package:material_ui/material_ui.dart';

import '../inherited_data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: MiddleWidget(),
      floatingActionButton: IncrementButton(),
    );
  }
}

class IncrementButton extends StatelessWidget {
  const IncrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    final data = InheritedData.of(context);

    return Container(
      padding: .all(16),
      color: Colors.red,
      child: FloatingActionButton(
        onPressed: data.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MiddleWidget extends StatelessWidget {
  const MiddleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          const Text('You have pushed the button this many times:'),
          CounterText(),
        ],
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = InheritedData.of(context).counter;

    return Text('$counter', style: Theme.of(context).textTheme.headlineMedium);
  }
}
