import 'package:e_book/Config/Colors.dart';
// import 'package:e_book/Controller/AuthController.dart';
// import 'package:e_book/Pages/ProfilePage/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../const.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // AuthController authController = Get.put(AuthController());
    return AppBar(
      centerTitle: true, // Center the title text
      title: Text(
        "E-BOOK Store",
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Theme.of(context).colorScheme.background,
            ),
      ),
      leading: InkWell(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: SvgPicture.asset("Assets/Icons/dashboard.svg"),
      ),

      // actions: [
      //   InkWell(
      //     onTap: () {
      //       // Get.to(ProfilePage());
      //     },
      //     // child: CircleAvatar(...), // Implement profile picture later
      //   )
      // ],
    );
  }
}
