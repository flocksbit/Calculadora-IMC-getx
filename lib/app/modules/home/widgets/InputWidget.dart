import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputWidget extends Container {
  final String label;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  InputWidget({
    required this.label,
    this.controller,
    this.validator,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.green),
      ),
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.green,
        fontSize: 25.0,
      ),
      controller: controller,
      validator: validator,
    );
  }
}
