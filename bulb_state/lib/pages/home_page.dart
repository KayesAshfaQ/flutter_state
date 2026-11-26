import 'package:material_ui/material_ui.dart';
import 'package:provider/provider.dart';

import '../providers/light_provider.dart';
import '../widgets/bulb_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final lightState = Provider.of<LightProvider>(context, listen: true);

    debugPrint('build');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,

        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            BulbWidget(),
            // Switch(
            //   value: lightState.isLightOn,
            //   onChanged: context.read<LightProvider>().lightSwitch,
            // ),
            TextButton(
              onPressed: () {
                final lightState = context.read<LightProvider>();
                lightState.lightSwitch(!lightState.isLightOn);
              },
              child: Text('Light'),
            ),
          ],
        ),
      ),
    );
  }
}
