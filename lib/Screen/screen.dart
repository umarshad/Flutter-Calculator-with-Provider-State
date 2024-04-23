import 'package:calculator/Providers/providers.dart';
import 'package:calculator/components/buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Rebuild State');
    return ChangeNotifierProvider(
      create: (context) => ButtonState(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Consumer<ButtonState>(
              builder: (context, buttonState, _) {
                print('Rebuild State.....');
                return Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Text(
                              buttonState.userInput,
                              style: const TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                            Text(
                              buttonState.answer,
                              style: const TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              MyButton(
                                title: 'AC',
                                onPress: () {
                                  buttonState.clearInput();
                                },
                                isSelected: null,
                              ),
                              MyButton(
                                title: '+/-',
                                onPress: () {
                                  buttonState.updateInput('+/-');
                                },
                                isSelected: null,
                              ),
                              MyButton(
                                title: '%',
                                onPress: () {
                                  buttonState.updateInput('%');
                                },
                                isSelected: null,
                              ),
                              MyButton(
                                title: '/',
                                color: Colors.orange,
                                onPress: () {
                                  buttonState.updateInput('/');
                                },
                                isSelected: null,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyButton(
                                title: '7',
                                onPress: () {
                                  buttonState.updateInput('7');
                                },
                                isSelected: null,
                              ),
                              MyButton(
                                title: '8',
                                onPress: () {
                                  buttonState.updateInput('8');
                                },
                                isSelected: null,
                              ),
                              MyButton(
                                title: '9',
                                onPress: () {
                                  buttonState.updateInput('9');
                                },
                                isSelected: null,
                              ),
                              MyButton(
                                title: 'x',
                                color: Colors.orange,
                                onPress: () {
                                  buttonState.updateInput('x');
                                },
                                isSelected: null,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyButton(
                                title: '4',
                                onPress: () {
                                  buttonState.updateInput('4');
                                },
                                isSelected: null,
                              ),
                              MyButton(
                                title: '5',
                                onPress: () {
                                  buttonState.updateInput('5');
                                },
                                isSelected: null,
                              ),
                              MyButton(
                                title: '6',
                                onPress: () {
                                  buttonState.updateInput('6');
                                },
                                isSelected: null,
                              ),
                              MyButton(
                                title: '-',
                                onPress: () {
                                  buttonState.updateInput('-');
                                },
                                color: Colors.orange,
                                isSelected: null,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyButton(
                                title: '1',
                                onPress: () {
                                  buttonState.updateInput('1');
                                },
                                isSelected: null,
                              ),
                              MyButton(
                                title: '2',
                                onPress: () {
                                  buttonState.updateInput('2');
                                },
                                isSelected: null,
                              ),
                              MyButton(
                                title: '3',
                                onPress: () {
                                  buttonState.updateInput('3');
                                },
                                isSelected: null,
                              ),
                              MyButton(
                                title: '+',
                                onPress: () {
                                  buttonState.updateInput('+');
                                },
                                color: Colors.orange,
                                isSelected: null,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyButton(
                                title: '0',
                                onPress: () {
                                  buttonState.updateInput('0');
                                },
                                isSelected: null,
                              ),
                              MyButton(
                                title: '.',
                                onPress: () {
                                  buttonState.updateInput('.');
                                },
                                isSelected: null,
                              ),
                              MyButton(
                                title: 'DEL',
                                onPress: () {
                                  buttonState.deleteInput();
                                },
                                isSelected: null,
                              ),
                              MyButton(
                                title: '=',
                                onPress: () {
                                  buttonState.calculateResult();
                                },
                                color: Colors.orange,
                                isSelected: null,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
