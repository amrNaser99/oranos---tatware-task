import 'package:flutter/material.dart';
import 'package:oranos/core/app_fonts.dart';
import 'package:oranos/core/font_styles.dart';
import 'package:oranos/presentation/pages/bot/chat_bot_screen.dart';

class StartBotScreen extends StatelessWidget {
  const StartBotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              top: MediaQuery.of(context).size.height * 0.2,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Hi, My name is ',
                  style: getRegularStyle(
                      fontColor: Colors.black, fontSize: FontSize.s20),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Oranobot',
                      style: getBoldStyle(
                          fontColor: Colors.black, fontSize: FontSize.s20),
                    ),
                    const TextSpan(
                        text:
                            '\nI will always be there to\nhelp and assist you.\nSay Start To go to Next.'),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 25,
              top: MediaQuery.of(context).size.height * 0.18,
              child: Image.asset(
                'assets/path/man.png',
                height: MediaQuery.of(context).size.height * 0.26,
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              top: MediaQuery.of(context).size.height * 0.44,
              child: Image.asset(
                'assets/images/news.png',
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height * 0.8,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.2,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChatBotScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Next',
                    style: getMediumStyle(
                      fontColor: Colors.white,
                      fontSize: FontSize.s20,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
