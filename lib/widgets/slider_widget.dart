import 'package:flutter/material.dart';

import 'package:pain_app/providers/slider_provider.dart';
import 'package:provider/provider.dart';

class SLiderWIdget extends StatelessWidget {
  const SLiderWIdget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SliderProvider>(
      builder: (context, sliProvider, _) => SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          trackHeight: 20,
          tickMarkShape: SliderTickMarkShape.noTickMark,
          inactiveTrackColor: Colors.white,
          activeTickMarkColor: Colors.white,
        ),
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
      ),
    );
  }
}
// FlutterSlider(
//         values: [0, 10],
//         max: 10,
//         min: 0,
//         handlerWidth: 15,
//         step: FlutterSliderStep(step: 1),
//         onDragging: (handlerIndex, lowerValue, upperValue) {
//           print(lowerValue);
//           sliProvider.updateValue(lowerValue);
//         },
//         tooltip: FlutterSliderTooltip(disabled: true),
//         hatchMark: FlutterSliderHatchMark(
//           displayLines: false,
//           linesDistanceFromTrackBar: 5,
//           linesAlignment: FlutterSliderHatchMarkAlignment.right,
//           density: 1, // means 50 lines, from 0 to 100 percent
//           labels: [
//             FlutterSliderHatchMarkLabel(percent: 0, label: Text('0')),
//             FlutterSliderHatchMarkLabel(percent: 10, label: Text('1')),
//             FlutterSliderHatchMarkLabel(percent: 20, label: Text('2')),
//             FlutterSliderHatchMarkLabel(percent: 30, label: Text('3')),
//             FlutterSliderHatchMarkLabel(percent: 40, label: Text('4')),
//             FlutterSliderHatchMarkLabel(percent: 50, label: Text('5')),
//             FlutterSliderHatchMarkLabel(percent: 60, label: Text('6')),
//             FlutterSliderHatchMarkLabel(percent: 70, label: Text('7')),
//             FlutterSliderHatchMarkLabel(percent: 80, label: Text('8')),
//             FlutterSliderHatchMarkLabel(percent: 90, label: Text('9')),
//             FlutterSliderHatchMarkLabel(percent: 100, label: Text('10')),
//           ],
//         ),
//       ),