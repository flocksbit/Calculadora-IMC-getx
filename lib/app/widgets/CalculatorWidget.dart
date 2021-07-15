import 'package:flutter/material.dart';

class CalculatorWidget extends Container {
  final String label;
  final double altura, largura;
  final Color cor;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;

  CalculatorWidget({
    required this.onTap,
    required this.label,
    this.padding = const EdgeInsets.all(8),
    this.altura = 50.0,
    this.largura = 100.0,
    this.cor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding!,
        child: Container(
          color: cor,
          width: largura,
          height: altura,
          child: Center(
              child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          )),
        ),
      ),
    );
  }
}
