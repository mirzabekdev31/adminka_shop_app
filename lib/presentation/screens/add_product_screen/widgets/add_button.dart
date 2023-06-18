import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  Function function;


  AddButton({Key? key,required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){function.call();}, child: const Text("Add Phone"));
  }
}