// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/constants.dart';
import 'package:food/model/product_model.dart';
import 'package:food/pages/components/banner_section.dart';
import 'package:food/pages/components/body.dart';
import 'package:food/pages/components/email_banner.dart';
import 'package:food/pages/components/footer.dart';
import 'package:food/pages/components/header.dart';
import 'package:food/pages/components/header_container.dart';
import 'package:food/pages/components/menu.dart';
import 'package:food/pages/components/product.dart';
import 'package:food/pages/components/services_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'Foodie',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: kSecondaryColor,
                  ),
                ),
              ),
            ),
            MobMenu(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(),
            BodyContainer(),
            SizedBox(
              height: 30,
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
