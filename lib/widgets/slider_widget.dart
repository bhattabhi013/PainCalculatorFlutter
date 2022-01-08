import 'package:flutter/material.dart';
import 'package:pain_app/providers/slider_provider.dart';
import 'package:provider/provider.dart';

class SLiderWIdget extends StatelessWidget {
  const SLiderWIdget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          trackHeight: 20,
          // thumbShape: SliderComponentShape.noThumb,
          inactiveTrackColor: Colors.white,
          activeTickMarkColor: Colors.tealAccent),
      child: Consumer<SliderProvider>(
        builder: (context, sliProvider, _) => Slider(
          min: 0,
          max: 10,
          divisions: 10,
          value: sliProvider.getValue,
          onChanged: (value) {
            sliProvider.updateValue(value);
          },
        ),
      ),
    );
  }
}
