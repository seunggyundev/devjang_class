import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Subject1 extends StatefulWidget {
  const Subject1({Key? key}) : super(key: key);

  @override
  State<Subject1> createState() => _Subject1State();
}

class _Subject1State extends State<Subject1> {

  TextEditingController _textEditingController =  TextEditingController();
  List<String> _titleList = ['아이디', '비밀번호', '이름', '1', '2', '3', '4'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15,),
        Container(
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black),
          ),
          child: const Padding(
            padding: EdgeInsets.all(30),
            child: Text("채팅앱까지 4주전!"),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("F"),
              Text("L"),
              Text("U"),
              Text("T"),
              Text("T"),
              Text("E"),
              Text("R"),
            ],
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Container(
              color: Colors.blue,
              width: 150,
              height: 50,
              child: const Text("여기는 Stack을 활용하여 구현해주세요", style: TextStyle(
                color: Colors.white,
              ),),
            ),
          ],
        ),
        const SizedBox(height: 15,),
        TextFormField(
          controller: _textEditingController,
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 16,
          ),
          decoration: InputDecoration(
            hintText: '여기는 텍스트를 입력받는 곳입니다',
            filled: true,
            fillColor: Colors.transparent,
            border: InputBorder.none,
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(36),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(36),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(36),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(36),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(36),
            ),
          ),
        ),
        const SizedBox(height: 15,),
        Expanded(
          child: ListView.builder(
              itemCount: _titleList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.1 * (index + 1)),
                    ),
                    child: Center(child: Text("${_titleList[index]}")),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
