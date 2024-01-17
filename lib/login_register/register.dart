import 'dart:async';

import 'package:app_logistic/component/timer.dart';
import 'package:app_logistic/login_register/login.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscureText = true;
  bool _phone = false;
  bool _password = false;
  bool _getCode = false;
  int _seconds = 60;
  late Timer _timer;

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
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F7),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: CircleAvatar(
                  backgroundColor: Color(0xff573353).withOpacity(0.5),
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xff573353),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: 60),
                child: Image(
                    image: AssetImage('lib/assets/register.png'),
                    width: 242,
                    height: 278),
              ),
              Padding(
                padding: EdgeInsets.only(left: 110,),
                child: Text('Đăng ký',
                    style:
                        TextStyle(fontSize: 33, fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 20, top: 22),
                child: TextField(
                  onTap: () {
                    setState(() {
                      _phone = !_phone;
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Số điện thoại',
                    filled: true,
                    prefixIcon: Icon(Icons.phone_outlined,
                        color: _phone ? Color(0xffFDA758) : Colors.grey),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 20, top: 10),
                child: TextField(
                  onTap: () {
                    setState(() {
                      _phone = !_phone;
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Mã xác minh',
                    filled: true,
                    prefixIcon: Icon(Icons.qr_code_2_outlined,
                        color: _phone ? Color(0xffFDA758) : Colors.grey),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _getCode = !_getCode;
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 250, top: 10),
                  child: _getCode ? CountdownTimer(): Text('Tạo mã xác minh', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w400)), //// Show CountdownTimer when _getCode is true
                  ),
                  // child: Text('Tạo mã xác minh', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w400),),

                ),


              Padding(
                padding: const EdgeInsets.only(left: 10, right: 20, top: 10),
                child: TextField(
                  obscuringCharacter: '*',
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    hintText: 'Mật khẩu',
                    filled: true,
                    prefixIcon: Icon(Icons.lock,
                        color: _password
                            ? Color(0xffFDA758)
                            : Colors.grey),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 20, top: 10),
                child: TextField(
                  obscuringCharacter: '*',
                  onTap: () {
                    setState(() {
                      _password = !_password;
                    });
                  },
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    hintText: 'Mật khẩu',
                    filled: true,
                    prefixIcon: Icon(Icons.lock,
                        color: _password
                            ? Color(0xffFDA758)
                            : Colors.grey),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: _obscureText
                            ? Colors.grey
                            : Color(0xffFDA758),
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 60,
                width: 370,
                decoration: BoxDecoration(
                    color: Color(0xffFFB000),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Đăng ký',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 66, top: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Bạn chưa có tài khoảng?'),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
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
                      child: Text(
                        'Đăng nhập',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
