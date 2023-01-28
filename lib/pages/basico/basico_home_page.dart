import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/basico/basico_controller.dart';

class BasicoHomePage extends StatelessWidget {
  final controller = Get.put(BasicoController());

  BasicoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Básico Home page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (context, child) => Text(
                controller.nome,
                style: const TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(height: 20),
          
          ],
        ),
      ),
    );
  }
}


// Path: lib\pages\basico\basico_controller.dart

class WidgetInterno extends StatelessWidget {

  const WidgetInterno({ super.key });

   @override
   Widget build(BuildContext context) {
       return 
       Column(
        children: [
          const Text('Widget Interno'),
          const SizedBox(height: 20),
          
  ElevatedButton(
              onPressed: () {
                Get.find<BasicoController>().mudarNome('Maria');
              },
              child: const Text('Mudar nome'),
            ),
        ],
       );
  }
}
