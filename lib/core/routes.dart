import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation/pages/bot/chat_bot_screen.dart';
import '../presentation/pages/bot/start_bot_screen.dart';
import '../presentation/pages/main/main_screen.dart';
import '../presentation/pages/start/start_screen.dart';


class Routes {
  static const String main = '/main';
  static const String start = '/start';
  static const String startBot = '/startBot';
  static const String chatBot = '/chatBot';

  static Map<String, WidgetBuilder> get routes {
    return {
      start: (context) => const StartScreen(),
      startBot : (context) => const StartBotScreen(),
      chatBot: (context) => const ChatBotScreen(),
      main: (context) => const MainScreen(),
    };
  }
}
