import 'package:flutter/material.dart';
import 'package:pain_app/providers/slider_provider.dart';
import 'package:provider/provider.dart';

class TextValue extends StatelessWidget {
  const TextValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SliderProvider>(
      builder: (context, txtprovider, _) => Text(
        "${txtprovider.scoreListResp}",
        style: const TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
