import 'package:flutter/material.dart';

class IntroTwo extends StatefulWidget {
  const IntroTwo({super.key});

  @override
  State<IntroTwo> createState() => _IntroTwoState();
}

class _IntroTwoState extends State<IntroTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 130,
            child: Image(image: AssetImage('lib/assets/introPage2.png'), fit: BoxFit.cover,),
          ),
          Positioned(
            top: 329,
            left: 93,
            child: Image(image: AssetImage('lib/assets/logopage2.png'), fit: BoxFit.cover),
          ),
          Positioned(
            top: 480,
            left: 30,
            child: Text('Ứng dụng thân thiện với', style: TextStyle(fontSize: 31, fontWeight: FontWeight.w800),),
          ),Positioned(
            top: 530,
            left: 120,
            child: Text('người dùng', style: TextStyle(fontSize: 31, fontWeight: FontWeight.w800),),
          ), Positioned(
            top: 600,
            left: 30,
            child: Container(
              width: 340,
              child: Text(
                'Khách hàng có thể sử dụng bất kì lúc nào, bất kì nơi đâu, thao tác dễ dàng, quan trọng nhất là độ bảo mật an toàn',maxLines: 3, textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
