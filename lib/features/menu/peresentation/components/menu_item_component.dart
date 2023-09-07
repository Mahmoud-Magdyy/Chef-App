import 'package:chef_app/core/local/app_loacl.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_alert_dialog.dart';
import '../../../../core/widgets/custom_network_image.dart';

class MenuItemComponent extends StatelessWidget {
  const MenuItemComponent({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //image
        SizedBox(
          height: 60.h,
          width: 60.w,
          child: const CustomCachedNetworkImage(
              imageUrl:
                  'https://www.pexels.com/photo/delicious-burger-with-fried-egg-and-fries-4393021/'),
          // Image.network(''),
        ),
        SizedBox(
          width: 8.w,
        ),
        //column
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('title'),
            Text('Subtitle'),
            Text('price LE'),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return CustomAlertDialog(
                    message: AppStrings.delete.tr(context),
                    confirmAction: (){},
                  );
                });
          },
          icon: const Icon(
            Icons.cancel,
            color: AppColors.red,
            size: 40,
          ),
        )
      ],
    );
  }
}

