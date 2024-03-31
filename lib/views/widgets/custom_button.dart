
import 'package:flutter/material.dart';
import 'package:notes_app/views/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap,  this.isloading=false});
  final void Function()? onTap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kprimarycolor
          ),
        child:  Center(
          child: isloading 
          ?const SizedBox(
            width: 24,
            height: 24,
            child:  CircularProgressIndicator(
              color: Colors.black,
            ),
          )
          :const Text(
            'Add',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold),
              ),
            ),
      ),
    );
  }
}