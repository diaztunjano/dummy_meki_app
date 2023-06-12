import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/bultos_counter.dart';
import '../widgets/facturas_selector.dart';
import '../widgets/proveedor_selector.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: const Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProveedorSelector(),
              CounterWidget(),
              FacturasSelector(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomButton(),
    );
  }

  Container bottomButton() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      // top border width
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 0.8, color: Colors.grey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
              backgroundColor: Colors.blue[700],
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () {
              // Acción del botón
            },
            child: const Text('Imprimir etiqueta',
                style: TextStyle(fontSize: 22.0)),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Recepcióne',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 1,
      centerTitle: true,
      leading: Container(
        margin: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SvgPicture.asset(
          'assets/icons/Arrow-Left.svg',
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
