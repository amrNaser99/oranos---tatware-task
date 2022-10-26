import 'package:flutter/material.dart';
import 'package:oranos/core/app_colors..dart';
import 'package:oranos/core/font_styles.dart';
import 'package:oranos/model/chat_message.dart';

import '../cubit/app_cubit.dart';

class BuildMessage extends StatelessWidget {
  final ChatMessage message;

  const BuildMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (AppCubit.get(context).currentIndex == 3) {
      return Column(
        children: [
          Align(
            alignment: message.isBot == true
                ? AlignmentDirectional.centerStart
                : AlignmentDirectional.centerEnd,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (message.isBot == true)
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 10.0),
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundColor: AppColors.lightGrey,
                      child: Image.asset(
                        'assets/icons/bot.png',
                        width: 30.0,
                        height: 30.0,
                      ),
                    ),
                  ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: message.isBot == true
                        ? AppColors.lightGrey
                        : AppColors.mainGreen,
                    borderRadius: const BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(10.0),
                      topStart: Radius.circular(10.0),
                      topEnd: Radius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    message.messageContent,
                    style: getMediumStyle(
                        fontColor: message.isBot == true
                            ? Colors.black
                            : Colors.white),
                  ),
                ),
                if (message.isBot != true)
                  Image.asset(
                    'assets/icons/read.png',
                    width: 20.0,
                    height: 20.0,
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),

        ],
      );
    } else {
      return Align(
        alignment: message.isBot == true
            ? AlignmentDirectional.centerStart
            : AlignmentDirectional.centerEnd,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (message.isBot == true)
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 10.0),
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: AppColors.lightGrey,
                  child: Image.asset(
                    'assets/icons/bot.png',
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              decoration: BoxDecoration(
                color: message.isBot == true
                    ? AppColors.lightGrey
                    : AppColors.mainGreen,
                borderRadius: const BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(10.0),
                  topStart: Radius.circular(10.0),
                  topEnd: Radius.circular(10.0),
                ),
              ),
              child: Text(
                message.messageContent,
                style: getMediumStyle(
                    fontColor:
                        message.isBot == true ? Colors.black : Colors.white),
              ),
            ),
            if (message.isBot != true)
              Image.asset(
                'assets/icons/read.png',
                width: 20.0,
                height: 20.0,
              ),
          ],
        ),
      );
    }
  }
}
