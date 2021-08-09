import 'package:flutter/material.dart';
import 'package:online_shop/core/constants/constant.dart';
import 'package:online_shop/screens/Home/widgets/appbar.dart';
import '../../../models/products_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppbar(product.color, Colors.white),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size(context).height,
              child: Stack(
                children: [
                  Container(
                    height: size(context).height * 0.5,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
