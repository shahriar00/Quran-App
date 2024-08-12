import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranapp/constant/color_constant.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Widget? child;
  final double? borderRadius;
  final bool isExpanded;
  final Function()? onTap;
  final double? verticalPadding;
  final double? horizontalPadding;
  final double? textFontSize;
  final double? elevation;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final FontWeight? textFontWeight;
  const CustomButton({super.key,  this.text, this.onTap, this.borderRadius, this.isExpanded = true, this.verticalPadding, this.horizontalPadding, this.textFontSize, this.textFontWeight, this.height, this.width, this.child, this.backgroundColor, this.elevation});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isExpanded?double.infinity:null,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation:elevation?? 0,
              // maximumSize: Size(width??constraints.maxWidth,height??50.h),
              backgroundColor:backgroundColor?? ColorConstant.kPrimaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius ?? 4)),
              padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 13.sp, horizontal: horizontalPadding ?? 0)),
          onPressed: onTap ?? () {},
          child: child ??
              Text(
                text??'',
                style: TextStyle(fontSize: textFontSize ?? 13.sp, fontWeight: textFontWeight ?? FontWeight.w600),
              )),
    );
  }
}
