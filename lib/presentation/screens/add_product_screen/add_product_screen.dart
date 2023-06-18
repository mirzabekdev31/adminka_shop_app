import 'package:adminka_shop_app/presentation/screens/add_product_screen/widgets/add_button.dart';
import 'package:adminka_shop_app/presentation/screens/add_product_screen/widgets/input_image.dart';
import 'package:adminka_shop_app/presentation/screens/add_product_screen/widgets/input_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController productName=TextEditingController();
  TextEditingController productPriceName=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(height: 30,),
            InputImage(onCall: () {  },),
            SizedBox(height: 20,),
            InputText(textEditingController: productName,),
            SizedBox(height: 10,),
            InputText(textEditingController: productPriceName,),
            SizedBox(height: 20,),
            AddButton(function: (){},)
          ],
        ),
      ),
    );
  }
}
