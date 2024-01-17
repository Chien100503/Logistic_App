import 'package:app_logistic/login_register/login.dart';
import 'package:flutter/material.dart';

class IntroEnd extends StatelessWidget {
  const IntroEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: 130,
            child: Image(
              image: AssetImage('lib/assets/start.png'),
              width: 367,
              height: 367,
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            top: 519,
            left: 30,
            child: Text(
              'Gửi hàng cùng Vietflight',
              style: TextStyle(fontSize: 31, fontWeight: FontWeight.w800),
            ),
          ),
          const Positioned(
            top: 560,
            left: 100,
            child: Text(
              'ngay hôm nay',
              style: TextStyle(fontSize: 31, fontWeight: FontWeight.w800),
            ),
          ),
          Positioned(
              top: 620,
              left: 32,
              child: RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'HÀNG NGÀN ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                    TextSpan(
                        text: 'VOUCHER ',
                        style: TextStyle(
                            color: Color(0XFFF1AD66),
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                    TextSpan(
                        text: 'ĐƯỢC TUNG RA MỖI NGÀY ĐỂ TĂNG',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                  ],
                ),
              )),
          Positioned(
              top: 640,
              left: 75,
              child: RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'THÊM ƯU ĐÃI CHO KHÁCH HÀNG ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                    TextSpan(
                        text: 'KHÁCH HÀNG',
                        style: TextStyle(
                            color: Color(0XFFF1AD66),
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                  ],
                ),
              )),
          Positioned(
              top: 640,
              left: 75,
              child: RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'THÊM ƯU ĐÃI CHO KHÁCH HÀNG ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                    TextSpan(
                        text: 'KHÁCH HÀNG',
                        style: TextStyle(
                            color: Color(0XFFF1AD66),
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                  ],
                ),
              )),
          Positioned(
            bottom: 40,
            left: 20,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      transitionDuration: const Duration(seconds: 1),
                      transitionsBuilder:
                          (context, animation, animationTime, child) {
                        animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                        return ScaleTransition(
                          scale: animation,
                          alignment: Alignment.center,
                          child: child,
                        );
                      },
                      pageBuilder: (context, animation, animationTime) {
                        return const LoginPage();
                      }),
                );
              },
              child: Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xffFFB000),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'BẮT ĐẦU',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
