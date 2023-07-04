import 'package:agri_logistics/ui/shared/app_constant.dart';
import 'package:agri_logistics/ui/views/widgets/profile_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${AppConstant.homeViewWelcomeTitle}, Ikem"),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
              label: Text(AppConstant.homeViewProfileTitle),
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
          Container(
            padding: const EdgeInsets.all(20),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 80,
              runSpacing: 10,
              children: [
                CustomITextIconButton(
                  onPress: () {},
                  icon: Icons.shop,
                  label: "Vendors",
                ),
                CustomITextIconButton(
                  onPress: () {},
                  icon: Icons.motorcycle,
                  label: "Riders",
                ),
                CustomITextIconButton(
                  onPress: () {},
                  icon: Icons.people,
                  label: "Customers",
                ),
                CustomITextIconButton(
                  onPress: () {},
                  icon: Icons.autorenew_rounded,
                  label: "Orders",
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class CustomITextIconButton extends StatelessWidget {
  const CustomITextIconButton(
      {super.key,
      required this.onPress,
      required this.icon,
      required this.label});

  final VoidCallback onPress;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          Icon(
            icon,
            size: 50,
            color: Colors.green,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
