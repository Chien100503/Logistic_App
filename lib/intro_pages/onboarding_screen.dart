import 'package:app_logistic/intro_pages/Intro_end.dart';
import 'package:app_logistic/intro_pages/Intro_page4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Intro_page1.dart';
import 'Intro_page2.dart';
import 'Intro_page3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 3);
            });
          },
          controller: _controller,
          children: [IntroOne(), IntroTwo(), IntroThree(), IntroFour()],
        ),
        Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: Text('Skip'),
                  onTap: () {
                    _controller.jumpToPage(3);
                  },
                ),
                SmoothPageIndicator(
                    controller:_controller, count: 4, effect: WormEffect()),
                onLastPage ?
                GestureDetector(
                  child: Text('Start'),
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
                            return const IntroEnd();
                          }),
                    );
                  },
                ) : GestureDetector(
                  child: Text('Next'),
                  onTap: () {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                ),
              ],
            )),
      ],
    ));
  }
}
