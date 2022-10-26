import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oranos/bloc_observer.dart';
import 'package:oranos/core/app_strings.dart';
import 'package:oranos/core/app_themes.dart';
import 'package:oranos/presentation/cubit/app_cubit.dart';
import 'package:oranos/presentation/pages/bot/chat_bot_screen.dart';
import 'package:oranos/presentation/pages/main/main_screen.dart';
import 'package:oranos/presentation/pages/start/start_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) =>
          BlocProvider<AppCubit>(
            create: (context) => AppCubit(),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: AppStrings.appName,
              theme: AppThemes.lightTheme,
              home: const MainScreen(),
            ),
          ),
    );
  }
}
