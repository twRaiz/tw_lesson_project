import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: UIHelper.padding(horizontal: 20, vertical: 10),
        child: ListView(
          children: [
            ItemMenu(
              title: 'Dummy UI',
              description: 'Introducing basic flutter widget UI',
              onTap: () => AutoRouter.of(context).pushNamed('/mainDummyPage'),
            ),
            UIHelper.divider(),
            ItemMenu(
              title: 'Counter Example (State Management)',
              description:
                  'Introducing of state management using flutter_bloc. Level: 1',
              onTap: () => AutoRouter.of(context).pushNamed('/counterPage'),
            ),
            UIHelper.divider(),
            ItemMenu(
              title: 'Input Validation Example (State Management)',
              description:
                  'Flutter state management using flutter_bloc to handle validation in text field. Level: 2',
              onTap: () =>
                  AutoRouter.of(context).pushNamed('/inputValidationPage'),
            ),
            UIHelper.divider(),
            const ItemMenu(
              title: 'Calculator Example (State Management)',
              description:
                  'Flutter state management using flutter_bloc to calculate simple syntax. Level: 3',
            ),
            UIHelper.divider(),
            ItemMenu(
              title: 'News App',
              description: 'API calling using free source from NYTimes',
              onTap: () => AutoRouter.of(context).pushNamed('/mainNewsPage'),
            ),
            UIHelper.divider(),
            const ItemMenu(
              title: 'To Do App',
              description:
                  'Create a to do list that saved in local storage using hydrated_bloc. Level: 4',
            ),
          ],
        ),
      ),
    );
  }
}

class ItemMenu extends StatelessWidget {
  final String title;
  final String description;
  final Function()? onTap;
  const ItemMenu({
    super.key,
    required this.title,
    required this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 16,
          )
        ],
      ),
    );
  }
}
