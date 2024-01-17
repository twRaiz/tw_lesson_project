import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:trinity_lecture_app/presentation/pages/main_dummy_page.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class MostPopularPage extends StatelessWidget {
  const MostPopularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Most Popular Articles')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: List<Widget>.generate(
              8,
              (index) {
                return const ItemList(
                  title: 'How can I be Flutter Developer Expert',
                  date: 'Jill Lepore 23 May 2023',
                );
              },
            ).intersperse(UIHelper.verticalSpace(10)).toList(),
          ),
        ),
      ),
    );
  }
}
