import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/text_form_field.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class InputValidationPage extends StatefulWidget {
  const InputValidationPage({super.key});

  @override
  State<InputValidationPage> createState() => _InputValidationPageState();
}

class _InputValidationPageState extends State<InputValidationPage> {
  TextEditingController? userNameController;
  TextEditingController? emailController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Validation'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hi There',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Please enter your name and email :)',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    UIHelper.verticalSpace(20),
                    TextFormFieldCustom(
                      title: 'Name',
                      controller: userNameController,
                      preffixIcon: const Icon(
                        Icons.person_outline,
                        color: Colors.blue,
                        size: 24,
                      ),
                      hintText: 'Enter your name',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    UIHelper.verticalSpace(10),
                    TextFormFieldCustom(
                      title: 'Email',
                      controller: emailController,
                      preffixIcon: const Icon(
                        Icons.email,
                        color: Colors.blue,
                        size: 24,
                      ),
                      hintText: 'Enter your email',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'SUBMIT',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
