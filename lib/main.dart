import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isCheckedSavePass = false;
  String email = "";
  String password = "";

  void login() {
    debugPrint("Login with: userName = $email & pass = $password");
  }

  void loginWithFaceBook() {
    debugPrint("loginWithFaceBook");
  }

  void loginWithTwitter() {
    debugPrint("loginWithTwitter");
  }

  void toForgotPassScreen() {
    debugPrint("toForgotPassScreen");
  }

  void toSignUpScreen() {
    debugPrint("toSignUpScreen");
  }

  @override
  Widget build(BuildContext context) {
    Color getColorForCheckBox(Set<MaterialState> states) {
      return Colors.orange;
    }

    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.deepOrange,
                  Colors.pinkAccent
                ]
              )
          ),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 80),
                SizedBox(
                  width: 250,
                  height: 150,
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),

                // const SizedBox(height: 20),
                const Text(
                  'Find and Meet people around\nyou to find LOVE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'SIGN IN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30
                    ),
                    child: TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),

                      ),
                    ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30,
                      right: 30
                  ),
                  child: TextField(
                    onChanged: (text) {
                      password = text;
                    },
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Spacer(),
                    Checkbox(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6.0))),
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColorForCheckBox),
                      value: isCheckedSavePass,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckedSavePass = value!;
                        });
                      },

                    ),
                    const Text(
                      'Remember Password',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    const SizedBox(width: 30),
                  ],
                ),
                const Spacer(),
                // const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30,
                      right: 30
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                              )
                          )
                      ),
                      onPressed: login,
                      child: GradientText(
                        'GET STARTED',
                        style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                        ),
                        colors: const [
                          Colors.pink,
                          Colors.orange,
                        ],
                      ),
                    ),
                  )
                ),
                const SizedBox(height: 24),
                Row(
                    children: [
                      const Spacer(),
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  )
                              )
                          ),
                          onPressed: loginWithFaceBook,
                          child: ShaderMask(
                            shaderCallback: (Rect bounds) {
                            return const LinearGradient(
                              colors: [
                                Colors.orangeAccent,
                                Colors.pink,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ).createShader(bounds);
                          },
                          blendMode: BlendMode.srcIn,
                            child: SizedBox(
                                width: 30,
                                height: 30,
                              child: Image.asset('assets/images/icon-facebook.png'),
                            ),
                        ),
                      ),
                    ),
                      const SizedBox(width: 30),
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  )
                              )
                          ),
                          onPressed: loginWithTwitter,
                          child: ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(colors: [
                                Colors.orangeAccent,
                                Colors.pink,
                              ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ).createShader(bounds);
                            },
                            blendMode: BlendMode.srcIn,
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset('assets/images/icon-twitter.png'),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                ),
                const SizedBox(height: 10),
                TextButton(
                    onPressed: toForgotPassScreen,
                    child: const Text(
                      'FORGOT PASSWORD?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          decoration: TextDecoration.underline
                      ),
                    )
                ),
                const SizedBox(height: 15),
                // const Spacer(),
                 SizedBox(
                  width: double.infinity,
                  height: 80,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3)
                    ),
                    child: Row(
                      children: [
                        const Spacer(),
                        const Text(
                          "DON'T HAVE ACCOUNT ?",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 13
                          ),
                        ),
                        TextButton(
                            onPressed: toSignUpScreen,
                            child: const Text(
                              'SIGN UP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  decoration: TextDecoration.underline
                              ),
                            )
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
