import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranos/model/chat_message.dart';
import 'package:oranos/model/experts.dart';
import 'package:oranos/presentation/cubit/app_state.dart';
import 'package:oranos/presentation/widgets/build_message.dart';

import '../pages/main/main_screen.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isCheckSecurity = false;
  bool isSC = false;
  bool isHR = false;
  bool isIT = false;
  bool isBR = false;

  TextEditingController messageController = TextEditingController();
  bool isSendClicked = false;
  int currentIndex = 0;

  List<ChatMessage> messages = [];

  void onChangeCurrentIndex(int index) {
    currentIndex == index;
    debugPrint('currentIndex = $currentIndex');
    emit(ChangeCurrentIndexState());
  }

  String userName = '';

  List<String> botMessages = [
    'What\'s Your FirstName',
  ];

  void onSendPressed(context) {
    if (isSendClicked) {
      userName = "$userName ${messageController.text.trim()}";
      botMessages = [
        'What\'s Your FirstName',
        'Ok,$userName What\'s Your LastName',
        'Mr $userName, What\'s Your Title?',
        'What Categories you will need expert in?'
      ];
      debugPrint('userName = $userName');
      messageController.clear();
      BuildMessage(
          message: ChatMessage(messageContent: userName, isBot: false));
      messages.add(ChatMessage(messageContent: userName, isBot: false));
      debugPrint('messages = $messages');
      currentIndex++;
      emit(SendUserMessageState());
    } else if (!isSendClicked) {
      BuildMessage(
        message: ChatMessage(
          messageContent: botMessages[currentIndex],
          isBot: true,
        ),
      );
      messages.add(ChatMessage(
        messageContent: botMessages[currentIndex],
        isBot: true,
      ));
      debugPrint('messages = $messages');
      emit(SendBotMessageState());
    }

    debugPrint('current Index = $currentIndex');
    changeSendPress();
    emit(OnSendPressedState());
  }

  void changeSendPress() {
    isSendClicked = !isSendClicked;
    emit(ChangeSenClickedState());
  }

  void onCheckPressed({required isCheckBox, required value}) {
    isCheckBox = value;
    debugPrint('onCheckPressed = $isCheckBox');
    emit(onCheckPressedState());
  }

  List<BottomNavigationBarItem> bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Image.asset('assets/nav/home.png', width: 20),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/nav/star.png', width: 20),
      label: 'Favourite',
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/nav/news.png', width: 20),
      label: 'News',
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/nav/profile.png', width: 20),
      label: 'Profile',
    ),
  ];

  List<Experts> experts = [
    Experts(
        name: 'Kareem Adel',
        image: 'assets/images/man.png',
        job: 'Supply Chain',
        rate: '5.0'),
    Experts(
        name: 'Merna Adel',
        image: 'assets/images/woman.png',
        job: 'Supply Chain',
        rate: '4.9'),
  ];
  List<Experts> onlineExperts = [
    Experts(
      name: 'Kareem',
    ),
    Experts(
      name: 'Adel',
    ),
    Experts(
      name: 'Amr',
    ),
    Experts(
      name: 'Lina',
    ),
    Experts(
      name: 'Kareem Adel',
    ),
    Experts(
      name: 'Kareem Adel',
    ),
  ];
}
