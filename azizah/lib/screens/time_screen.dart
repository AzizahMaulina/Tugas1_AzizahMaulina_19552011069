import 'package:azizah/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(MyApp());
}

class Time extends StatelessWidget {
  const Time({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlineButton(
          onPressed:(){
            showTimePicker(context: context, initialTime: TimeOfDay.now()
          );
          } ,
      child: Text('Time Picker')
          ),
      ),
    );
  }
}
