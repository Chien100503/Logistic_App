import 'package:flutter/material.dart';

class IntroOne extends StatefulWidget {
  const IntroOne({super.key});

  @override
  State<IntroOne> createState() => _IntroOneState();
}

class _IntroOneState extends State<IntroOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 130,
            child: Image(image: AssetImage('lib/assets/introPage1.png'), fit: BoxFit.cover,),
          ),
          Positioned(
            top: 110,
            left: 58,
            child: Image(image: AssetImage('lib/assets/bird.png'), fit: BoxFit.cover),
          ),
          Positioned(
            top: 200,
            left: 30,
            child: Image(image: AssetImage('lib/assets/cloud.png'), fit: BoxFit.cover),
          ),
          Positioned(
            top: 140,
            left: 170,
            child: Image(image: AssetImage('lib/assets/cloud.png'),fit: BoxFit.cover),
          ),
          Positioned(
            top: 480,
            left: 15,
            child: Text('Mạng lưới giao nhận hàng', style: TextStyle(fontSize: 31, fontWeight: FontWeight.w800),),
          ),Positioned(
            top: 530,
            left: 100,
            child: Text('trên toàn quốc', style: TextStyle(fontSize: 31, fontWeight: FontWeight.w800),),
          ), Positioned(
            top: 600,
            left: 15,
            child: Container(
              width: 370,
              child: Text(
                'Hệ thống giao nhận hàng được bố trí phù hợp thuận lợi cho việc lưu trữ, khai thác và trung chuyển hàng hóa',maxLines: 3, textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
