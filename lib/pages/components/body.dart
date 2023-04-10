import 'package:flutter/material.dart';
import 'package:food/constants.dart';
import 'package:food/model/product_model.dart';
import 'package:food/model/responsive.dart';
import 'package:food/pages/components/email_banner.dart';
import 'package:food/pages/components/product.dart';
import 'package:food/pages/components/services_card.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(kPadding),
      constraints: BoxConstraints(maxWidth: kMaxwidth),
      child: Column(
        children: [
          ServicesCard(),
          Responsive(
            desktop: ProductCard(
              crossAxiscount: _size.width < 650 ? 2 : 3,
              aspectRatio: _size.width < 650 ? 0.85 : 1.1,
            ),
            tablet: ProductCard(
                crossAxiscount: _size.width < 825 ? 2 : 3,
                aspectRatio: _size.width < 825 ? 0.85 : 1.1),
            mobile: ProductCard(
                crossAxiscount: _size.width < 690 ? 2 : 3,
                aspectRatio: _size.width < 560 ? 0.85 : 1.1),
          ),
          SizedBox(
            height: 40,
          ),
          EmailBanner(),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.aspectRatio = 1.1,
    this.crossAxiscount = 3,
  });

  final int crossAxiscount;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxiscount, childAspectRatio: aspectRatio),
      itemBuilder: (context, index) => Products(
        press: () {},
        product: products[index],
      ),
      itemCount: products.length,
    );
  }
}
