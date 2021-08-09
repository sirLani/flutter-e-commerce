import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constants/constant.dart';
import '../../../models/products_model.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    required this.onPress,
    required this.product,
    Key? key,
  }) : super(key: key);

  final Product product;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => onPress(),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(product.image),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            product.title,
            style: const TextStyle(color: kTextColor),
          ),
        ),
        Text(
          "\$${product.price}",
          style:
              const TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
