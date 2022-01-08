import 'package:flutter/material.dart';
import 'package:pain_app/providers/slider_provider.dart';
import 'package:provider/provider.dart';

class EmojiWidget extends StatelessWidget {
  const EmojiWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final score = Provider.of<SliderProvider>(context).getValue.toInt();
    Widget getWidget() {
      if (score == 0) {
        return const Text(
          "😁",
          style: TextStyle(
            // color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        );
      } else if (score > 0 && score < 5) {
        return const Text(
          "🙂",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        );
      } else if (score > 4 && score < 9) {
        return const Text(
          "☹",
          style: TextStyle(
            // color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        );
      } else if (score > 8) {
        return const Text(
          "😨",
          style: TextStyle(
            // color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        );
      }
      return const Text("");
    }

    return Container(padding: EdgeInsets.all(10), child: getWidget());
  }
}
