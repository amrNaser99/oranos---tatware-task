import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranos/core/font_styles.dart';

import 'package:oranos/presentation/cubit/app_cubit.dart';
import 'package:oranos/presentation/cubit/app_state.dart';
import 'package:oranos/presentation/pages/main/widgets/build_expert_item.dart';
import 'package:oranos/presentation/pages/main/widgets/build_online_expert.dart';

import '../../../core/app_colors..dart';
import '../../../core/app_fonts.dart';
import '../../../core/app_spaces.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Image.asset(
              'assets/images/logo.png',
              width: 100,
            ),
            leading: const Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/man.png',
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ],
            elevation: 5.0,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            elevation: 10.0,
            showSelectedLabels: false,
            items: cubit.bottomNavBarItems,
          ),
          body: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Recommended Experts',
                      style: getBoldStyle(
                          fontColor: Colors.black, fontSize: FontSize.s18),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_rounded,
                        size: 20.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 250,
                  child: Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => BuildExpertItem(
                        expert: cubit.experts[index],
                      ),
                      separatorBuilder: (context, index) => AppSpaces.hSpace10,
                      itemCount: cubit.experts.length,
                    ),
                  ),
                ),
                AppSpaces.vSpace10,
                Row(
                  children: [
                    Text(
                      'Online Experts',
                      style: getBoldStyle(
                          fontColor: Colors.black, fontSize: FontSize.s18),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_rounded,
                        size: 20.0,
                      ),
                    ),
                  ],
                ),
                AppSpaces.vSpace20,
                SizedBox(
                  height: 100,
                  child: Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => BuildOnlineExperts(
                        expert: cubit.onlineExperts[index],
                      ),
                      separatorBuilder: (context, index) => AppSpaces.hSpace20,
                      itemCount: cubit.onlineExperts.length,
                    ),
                  ),
                ),
                AppSpaces.vSpace20,
                Expanded(child: Container(
                  child: GestureDetector,
                ))
                // Align(
                //   alignment: Alignment.bottomCenter,
                //   child: Container(
                //     height: 5,
                //     width: MediaQuery.of(context).size.width * 0.4,
                //     decoration: BoxDecoration(
                //       color: Colors.grey,
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        );
      },
    );
  }
}
