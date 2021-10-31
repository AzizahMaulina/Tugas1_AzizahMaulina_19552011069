import 'package:azizah/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(MyApp());
}
class Date extends StatelessWidget {
  const Date({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            showDatePicker(
              context: context, 
              initialDate: DateTime.now(),
              firstDate: DateTime(2000), 
              lastDate: DateTime(2025),
              );
          },
      child: Text('Date Picker'),
        ),
      )
    );
  }
}