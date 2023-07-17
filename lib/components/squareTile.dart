import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  const SquareTile(this.assetPath, {super.key});
  final String assetPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        assetPath,
        width: 50,
      ),
    );
  }
}
