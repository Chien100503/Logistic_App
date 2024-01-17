import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroFour extends StatelessWidget {
  const IntroFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 100,
            child: Lottie.asset('lib/assets/pay.json', height: 400, width: 400),
          ),
          Positioned(
            top: 480,
            left: 70,
            child: Text(
              'Thanh toán dễ dàng',
              style: TextStyle(fontSize: 31, fontWeight: FontWeight.w800),
            ),
          ),
          Positioned(
            top: 530,
            left: 15,
            child: Text(
              'Mua sắm không bao giờ đơn độn!',
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.w800),
            ),
          ),
          Positioned(
            top: 600,
            left: 30,
            child: Container(
              width: 340,
              child: Text(
                'Với dịch vụ giao hàng của chúng tôi, bạn có thể yên tâm về sự nhanh chóng và đúng giờ, để mọi việc diễn ra suôn sẻ.',
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
