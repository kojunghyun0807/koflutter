/*
  날짜 : 2025/10/27
  이름 : 고정현
  내용 : Stateful 정적 위젯 실습
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('02.Stateless 위젯 실습',)
        ),
        body: StatefulTest(),
      ),
    );
  }

}

// Stateful 위젯은 상태를 통해 화면을 갱신하는 동작 위젯
class StatefulTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _StatefulTestState();


}

class _StatefulTestState extends State<StatefulTest> { // StatelessWidget은 상태(속성)가 변경되어도 화면이 다시 갱신되지 않음

  //속성이 변경되더라도 해당 속성을 참조하는 Text 위젯은 재빌드 되지 않음
  int counter = 0;

  void _increment(){

    //상태를 업데이트하고, build를 재호출
    setState(() {
      counter++;
    });

    print('counter : $counter');
  }

  @override
  Widget build(BuildContext context) {

    print('build...');

    return Column(
      children: [
        Text('카운터 : $counter', style: TextStyle(fontSize: 24),),
        ElevatedButton(
            onPressed: _increment,
            child: const Text('카운트')
        )
      ],
    );
  }

}