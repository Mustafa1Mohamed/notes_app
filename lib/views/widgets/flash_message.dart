import 'package:flutter/material.dart';

class FlashMessage extends StatelessWidget {
  const FlashMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 90,
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: const Center(
        child: Text(
          'Note Added Successfully',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
