import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputImage extends StatelessWidget {

  Function() onCall;
  InputImage({Key? key,required this.onCall}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onCall.call();
      },
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200]
        ),
      ),
    );
  }
}
