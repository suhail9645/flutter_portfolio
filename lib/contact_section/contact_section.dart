import 'package:flutter/material.dart';
import 'package:web_project/core/const/lists.dart';
import 'package:web_project/core/const/widget.dart';
import 'package:web_project/widget/custom_button.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/coding_bg.webp'), fit: BoxFit.fill),
      ),
      child: Column(
        children: [
          spaceForHeight,
          const CustomButtom(text: 'CONTACT ME'),
          spaceForHeight,
          ...List.generate(4, (index) => CustomTextField(hint: textFormhints[index], index: index),),
          Container(height: 30,width: 100,  decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Color.fromARGB(255, 47, 46, 46),
            width: 3,
          ),
          left: BorderSide(
            color: Color.fromARGB(255, 47, 46, 46),
            width: 3,
          ),
        ),
      ),
      child:const Center(child:  Text('SUBMIT',style: TextStyle(fontSize: 21,color: Colors.black),)),
      )
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.hint, required this.index,
  });
 final String hint;
final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left: 9),
      margin:const EdgeInsets.only(bottom: 40),
      height:index==3?100: 40,
      width: 500,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 3,
          ),
          left: BorderSide(
            color: Colors.black,
            width: 3,
          ),
        ),
      ),
      child: TextFormField(
        maxLines: index==3?5:1,
        style: const TextStyle(color: Colors.black, fontSize: 17),
        cursorColor: Colors.black,
        cursorWidth: 3,
        decoration:  InputDecoration(
          hintText: hint,
          hintStyle:const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
