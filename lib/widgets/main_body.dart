import 'package:flutter/material.dart';
import 'package:pain_app/widgets/slider_range_widget.dart';

import 'button_widget.dart';
import 'emoji_widget.dart';
import 'slider_widget.dart';
import 'textvalue.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        width: double.infinity,
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.80,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        // color: Colors.black12,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Pain Score',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'How does your knee feel now?',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            const EmojiWidget(),
            const SLiderRangeWidget(),
            const SLiderWIdget(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const TextValue(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            ButtonWidget()
          ],
        ),
      ),
    );
  }
}
