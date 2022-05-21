import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:training_ex1/login.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);
  @override
  State<SignupScreen> createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  State<SignupScreen> createState() => _SignupScreen();

  void loginWithFaceBook() {
    debugPrint("loginWithFaceBook");
  }

  void loginWithTwitter() {
    debugPrint("loginWithTwitter");
  }

  void toLoginScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen()
      )
    );
  }

  void signup() {
    debugPrint("signup");
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
                const Text(
                  'Find and Meet people around\nyou to find LOVE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300
                  ),
                ),
                const Spacer(),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 30,
                        right: 30
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: TextButton.icon(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            )
                        ),
                        onPressed: loginWithFaceBook,
                        icon: Padding(
                          padding: const EdgeInsets.only(
                            left: 0,
                            right: 10
                        ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ShaderMask(
                                shaderCallback: (Rect bound) {
                                  return const LinearGradient(
                                      colors: [
                                        Colors.orange,
                                        Colors.pink
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter
                                  ).createShader(bound);
                                },
                                blendMode: BlendMode.srcATop,
                                child: Image.asset(
                                  'assets/images/icon-facebook.png',
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                              Column(
                                children: [
                                  const SizedBox(height: 1.5),
                                  GradientText(
                                    '|',
                                    style: const TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w200
                                    ),
                                    colors: const [
                                      Colors.orange,
                                      Colors.pink,
                                    ],
                                    gradientDirection: GradientDirection.ttb,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        label: GradientText(
                          'Sign in with Facebook',
                          style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400
                          ),
                          colors: const [
                            Colors.orange,
                            Colors.pink,
                          ],
                          gradientDirection: GradientDirection.ttb,
                        ),
                      ),
                    )
                ),
                const SizedBox(height: 25),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 30,
                        right: 30
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: TextButton.icon(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            )
                        ),
                        onPressed: loginWithTwitter,
                        icon: Padding(
                          padding: const EdgeInsets.only(
                              left: 0,
                              right: 25
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ShaderMask(
                                shaderCallback: (Rect bound) {
                                    return const LinearGradient(
                                        colors: [
                                          Colors.orange,
                                          Colors.pink
                                        ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter
                                    ).createShader(bound);
                                  },
                                blendMode: BlendMode.srcATop,
                                child: Image.asset(
                                  'assets/images/icon-twitter.png',
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                              Column(
                                children: [
                                  const SizedBox(height: 1.5),
                                  GradientText(
                                    '|',
                                    style: const TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w200
                                    ),
                                    colors: const [
                                      Colors.orange,
                                      Colors.pink,
                                    ],
                                    gradientDirection: GradientDirection.ttb,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        label: GradientText(
                          'Sign in with Twitter',
                          style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400
                          ),
                          colors: const [
                            Colors.orange,
                            Colors.pink,
                          ],
                          gradientDirection: GradientDirection.ttb,
                        ),
                      ),
                    )
                ),
                const SizedBox(height: 25),
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
                        onPressed: signup,
                        child: GradientText(
                          'Sign Up',
                          style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400
                          ),
                          colors: const [
                            Colors.orange,
                            Colors.pink,
                          ],
                          gradientDirection: GradientDirection.ttb,
                        ),
                      ),
                    )
                ),
                const SizedBox(height: 15),
                TextButton(
                    onPressed: toLoginScreen,
                    child: const Text(
                      'ALREADY REGISTERED? SIGN IN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline
                      ),
                    )
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}