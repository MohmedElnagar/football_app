import 'package:flutter/material.dart';
import 'package:football_app/features/home/ui/widget/CustomTextAppBar.dart';
import 'package:football_app/features/home/ui/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notification_add,
                  color: Colors.grey,
                ))
          ],
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.category_outlined, color: Colors.grey)),
          title: const CustomTextAppBar(),
        ),
        body: const HomeViewBody());
  }
}
