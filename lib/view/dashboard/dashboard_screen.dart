import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zootopia_nft/utils/theme/text_theme.dart';
import 'package:zootopia_nft/utils/theme/theme_color.dart';
import 'package:zootopia_nft/view/widget/actionbutton_widget.dart';
import 'package:zootopia_nft/view/widget/circular_avatar.dart';
import 'package:zootopia_nft/view/widget/logo_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _profileHeader,
          SizedBox(height: 40),
          _searchBar,
          SizedBox(height: 40),
          _menuLabel("Top Collections"),
          SizedBox(height: 20),
          _slider,
          SizedBox(height: 40),
          _menuLabel("Featured Creator"),
          SizedBox(height: 18),
          _listFeaturedCreator
        ]).paddingSymmetric(horizontal: 26, vertical: 20),
      ),
    );
  }

  Widget get _slider {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _itemSlider(),
          _itemSlider(),
          _itemSlider(),
          _itemSlider(),
        ],
      ),
    );
  }

  Widget _itemSlider() {
    return SizedBox(
        width: 330,
        height: 250,
        child: Stack(
          children: [
            Container(
              width: 213,
              height: 280,
              decoration: BoxDecoration(
                  color: ThemeColor.secondary,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/images/panda.png'))),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  height: 200,
                  width: 170,
                  decoration: BoxDecoration(
                      color: ThemeColor.mainColor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Panda Cutie",
                        style: ThemeTextStyle.sharpBold.copyWith(fontSize: 18),
                      ),
                      SizedBox(height: 7),
                      Text(
                        "Current Bid",
                        style:
                            ThemeTextStyle.sharpReguler.copyWith(fontSize: 12),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "2.4 ETH",
                        style: ThemeTextStyle.sharpBold.copyWith(fontSize: 18),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "\$1839",
                        style: ThemeTextStyle.sharpBold.copyWith(fontSize: 14),
                      ),
                      Spacer(),
                      Center(
                        child: ActionButtonWidget(
                          onTap: () {},
                          color: ThemeColor.secondary,
                          child: Text('Place a Bid',
                              style: ThemeTextStyle.sharpBold
                                  .copyWith(color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                )).paddingOnly(right: 15),
            Positioned(
                top: 10,
                right: 0,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ThemeColor.secondary),
                    child: Icon(
                      IconlyLight.close_square,
                      color: Colors.white,
                    ),
                  ),
                )),
          ],
        )).paddingOnly(right: 15);
  }

  Widget _menuLabel(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: ThemeTextStyle.sharpBold.copyWith(fontSize: 18),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () => print('See more'),
          child: Text(
            "See more",
            style: ThemeTextStyle.sharpReguler
                .copyWith(fontSize: 12, color: ThemeColor.grey),
          ).paddingAll(5),
        )
      ],
    );
  }

  Widget get _searchBar {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: ThemeColor.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 20,
                offset: Offset(0, 15))
          ]),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Search",
            contentPadding: EdgeInsets.all(20),
            suffixIcon: Icon(
              IconlyLight.search,
              color: ThemeColor.grey,
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }

  Widget get _profileHeader {
    return Row(children: [
      Expanded(child: LogoWidget(color: ThemeColor.secondary)),
      Container(
        height: 49,
        width: 49,
        child: Stack(
          children: [
            Center(child: Icon(IconlyLight.notification, size: 25)),
            Positioned(
                top: 12,
                right: 14,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    color: ThemeColor.secondary,
                    shape: BoxShape.circle,
                  ),
                ))
          ],
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: const [
              BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 10)
            ]),
      ),
      SizedBox(width: 15),
      CustomCircleAvatar(
        imagePath: 'assets/images/user3.png',
      )
    ]).paddingOnly(top: 30);
  }

  Widget get _listFeaturedCreator {
    return Column(
      children: [
        _creatorItem("Gozali Standford", 11, 'assets/images/user1.png'),
        _creatorItem("Carla Standley", 82, 'assets/images/user2.png'),
        _creatorItem("Dimas Ibnu Malik", 82, 'assets/images/user1.png'),
      ],
    );
  }

  Widget _creatorItem(String name, int followers, String imagePath) {
    return Row(
      children: [
        CustomCircleAvatar(
            imagePath: imagePath, shadow: BoxShadow()),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: ThemeTextStyle.sharpBold.copyWith(fontSize: 16),
            ),
            SizedBox(height: 5),
            Text("${followers}K Followers",
                style: ThemeTextStyle.sharpReguler.copyWith(fontSize: 12)),
          ],
        ),
        Spacer(),
        ActionButtonWidget(
          onTap: () {},
          child: Text("Follow", style: ThemeTextStyle.sharpBold,),
          size: 100,
        )
      ],
    ).paddingOnly(bottom: 20);
  }
}
