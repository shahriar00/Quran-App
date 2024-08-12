import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranapp/constant/assets_constant.dart';
import 'package:quranapp/constant/color_constant.dart';


import 'widgets/permission_dialog_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController animationController = AnimationController(vsync: this, duration: Duration(seconds: 1))..repeat(reverse: true);
  late Animation<double> animation = CurvedAnimation(parent: animationController, curve: Curves.easeIn);
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        _showDialog();
      },
    );
    // TODO: implement initState
    super.initState();
  }
@override
  void dispose() {
    animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    debugPrint('/splash');

    return Scaffold(
      backgroundColor: ColorConstant.kBackgroundColor,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AssetsConstant.splashBackground), fit: BoxFit.cover)),
        child: FadeTransition(
            opacity: animation,
            child: Image.asset(
              AssetsConstant.splashLogo,
              height: 166.w,
            )),
      ),
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return PermissionDialogWidget(onPressed: () {
          Navigator.pop(context);
showDialog(context: context,      barrierDismissible: false,
    builder: (context) => PermissionDialogWidget(
      image: AssetsConstant.qabaimage,
      title:'location_permission'.tr() ,
      text: 'location_permission_message'.tr(),
      buttonText: 'location_permission_button'.tr(),
      onPressed: () {
      Navigator.pop(context);


    },),);

        },);
      },
    );
  }
}

