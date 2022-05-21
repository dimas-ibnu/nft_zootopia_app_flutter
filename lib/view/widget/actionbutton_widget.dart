import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:zootopia_nft/utils/theme/theme_color.dart';

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget(
      {Key? key, required this.onTap, this.color, required this.child, this.size})
      : super(key: key);
  final VoidCallback onTap;
  final Color? color;
  final Widget child;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: size ?? 170,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: child,
        decoration: BoxDecoration(
            color: color ?? ThemeColor.mainColor,
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
