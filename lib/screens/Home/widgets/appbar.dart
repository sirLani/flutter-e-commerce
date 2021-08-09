import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constants/constant.dart';

AppBar buildAppbar(Color color, Color iconColor) {
  return AppBar(
    backgroundColor: color,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/back.svg"),
      color: iconColor,
      onPressed: () {},
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: iconColor,
          )),
      IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: iconColor,
          )),
      SizedBox(
        width: kDefaultPadding / 2,
      )
    ],
  );
}
