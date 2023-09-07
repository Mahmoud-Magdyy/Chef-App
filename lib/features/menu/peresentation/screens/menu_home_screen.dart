import 'package:chef_app/core/local/app_loacl.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../components/menu_item_component.dart';

class MenuHomeScreen extends StatelessWidget {
  const MenuHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            //add meal button
            CustomButton(
                onPressed: () {}, text: AppStrings.addToMenu.tr(context)),
            //items
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: MenuItemComponent(),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
