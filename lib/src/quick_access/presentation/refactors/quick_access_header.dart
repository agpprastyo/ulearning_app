import 'package:ulearning_app/core/res/media_res.dart';
import 'package:ulearning_app/src/quick_access/presentation/providers/quick_access_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuickAccessHeader extends StatelessWidget {
  const QuickAccessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<QuickAccessTabController>(
      builder: (_, controller, __) {
        return Center(
          child: Image.asset(
            controller.currentIndex == 0
                ? MediaRes.bluePotPlant
                : controller.currentIndex == 1
                    ? MediaRes.turquoisePotPlant
                    : MediaRes.steamCup,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
