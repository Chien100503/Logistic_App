import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroThree extends StatefulWidget {
  const IntroThree({super.key});

  @override
  State<IntroThree> createState() => _IntroThreeState();
}

class _IntroThreeState extends State<IntroThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 130,
            left: 20,
            child: Lottie.asset('lib/assets/page3.json', height: 400, width: 400),
          ),

          Positioned(
            top: 480,
            left: 85,
            child: Text('Đưa hàng đến nơi', style: TextStyle(fontSize: 31, fontWeight: FontWeight.w800),),
          ),Positioned(
            top: 530,
            left: 15,
            child: Text('Nhanh chóng và Đúng giờ!', style: TextStyle(fontSize: 31, fontWeight: FontWeight.w800),),
          ), Positioned(
            top: 600,
            left: 30,
            child: Container(
              width: 340,
              child: Text(
                'Với dịch vụ giao hàng của chúng tôi, bạn có thể yên tâm về sự nhanh chóng và đúng giờ, để mọi việc diễn ra suôn sẻ.',maxLines: 3, textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
