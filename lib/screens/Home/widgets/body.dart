import 'package:flutter/material.dart';
import '../../../core/constants/constant.dart';
import '../../../models/products_model.dart';
import '../../Details/presentation/details.dart';

import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
          ),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.75,
                crossAxisCount: 2),
            itemCount: products.length,
            itemBuilder: (context, index) => ItemCard(
              product: products[index],
              onPress: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(product: products[index]),
                ),
              ),
            ),
          ),
        )),
        const SizedBox(
          height: 30,
        )
        // ItemCard(),
      ],
    );
  }
}
