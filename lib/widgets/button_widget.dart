import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:pain_app/providers/slider_provider.dart';
import 'package:provider/provider.dart';

class ButtonWidget extends StatelessWidget {
  final FlutterTts tts = FlutterTts();

  ButtonWidget({Key? key}) : super(key: key) {
    tts.setLanguage('en');
    tts.setSpeechRate(0.4);
  }
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        final provider = Provider.of<SliderProvider>(context, listen: false);
        // print(provider.scoreListResp);
        provider.submitResponse();
        tts.speak(provider.scoreListResp);
      },
      style: ButtonStyle(
        side: MaterialStateProperty.all(
            const BorderSide(color: Colors.black, width: 2.0)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
        minimumSize: MaterialStateProperty.all(Size(
            MediaQuery.of(context).size.width * 0.90,
            MediaQuery.of(context).size.width * 0.10)),
      ),
      child: const Text(
        "Submit",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
