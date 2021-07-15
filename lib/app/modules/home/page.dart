import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/widgets/CalculatorWidget.dart';
import '/app/modules/home/controller.dart';
import 'widgets/InputWidget.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calculadora de IMC'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () => controller.limparCampos,
                icon: Icon(Icons.refresh))
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: controller.formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(
                      Icons.person_outline,
                      size: 120.0,
                      color: Colors.green,
                    ),
                    InputWidget(
                      label: 'Peso (KG)',
                      controller: controller.pesoController,
                      validator: (String? value) {
                        return value == '' ? "Insira seu Peso!" : null;
                      },
                    ),
                    InputWidget(
                      label: 'Altura (CM)',
                      controller: controller.alturaController,
                      validator: (String? value) {
                        return value == '' ? "Insira seu Altura!" : null;
                      },
                    ),
                    CalculatorWidget(
                      label: 'Calcular',
                      onTap: () {
                        if (controller.formKey.currentState.validate()) {
                          controller.calcularImc();
                        }
                      },
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                    ),
                    Obx(() => Text(controller.infoText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 25.0,
                        )))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
