import 'dart:async';
import './timermodel.dart';

class CountDownTimer{
  double _radius = 1;
  bool _isActivate = true;
  Timer _timer;
  Duration? _time;
  Duration? _fullTime;

  String returnTime(Duration t){
    String minutes = (t.inMinutes<10) ?
                    '0' + t.inMinutes.toString() :
                    t.inMinutes.toString();
    int numSeconds = t.inSeconds - (t.inMinutes * 60);
    String seconds = (numSeconds<10) ?
                      '0' + numSeconds.toString() :
                      numSeconds.toString();
    String formattedTime = minutes + ":" + seconds;
    return formattedTime;
  }

  Stream<TimerModel> stream() async*{
    yield* Stream.periodic(Duration(seconds: 1), (int a){
      String time;
      if(this._isActivate){
        _time = _time - Duration(seconds: 1);

      }
    });
  }

}