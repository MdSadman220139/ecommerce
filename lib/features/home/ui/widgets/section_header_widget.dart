import 'package:ecommerce/core/extension/localization_extension.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.tittle,
    required this.onTapSeeAll,
  });

  final String tittle;
  final VoidCallback onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(tittle, style: textTheme.titleMedium?.copyWith(fontSize: 24)),
        TextButton(
          onPressed: onTapSeeAll,
          child: Text(context.localization.seeAll),
        ),
      ],
    );
  }
}
