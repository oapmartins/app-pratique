import 'package:app_pratique/utils/widgets/layout_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treinos'),
        centerTitle: true,
      ),
      body: LayoutWidget(
        child: Card(
          color: Colors.grey[100],
          child: Container(
            padding: const EdgeInsets.all(10),
            width: Get.size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("Professores: P08 SI2 - CARLOS FELIPE"),
                Text("Unidade: 0"),
                Text("Modalidade: Musculação"),
                Text("Início: 26/05/2022"),
                Text("Fim: 26/06/2022"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
