import 'package:bulb_state/providers/light_provider.dart';
import 'package:material_ui/material_ui.dart';
import 'package:provider/provider.dart';

class BulbWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.lightbulb,
      size: 256,
      color: context.watch<LightProvider>().isLightOn
          ? Colors.amber
          : Colors.grey,
    );
  }
}
