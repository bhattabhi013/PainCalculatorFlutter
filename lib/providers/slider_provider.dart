import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

enum TtsState { playing, stopped }

class SliderProvider with ChangeNotifier {
  double _value = 0.0;
  var _scoreList = [];

  get getValue {
    return _value;
  }

  getScoresFromFirebase() async {
    DatabaseReference ref = FirebaseDatabase.instance.ref("scores");
    DatabaseEvent event = await ref.once();
    // print(event.snapshot.value);
    _scoreList = event.snapshot.value as List;
  }

  void updateValue(double val) {
    if (_scoreList.isEmpty) {
      getScoresFromFirebase();
    }
    _value = val;
    print(_value);
    notifyListeners();
  }

  get scoreListResp {
    if (_scoreList.isNotEmpty) {
      var matchedElement = _scoreList
          .where((element) => element['score'] == _value.toInt())
          .toList();
      return matchedElement[0]['value'];
    } else {
      return "Move slider";
    }
  }

  Future<void> submitResponse() async {
    DatabaseReference ref = FirebaseDatabase.instance.ref("userResponse");
    await ref.set({"score": scoreListResp, "value": _value});
  }
}
