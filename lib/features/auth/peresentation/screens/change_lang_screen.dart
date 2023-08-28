import 'package:chef_app/core/local/app_loacl.dart';
import 'package:chef_app/core/utils/app_assets.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_images.dart';

class ChangeLangScreen extends StatelessWidget {
  const ChangeLangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            //background image
            const CustomImages(
              imgPath: AppAssets.background,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
            //logo
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  SizedBox(
                    height: 116.h,
                  ),
                  //image logo
                  CustomImages(
                    imgPath: AppAssets.appLogo,
                    height: 120.h,
                    width: 120.w,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  //text logo
                  Text(
                    AppStrings.welcomeToChefApp.tr(context),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(
                    height: 54.h,
                  ),
                  Text(
                    AppStrings.pleaseChooseYourLanguage.tr(context),
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  SizedBox(
                    height: 120.h,
                  ),
                  Row(
                    children: [
                      CustomButton(text: 'English',onPressed: (){},width: 140,background: AppColors.black),
                      const Spacer(),
                       CustomButton(text: 'العربية',onPressed: (){},width: 140,background: AppColors.black),
                    ],
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

