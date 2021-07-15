import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController _pesoController = TextEditingController();
  TextEditingController _alturaController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  RxString _infoText = "Informe Seus Dados!".obs;

  get pesoController => _pesoController;
  set pesoController(v) => _pesoController.value.text;
  get alturaController => _alturaController;
  set alturaController(v) => _alturaController.value.text;

  String get infoText => _infoText.value;
  set infoText(v) => _infoText.value = v;

  get formKey => _formKey;
  set formKey(v) => _formKey = v;

  void limparCampos() {
    pesoController.text = "";
    alturaController.text = "";

    infoText = "Informe Seus Dados!";
    formKey = GlobalKey<FormState>();
  }

  void calcularImc() {
    double peso = double.parse(pesoController.text);
    double altura = double.parse(alturaController.text) / 100;

    double imc = peso / (altura * altura);

    if (imc < 18.6) {
      infoText = "Abaixo Do Peso (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 18.6 && imc < 24.9) {
      infoText = "Peso Ideal (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 24.9 && imc < 29.9) {
      infoText = "Levemente Acima do Peso (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 29.9 && imc < 34.9) {
      infoText = "Obesidade Grau I (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 34.9 && imc < 39.9) {
      infoText = "Obesidade Grau II (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 40) {
      infoText = "Obesidade Grau III (${imc.toStringAsPrecision(4)})";
    }
  }
}
