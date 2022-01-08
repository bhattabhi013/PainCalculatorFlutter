import 'package:flutter/material.dart';
import 'package:pain_app/providers/slider_provider.dart';
import 'package:provider/provider.dart';

class SLiderRangeWidget extends StatelessWidget {
  const SLiderRangeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final valProvider = Provider.of<SliderProvider>(context);
    Widget getTrackWidget(int val) {
      return Column(
        children: [
          Text(
            "$val",
            style: TextStyle(
                fontWeight: valProvider.fontWeight(val),
                fontSize: valProvider.fontSize(val)),
          ),
          Text(
            'I',
            style: TextStyle(
                fontWeight: valProvider.fontWeight(val),
                fontSize: valProvider.fontSize(val)),
          ),
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        getTrackWidget(0),
        getTrackWidget(1),
        getTrackWidget(2),
        getTrackWidget(3),
        getTrackWidget(4),
        getTrackWidget(5),
        getTrackWidget(6),
        getTrackWidget(7),
        getTrackWidget(8),
        getTrackWidget(9),
        getTrackWidget(10),
      ],
    );
  }
}
