import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/view/home1.dart';

import '../constant/const.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/back.jpg'), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 173),
                  child: Text("Login",
                      style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                          color: buttonColor)),
                ),
                SizedBox(
                  height: 114.h,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 66, right: 66),
                    child: Form(
                        child: Column(children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Phone number',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          icon: Image.asset('asset/pngAsset/ph.png'),
                        ),
                      ),
                      SizedBox(
                        height: 39.h,
                      ),

                      //

                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Password',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            icon: Image.asset('asset/pngAsset/lock.png')),
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forget password?',
                                style:
                                    TextStyle(fontSize: 12, color: forgetColor),
                              ))),
                      SizedBox(
                        height: 51.h,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const Home1()));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(21)),
                            primary: buttonColor,
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 49)),
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(21)),
                            side: BorderSide(
                                color: buttonColor,
                                style: BorderStyle.solid,
                                width: 1),
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 49)),
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: buttonColor),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home1()));
                          },
                          child: const Text(
                            'Skip',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: skipColor),
                          ))
                    ])))
              ],
            ),
          ),
        ),
      ),
      //),
      //)
    );
  }
}
