import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:trinity_lecture_app/presentation/pages/main_dummy_page.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class MainNewsPage extends StatelessWidget {
  const MainNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News App')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Top Stories',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Top stories from all time',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              UIHelper.verticalSpace(10),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1),
                    borderRadius: UIHelper.borderRadiusCircular(all: 8),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Go To Categories Section',
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      ),
                      Icon(
                        Icons.double_arrow,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              ),
              UIHelper.verticalSpace(10),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Most Popular Articles',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () =>
                        AutoRouter.of(context).pushNamed('/mostPopularPage'),
                    child: const Text(
                      'See All',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const Text(
                'Top article from last week',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              UIHelper.verticalSpace(10),
              Column(
                children: List<Widget>.generate(
                  3,
                  (index) {
                    return const ItemList(
                      title: 'How can I be Flutter Developer Expert',
                      date: 'Jill Lepore 23 May 2023',
                    );
                  },
                ).intersperse(UIHelper.verticalSpace(10)).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
