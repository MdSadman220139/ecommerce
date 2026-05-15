import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/app/app_colours.dart';
import 'package:ecommerce/app/assets_path.dart';
import 'package:ecommerce/core/extension/localization_extension.dart';
import 'package:ecommerce/features/home/ui/widgets/app_bar_action_button.dart';
import 'package:ecommerce/features/home/ui/widgets/category_item_widget.dart';
import 'package:ecommerce/features/home/ui/widgets/home_carousel_slider_widget.dart';
import 'package:ecommerce/features/home/ui/widgets/section_header_widget.dart';
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
    return Scaffold(
      appBar: _appBarDesign(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildSearchTextField(),
              const SizedBox(height: 16),
              HomeCarouselSlider(),
              SectionHeader(
                tittle: context.localization.ctaegories,
                onTapSeeAll: () {},
              ),
              const SizedBox(height: 16),
              _buildCategorySection(),
              const SizedBox(height: 16),
              SectionHeader(
                tittle: context.localization.popular,
                onTapSeeAll: () {},
              ),
              
            
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategorySection() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
        ],
      ),
    );
  }

  Widget _buildSearchTextField() {
    return TextField(
      textInputAction: TextInputAction.search,

      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
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
