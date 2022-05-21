import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zootopia_nft/utils/theme/text_theme.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key, this.color}) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/logo.svg',
          height: 30,
          width: 37,
          color: color ?? Colors.white,
        ).paddingOnly(right: 10),
        Text(
          "ZooTopia",
          style: ThemeTextStyle.sharpBold.copyWith(
            color: color ?? Colors.white,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
