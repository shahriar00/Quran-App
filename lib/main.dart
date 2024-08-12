import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '';
import 'views/initial-page/splash_screen.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  runApp(EasyLocalization(
    saveLocale: true,
      startLocale: Locale('bn'),
      supportedLocales: [Locale('en'),Locale('bn')],
      path: 'assets/translations',
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height;
    debugPrint('$deviceWidth , $deviceHeight');
    return ScreenUtilInit(
      designSize: Size(374,812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        title: 'Quran App',
        theme: ThemeData.dark(),
        home: SplashScreen(),
      ),
    );
  }
}

