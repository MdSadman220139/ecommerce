import 'package:ecommerce/app/assets_path.dart';
import 'package:ecommerce/features/home/ui/widgets/app_bar_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBarDesign());
  }

  AppBar _appBarDesign() {
    return AppBar(
      title: SvgPicture.asset('assets/images/logo_nav.svg', height: 32),
      actions: [
        appBarActionButtonWidget(icon: Icons.person_outline, onTap: () {}),
        const SizedBox(width: 8),
        appBarActionButtonWidget(icon: Icons.call, onTap: () {}),
        const SizedBox(width: 8),
        appBarActionButtonWidget(
          icon: Icons.notifications_active_outlined,
          onTap: () {},
        ),
      ],
    );
  }
}
