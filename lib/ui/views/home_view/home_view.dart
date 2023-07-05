import 'package:agri_logistics/ui/shared/app_constant.dart';
import 'package:agri_logistics/ui/views/home_view/home_view_model.dart';
import 'package:agri_logistics/ui/views/widgets/home/home_body_grid_widget.dart';
import 'package:agri_logistics/ui/views/widgets/home/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("${AppConstant.homeViewWelcomeTitle}, Ikem"),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications),
                    label: const Text(AppConstant.homeViewProfileTitle),
                  )
                ],
              ),
            ),
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProfileCard(),
                  const SizedBox(
                    height: 50,
                  ),
                  HomeBodyGridWidget(
                    navigateToVendors:() => model.navigateToDetailView(AppConstant.homeViewTextButtonVendor),
                    navigateToCustomers: ()=> model.navigateToDetailView(AppConstant.homeViewTextButtonCustomers),
                    navigateToHaulage: ()=> model.navigateToDetailView(AppConstant.homeViewTextButtonHaulage),
                    navigateToOrders: () => model.navigateToDetailView(AppConstant.homeViewTextButtonOrders),
                    navigateToRiders: ()=> model.navigateToDetailView(AppConstant.homeViewTextButtonRiders),
                    navigateToStatistics:()=> model.navigateToDetailView(AppConstant.homeViewTextButtonStatistics),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
