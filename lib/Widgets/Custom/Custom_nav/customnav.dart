import 'package:eagleshop/Screens/Home/home.dart';
import 'package:eagleshop/Screens/Offers_Page/offers_page.dart';
import 'package:eagleshop/Screens/Settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Screens/Orders_Page/order.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0.5,
      notchMargin: 5,
      clipBehavior: Clip.antiAlias,
      color: Colors.red,
      shape: const AutomaticNotchedShape(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60), topRight: Radius.circular(60))),
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: IconButton(
              onPressed: () {
                Get.to(() => const Home());
              },
              icon: const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: IconButton(
              onPressed: () {
                Get.to(() => const OrderPage());
              },
              icon: const Icon(
                Icons.store_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: IconButton(
              onPressed: () {
                Get.to(() => const OffersPage());
              },
              icon: const Icon(
                Icons.card_giftcard_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: IconButton(
              onPressed: () {
                Get.to(() => const SettingsPage());
              },
              icon: const Icon(
                Icons.settings_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
