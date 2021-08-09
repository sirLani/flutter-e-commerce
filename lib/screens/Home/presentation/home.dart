import 'package:flutter/material.dart';
import 'package:online_shop/core/colors/colors.dart';

import '../widgets/appbar.dart';

import '../widgets/body.dart';

class MensCategory extends StatelessWidget {
  const MensCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(Colors.white, kTextColor),
      body: const Body(),
    );
  }
}
