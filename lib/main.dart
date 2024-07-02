import 'package:devjang_class/exams/subject1.dart';
import 'package:devjang_class/models/color_model.dart';
import 'package:devjang_class/widgets/cupertino_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Subject1(),
    );
  }

  ColorsModel _colorsModel = ColorsModel();  // 직접 정의한 ColorsModel클래스의 인스턴스 생성

  final _nameController = TextEditingController();

  // Widget키워드는 이 함수는 Widget을 리턴한다는 의미 -> 키워드 작성시 반드시 Widget을 리턴해야함
  Widget container() {
    return TextFormField(
      controller: _nameController,
      decoration: InputDecoration(
        labelText: 'Enter your name',
      ),
    );
  }
}
