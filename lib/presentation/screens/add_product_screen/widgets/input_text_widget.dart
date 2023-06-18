import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  TextEditingController textEditingController=TextEditingController();
  InputText({Key? key,required this.textEditingController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child: TextField(
        controller: textEditingController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'enter'
        ),
      ),
    );
  }
}
