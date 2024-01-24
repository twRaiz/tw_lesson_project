import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/pages/main_dummy_page.dart';

@RoutePage()
class CategoriesNewsPage extends StatefulWidget {
  const CategoriesNewsPage({super.key});

  @override
  State<CategoriesNewsPage> createState() => _CategoriesNewsPageState();
}

class _CategoriesNewsPageState extends State<CategoriesNewsPage> {
  String selectedTitle = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Top Stories')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: selectedTitle == ''
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      const Text(
                        'CHOOSE TYPE',
                        style: TextStyle(color: Colors.greenAccent),
                      ),
                    Row(
                      children: [
                        CategoriesBox(
                          categoriesTitle: 'Arts',
                          onTap: () {
                            setState(() {
                              selectedTitle = 'Arts';
                            });
                          },
                        ),
                        CategoriesBox(
                          categoriesTitle: 'Automobiles',
                          onTap: () {
                            setState(() {
                              selectedTitle = 'Automobiles';
                            });
                          },
                        ),
                        CategoriesBox(
                          categoriesTitle: 'Food',
                          onTap: () {
                            setState(() {
                              selectedTitle = 'Food';
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CategoriesBox(
                          categoriesTitle: 'Books/Review',
                          onTap: () {
                            setState(() {
                              selectedTitle = 'Books/Review';
                            });
                          },
                        ),
                        CategoriesBox(
                          categoriesTitle: 'Movies',
                          onTap: () {
                            setState(() {
                              selectedTitle = 'Movies';
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CategoriesBox(
                          categoriesTitle: 'Sports',
                          onTap: () {
                            setState(() {
                              selectedTitle = 'Sports';
                            });
                          },
                        ),
                        CategoriesBox(
                          categoriesTitle: 'Politics',
                          onTap: () {
                            setState(() {
                              selectedTitle = 'Politics';
                            });
                          },
                        ),
                        CategoriesBox(
                          categoriesTitle: 'Fashion',
                          onTap: () {
                            setState(() {
                              selectedTitle = 'Fashion';
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CategoriesBox(
                          categoriesTitle: 'Home',
                          onTap: () {
                            setState(() {
                              selectedTitle = 'Home';
                            });
                          },
                        ),
                        CategoriesBox(
                          categoriesTitle: 'Business',
                          onTap: () {
                            setState(() {
                              selectedTitle = 'Business';
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                )
              : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('SECTION :'),
                        Text(selectedTitle),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: List<Widget>.generate(
                        3,
                        (index) {
                          return const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: ItemList(
                              title: 'How can I be Flutter Developer Expert',
                              date: 'Jill Lepore 23 May 2023',
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

class CategoriesBox extends StatefulWidget {
  String categoriesTitle;
  Function() onTap;
  CategoriesBox(
      {super.key, required this.categoriesTitle, required this.onTap});

  @override
  State<CategoriesBox> createState() => _CategoriesBoxState();
}

class _CategoriesBoxState extends State<CategoriesBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Text(widget.categoriesTitle),
      ),
    );
  }
}
