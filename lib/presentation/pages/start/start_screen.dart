import 'package:flutter/material.dart';
import 'package:oranos/core/app_fonts.dart';
import 'package:oranos/core/app_strings.dart';
import 'package:oranos/core/font_styles.dart';
import '../bot/start_bot_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/logo.png', height: 40),
                  const SizedBox(height: 20),
                  Text(
                    'Expert From Every Planet',
                    style: getSemiBoldStyle(
                      fontSize: FontSize.s18,
                      fontColor: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 0,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StartBotScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Get Started',
                        style: getMediumStyle(
                          fontColor: Colors.white,
                          fontSize: FontSize.s16,
                        ),
                      ),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: getSemiBoldStyle(
                            fontSize: FontSize.s14,
                            fontColor: Colors.black,
                          ),
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text('SignUp')),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.language_outlined),
                        const SizedBox(width: 10),
                        Text(
                          'English',
                          style: getMediumStyle(
                            fontSize: FontSize.s14,
                            fontColor: Colors.black,
                          ),
                        ),
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
