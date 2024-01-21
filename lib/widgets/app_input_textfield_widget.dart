// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppInputTextfieldWidget extends StatelessWidget {
AppInputTextfieldWidget({ Key? key ,required this.controller,required this.title,required this.hitText}) 
: super(key: key);
TextEditingController controller;
final String title;
final String hitText;

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600, color: Colors.white),),
        SizedBox(height: 8,),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(hintText: hitText,hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
        ),
      ],
    );
  }
}