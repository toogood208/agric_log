import 'package:agri_logistics/ui/shared/app_constant.dart';
import 'package:agri_logistics/ui/views/widgets/home/custom_home_text_button_icon.dart';
import 'package:flutter/material.dart';

class HomeBodyGridWidget extends StatelessWidget {
  const HomeBodyGridWidget({
    super.key,
    required this.navigateToCustomers,
    required this.navigateToHaulage,
    required this.navigateToOrders,
    required this.navigateToRiders,
    required this.navigateToStatistics,
    required this.navigateToVendors,
  });

  final VoidCallback navigateToVendors;
  final VoidCallback navigateToRiders;
  final VoidCallback navigateToHaulage;
  final VoidCallback navigateToCustomers;
  final VoidCallback navigateToOrders;
  final VoidCallback navigateToStatistics;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
          CustomHomeTextIconButton(
            onPress: navigateToVendors,
            icon: Icons.shop,
            label: AppConstant.homeViewTextButtonVendor,
          ),
          CustomHomeTextIconButton(
            onPress: navigateToRiders,
            icon: Icons.motorcycle,
            label:AppConstant.homeViewTextButtonRiders,
          ),
          CustomHomeTextIconButton(
            onPress: navigateToHaulage,
            icon: Icons.fire_truck,
            label:AppConstant.homeViewTextButtonHaulage,
          ),
          CustomHomeTextIconButton(
            onPress: navigateToCustomers,
            icon: Icons.people,
            label:AppConstant.homeViewTextButtonCustomers,
          ),
          CustomHomeTextIconButton(
            onPress: navigateToOrders,
            icon: Icons.autorenew_rounded,
            label: AppConstant.homeViewTextButtonOrders,
          ),
          CustomHomeTextIconButton(
            onPress: navigateToStatistics,
            icon: Icons.stacked_bar_chart,
            label:AppConstant.homeViewTextButtonStatistics,
          ),
        ],
      ),
    );
  }
}