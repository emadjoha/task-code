import 'package:code_challenge/helpers/init_di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'helpers/Injection.dart';
import 'list_screen/presentation/UI/list_item_screen.dart';

void main() {
  iniGetX();
  initSingletonInstances();
  runApp(ScreenUtilInit(
      minTextAdapt: false,
      splitScreenMode: false,
      designSize: Size(767, 1567), //ScreenUtilHelper.getDesignSize(),
      builder: (context, widget) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  ListScreen(),
    );
  }
}