import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranapp/constant/assets_constant.dart';
import 'package:quranapp/constant/color_constant.dart';
import 'package:quranapp/constant/custom_textstyle.dart';
import 'package:quranapp/custom-widgets/custom_button.dart';
class PermissionDialogWidget extends StatelessWidget {
  final String? image;
  final String? title;
  final String? text;
  final String? buttonText;
  final Function() onPressed;
  const PermissionDialogWidget({
    super.key, this.image, this.title, this.text, this.buttonText, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorConstant.kBackgroundColor,
      shadowColor: ColorConstant.kPrimaryColor,
      contentPadding: EdgeInsets.all(16.sp),
      content:Image.asset(image??AssetsConstant.salatimage,),
      actions: [

        Center(
          child: Text(
           title?? 'turn_on_notification'.tr(),
            style: getTextSize22Weight600(context),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
         text?? 'turn_on_notification_message'.tr(),
          style: getTextSize11Weight400Grey(context),
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomButton(
          text:buttonText?? 'turn_on_notification_button'.tr(),
          onTap:onPressed
        )
      ],
    );
  }
}
