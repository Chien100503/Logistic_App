import 'package:app_logistic/login_register/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  bool _phone = false;
  bool _password = false;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F7),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 70),
                child: Image(
                    image: AssetImage('lib/assets/login.png'),
                    width: 242,
                    height: 278),
              ),
              Padding(
                padding: EdgeInsets.only(left: 110, top: 12),
                child: Text('ĐĂNG NHẬP',
                    style:
                        TextStyle(fontSize: 33, fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 70, top: 12),
                child: Text('Chào mừng bạn đến với VietFlight',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
              ),
              SizedBox(height: 30),
              Container(
                width: 400,
                height: 370,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Đăng nhập với số điện thoại',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(height: 5),
                      Divider(color: Colors.red, height: 10),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 10),
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
                                color:
                                    _phone ? Color(0xffFDA758) : Colors.grey),
                            fillColor: Color(0xffF6F6F7),
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
                        padding: const EdgeInsets.only(left: 20, right: 20),
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
                            fillColor: Color(0xffF6F6F7),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 20),
                        child: Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              activeColor: Color(0xffFDA758),
                              onChanged: (newBool) {
                                setState(() {
                                  isChecked = newBool;
                                });
                              },
                            ),
                            Text(
                              'Ghi nhớ tài khoản',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 370,
                        decoration: BoxDecoration(
                            color: Color(0xffFFB000),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'Đăng nhập',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Quên mật khẩu?',
                        style: TextStyle(color: Colors.green),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80, top: 5),
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
                                        return const RegisterPage();
                                      }),
                                );
                              },
                              child: Text(
                                'Đăng ký shop',
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
            ],
          ),
        ),
      ),
    );
  }
}
