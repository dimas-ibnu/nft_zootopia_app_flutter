import 'package:flutter/material.dart';
import 'package:zootopia_nft/utils/theme/theme_color.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar(
      {Key? key, this.shadow, this.color, required this.imagePath})
      : super(key: key);
  final BoxShadow? shadow;
  final Color? color;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      width: 49,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imagePath)),
          shape: BoxShape.circle,
          color: color ?? ThemeColor.mainColor,
          boxShadow: [
            shadow ??
                BoxShadow(
                    color: Colors.black12, spreadRadius: 2, blurRadius: 10)
          ]),
    );
  }
}
