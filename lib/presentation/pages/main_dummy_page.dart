import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/presentation/pages/splash_page.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class DummyUIPage extends StatelessWidget {
  const DummyUIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dummy UI')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ItemMenu(
              title: 'Next',
              description: 'Tab Bar, GridView, ListView',
              onTap: () =>
                  AutoRouter.of(context).pushNamed('/dummyListGridPage'),
            ),
            UIHelper.verticalSpace(16),
            sectionTitle('CONTAINER AND TEXT'),
            UIHelper.verticalSpace(8),
            const ItemList(
              title: 'How can I be Flutter Developer Expert',
              date: 'Jill Lepore 23 May 2023',
            ),
            UIHelper.verticalSpace(24),
            sectionTitle('COLUMN'),
            UIHelper.verticalSpace(8),
            Column(
              children: [
                const ItemList(
                    title: 'How can I be flutter Developer Expert 1?',
                    date: 'Jill Lepore 23 May 2023'),
                UIHelper.verticalSpace(8),
                const ItemList(
                    title: 'How can I be flutter Developer Expert 2?',
                    date: 'Jill Lepore 23 May 2023')
              ],
            ),
            UIHelper.verticalSpace(24),
            sectionTitle('ROW'),
            UIHelper.verticalSpace(8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemBox(
                  title: 'Container 1',
                ),
                ItemBox(
                  title: 'Container 1',
                ),
                ItemBox(
                  title: 'Container 1',
                )
              ],
            ),
            UIHelper.verticalSpace(24),
            sectionTitle('BUTTON'),
            UIHelper.verticalSpace(8),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'SUBMIT',
                    ))),
            UIHelper.verticalSpace(24),
            sectionTitle('IMAGE ASSETS, SIZEDBOX AND EXPANDED'),
            UIHelper.verticalSpace(8),
            Row(
              children: [
                const Expanded(
                  child: ItemBox(
                    title: 'Container 1',
                  ),
                ),
                UIHelper.horizontalSpace(16),
                const ItemBox(
                  title: 'Container 1',
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  Text sectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 14, color: Colors.green[400], fontWeight: FontWeight.bold),
    );
  }
}

class ItemBox extends StatelessWidget {
  final String title;
  const ItemBox({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                Constants.dummyImg,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            UIHelper.verticalSpace(2),
            Text(
              title,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final String title;
  final String date;

  const ItemList({super.key, required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                Constants.dummyImg,
                height: 56,
                width: 56,
                fit: BoxFit.cover,
              ),
            ),
            UIHelper.horizontalSpace(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  UIHelper.verticalSpace(4),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
