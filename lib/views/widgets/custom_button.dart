
import 'package:flutter/material.dart';
import 'package:notes_app/views/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kprimarycolor
        ),
      child: const Center(child:  Text('Add',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),)),
    );
  }
}