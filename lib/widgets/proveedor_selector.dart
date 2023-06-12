import 'package:flutter/material.dart';

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
