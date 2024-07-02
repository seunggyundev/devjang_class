import 'package:devjang_class/widgets/cupertino_dialog.dart';
import 'package:flutter/material.dart';

class ExampleWidgets {
  Widget container(BuildContext context, ) {
    return GestureDetector(
      onTap: () {
        print('Single Tap detected');
        ReturnCupertinoDialog().onlyContentOneActionDialog(context: context, content: '싱글탭', firstText: '확인');
      },
      onDoubleTap: () {
        print('Double Tap detected');
        ReturnCupertinoDialog().onlyContentOneActionDialog(context: context, content: '더블탭', firstText: '확인');
      },
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(50.0),
        child: Text(
          'Tap me',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}