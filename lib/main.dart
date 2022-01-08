import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

import '../providers/slider_provider.dart';
import 'widgets/main_body.dart';

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
        home: const Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _value = 0.0;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Pain App"),
      // )
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 1,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.teal[300],
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'You have 2 more sessions today',
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const MainBody(),
          ],
        ),
      ),
    );
  }
}
