import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ProveedorSelector(),
            // BultosCounter(),
            // FacturasSelector()
          ],
        ));
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Recepción',
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

class ProveedorSelector extends StatefulWidget {
  const ProveedorSelector({super.key});

  @override
  State<ProveedorSelector> createState() => _ProveedorSelectorState();
}

class _ProveedorSelectorState extends State<ProveedorSelector> {
  // Variables
  final _provedoresList = ["Proveedor 1", "Proveedor 2", "Proveedor 3"];
  // Selected Proveedor:
  String? _selectedProveedor;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[400]!, width: 1),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
              value: _selectedProveedor,
              isExpanded: true,
              hint: const Text('Proveedor'),
              items: _provedoresList
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
              onChanged: (value) => setState(() {
                    _selectedProveedor = value;
                  })),
        ));
  }
}
