import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:pain_app/widgets/textvalue.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

import '../providers/slider_provider.dart';
import 'widgets/button_widget.dart';
import 'widgets/slider_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const PainApp());
}

class PainApp extends StatelessWidget {
  const PainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SliderProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _value = 0.0;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Pain App"),
      // )
      body: Container(
        height: 300,
        child: Column(
          children: [
            // SizedBox(
            //   height: 30,
            // ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.teal[300],
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 10.0),
                child: const Text(
                  'You have 2 more sessions today',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Container(
                width: double.infinity,
                color: Colors.black12,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Pain Score',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'How does your knee feel now?',
                      style: TextStyle(fontSize: 18),
                    ),
                    const Text(
                      'for emoji',
                    ),
                    const SLiderWIdget(),
                    TextValue(),
                    ButtonWidget()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
