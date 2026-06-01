import 'package:flutter/material.dart';
import 'package:equiibrium/core/constants/app_color.dart';
import 'package:equiibrium/core/constants/app_text_style.dart';
import 'package:equiibrium/core/constants/app_routes.dart';

class AppbarCustom extends StatefulWidget implements PreferredSizeWidget {
  const AppbarCustom({super.key});

  @override
  State<AppbarCustom> createState() => _AppbarCustomState();

  @override
  Size get preferredSize => const Size.fromHeight(54);
}

class _AppbarCustomState extends State<AppbarCustom> {
  TextEditingController searchController = TextEditingController();
  bool isSearchActive = false;

  void handleSearch() {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Search: ${searchController.text}')));
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const Border(bottom: BorderSide(color: AppColor.outlineVariant)),
      title: isSearchActive
          ? TextField(
              controller: searchController,
              style: AppTextStyle.bodyLg.copyWith(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
                hintStyle: AppTextStyle.bodyLg.copyWith(color: Colors.white),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 5,
                ),
                isDense: true,
              ),
              onSubmitted: (value) {
                handleSearch();
              },
            )
          : Text(
              'Market Terminal',
              style: AppTextStyle.headlineMd.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
      leading: IconButton(
        icon: Icon(isSearchActive ? Icons.close : Icons.search),

        onPressed: () {
          setState(() {
            isSearchActive = !isSearchActive;
          });
        },
      ),
      actions: [
        Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            padding: EdgeInsets.all(7),
            constraints: const BoxConstraints(),
            visualDensity: VisualDensity.compact,
            icon: const Icon(Icons.person, color: Colors.white, size: 20),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.dashboard);
            },
          ),
        ),
      ],
    );
  }
}
