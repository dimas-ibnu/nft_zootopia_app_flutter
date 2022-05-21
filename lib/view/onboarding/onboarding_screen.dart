import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zootopia_nft/utils/theme/text_theme.dart';
import 'package:zootopia_nft/utils/theme/theme_color.dart';
import 'package:get/get.dart';
import 'package:zootopia_nft/view/widget/actionbutton_widget.dart';
import 'package:zootopia_nft/view/widget/logo_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.secondary,
      body: Stack(
        children: [
          Positioned(
            child: _onboardImage,
            bottom: 0,
            right: 0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LogoWidget().paddingOnly(top: 100, bottom: 32),
              _description.paddingOnly(bottom: 12),
              _content,
              SizedBox(height: 32),
              ActionButtonWidget(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Place To Bid",
                        style: ThemeTextStyle.sharpMedium.copyWith(
                          color: Colors.black,
                        ),
                      ).paddingOnly(right: 10),
                      Icon(IconlyLight.arrow_right, size: 20)
                    ],
                  ),
                  onTap: () =>
                      Navigator.pushReplacementNamed(context, '/dashboard'))
            ],
          ).paddingSymmetric(horizontal: 20),
        ],
      ),
    );
  }

  Widget get _onboardImage {
    return Image.asset('assets/images/animal_onboarding.png');
  }

  Widget get _description {
    return Text(
      "Build your own animal kingdom with ZooTopia",
      style: ThemeTextStyle.sharpBold.copyWith(
        color: Colors.white,
        fontSize: 24,
      ),
    );
  }

  Widget get _content {
    return Text(
      "Buy, sell and trade your Animal NFTs and conquer the entire world of wild.",
      style: ThemeTextStyle.sharpReguler.copyWith(
        color: Colors.white,
        fontSize: 14,
      ),
    );
  }
}
