import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/text_form_field.dart';

@RoutePage()
class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final List<OperatorType> operators = [
    OperatorType.plus,
    OperatorType.substract,
    OperatorType.multiply,
    OperatorType.divide,
    OperatorType.pow
  ];

  OperatorType? selectedOperator;
  double? result;

  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();
  List<OperatorHistoryModel> history = [];

  @override
  void dispose() {
    firstNumberController.dispose();
    secondNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'CHOOSE TYPE',
              style: TextStyle(
                color: ColorConstant.green,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Wrap(
              children: operators.map((operator) {
                var isSelected = operator == selectedOperator;
                return Padding(
                  padding: const EdgeInsets.all(4),
                  child: GestureDetector(
                    onTap: () => setState(() {
                      selectedOperator = operator;
                      firstNumberController.text = '';
                      secondNumberController.text = '';
                      result = null;
                    }),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: isSelected
                                  ? ColorConstant.lightBlue
                                  : ColorConstant.lightGrey),
                          borderRadius: BorderRadius.circular(8),
                          color: isSelected ? ColorConstant.lightBlue : null),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 16),
                        child: Text(
                          operator.name,
                          style: TextStyle(
                              fontSize: 16,
                              color: isSelected ? ColorConstant.primary : null),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 12,
            ),
            if (selectedOperator != null)
              Row(
                children: [
                  SizedBox(
                      width: 80,
                      child: TextFormFieldCustom(
                        controller: firstNumberController,
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      selectedOperator?.operator ?? '',
                      style: const TextStyle(fontSize: 32),
                    ),
                  ),
                  SizedBox(
                      width: 80,
                      child: TextFormFieldCustom(
                        controller: secondNumberController,
                      )),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      '=',
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      result != null ? '$result' : '. . .',
                      style: const TextStyle(fontSize: 32),
                    ),
                  ),
                ],
              ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: ColorConstant.lightGreen),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
                child: Row(
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Icon(
                        Icons.info_outline_rounded,
                        color: ColorConstant.green,
                      ),
                    ),
                    Expanded(
                        child: Text(
                      'Press calculate button to get the result',
                      style: TextStyle(fontSize: 12, color: ColorConstant.grey),
                    ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'History',
              style: TextStyle(fontSize: 14, color: ColorConstant.green),
            ),
            Expanded(
                child: ListView(
                    children: history.isNotEmpty
                        ? history
                            .map((histo) => Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Text(
                                          '${histo.firstNumber}${histo.operatorType.operator}${histo.secondNumber}',
                                          style: const TextStyle(
                                            fontSize: 24,
                                          ),
                                        )),
                                        TextButton(
                                            onPressed: () => setState(() {
                                                  firstNumberController.text =
                                                      histo.firstNumber;
                                                  secondNumberController.text =
                                                      histo.secondNumber;
                                                  selectedOperator =
                                                      histo.operatorType;
                                                }),
                                            child: const Text(
                                              'Re-Apply',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: ColorConstant.primary),
                                            ))
                                      ],
                                    ),
                                    const Divider()
                                  ],
                                ))
                            .toList()
                        : [
                            const Text(
                              'No history found',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: ColorConstant.grey,
                                  fontStyle: FontStyle.italic),
                            )
                          ])),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () => setState(() {
                          result = calculate();
                          if (result != null && selectedOperator != null) {
                            history.add(OperatorHistoryModel(
                                firstNumber: firstNumberController.text,
                                secondNumber: secondNumberController.text,
                                operatorType: selectedOperator!));
                          }
                        }),
                    child: const Text('Calculate')))
          ],
        ),
      ),
    );
  }

  double? calculate() {
    if (selectedOperator == null) return null;

    var firstNumber = double.tryParse(firstNumberController.text);
    var secondNumber = double.tryParse(secondNumberController.text);

    if (firstNumber == null || secondNumber == null) return null;

    switch (selectedOperator) {
      case OperatorType.plus:
        return firstNumber + secondNumber;
      case OperatorType.substract:
        return firstNumber - secondNumber;
      case OperatorType.multiply:
        return firstNumber * secondNumber;
      case OperatorType.divide:
        return firstNumber / secondNumber;
      case OperatorType.pow:
        return firstNumber % secondNumber;
      default:
        return null;
    }
  }
}

class OperatorHistoryModel {
  final String firstNumber;
  final String secondNumber;
  final OperatorType operatorType;

  const OperatorHistoryModel(
      {required this.firstNumber,
      required this.secondNumber,
      required this.operatorType});
}

enum OperatorType {
  plus('Add', '+'),
  substract('Substract', '-'),
  multiply('Multiply', 'X'),
  divide('Divide', '/'),
  pow('Pow', '^');

  const OperatorType(this.name, this.operator);
  final String name;
  final String operator;
}
