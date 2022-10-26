import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranos/core/app_colors..dart';
import 'package:oranos/presentation/widgets/build_message.dart';

import '../../cubit/app_cubit.dart';
import '../../cubit/app_state.dart';
import '../../widgets/check_box_item.dart';

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({Key? key}) : super(key: key);

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  @override
  initState() {
    super.initState();
    AppCubit.get(context).onSendPressed();
  }

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);

    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        if (state is SendUserMessageState) {
          cubit.onSendPressed();
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return BuildMessage(message: cubit.messages[index]);
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(
                          height: 10.0,
                        ),
                        itemCount: cubit.messages.length,
                      ),
                      if (cubit.currentIndex == 3)
                        Column(
                          children: [
                            CheckBoxItem(
                                itemValue: cubit.isCheckSecurity,
                                onItemChanged: (value) {
                                  setState(() {
                                    cubit.isCheckSecurity = value!;
                                  });

                                },
                                text: 'Security'),
                            CheckBoxItem(
                                itemValue: cubit.isSC,
                                onItemChanged: (value) {
                                  setState(() {
                                    cubit.isSC = value!;

                                  });
                                },
                                text: 'Supply Chain'),
                            CheckBoxItem(
                                itemValue: cubit.isIT,
                                onItemChanged: (value) {
                                  setState(() {
                                    cubit.isIT = value!;
                                  });
                                },
                                text: 'Information Technology'),
                            CheckBoxItem(
                                itemValue: cubit.isHR,
                                onItemChanged: (value) {
                                  setState(() {
                                    cubit.isHR = value!;
                                  });
                                },
                                text: 'Human Resource'),
                            CheckBoxItem(
                                itemValue: cubit.isBR,
                                onItemChanged: (value) {
                                  setState(() {
                                    cubit.isBR = value!;
                                  });

                                },
                                text: 'Business Research'),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.all(15.0),
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                  icon: const Icon(
                                    Icons.language_outlined,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {}),
                              Expanded(
                                child: TextField(
                                  controller: cubit.messageController,
                                  decoration: const InputDecoration(
                                    hintText: "Type Something...",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.keyboard_voice,
                                    color: Colors.grey),
                                onPressed: () {},
                              )
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          cubit.onSendPressed();
                        },
                        icon: const Icon(
                          Icons.send,
                          color: AppColors.mainGreen,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
