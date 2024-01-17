import 'package:flutter/material.dart';
import 'dart:async';

class CountdownTimer extends StatefulWidget {
  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  int _seconds = 60;
  late Timer _timer;
  bool _expired = false; // Biến để theo dõi trạng thái hết hạn của thời gian

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds > 0) {
        setState(() {
          _seconds--;
        });
      } else {
        _timer.cancel();
        _expired = true; // Đánh dấu là đã hết hạn
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (_expired) {
          setState(() {
            _seconds = 60; // Đặt lại thời gian về 60 giây
            _expired = false; // Đánh dấu là chưa hết hạn
            _timer = Timer.periodic(Duration(seconds: 1), (timer) {
              if (_seconds > 0) {
                setState(() {
                  _seconds--;
                });
              } else {
                _timer.cancel();
                _expired = true; // Đánh dấu là đã hết hạn
              }
            });
          });
        }
      },
      child: Text(
        _expired || _seconds == 0 ? 'Tạo lại mã' : '$_seconds', // Hiển thị 'Tạo lại mã' khi hết hạn
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.w400),
      ),
    );
  }
}

