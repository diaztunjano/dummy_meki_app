import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class Factura {
  final int id;
  final String name;

  Factura({
    required this.id,
    required this.name,
  });
}

class FacturasSelector extends StatefulWidget {
  const FacturasSelector({Key? key}) : super(key: key);
  @override
  _FacturasSelectorState createState() => _FacturasSelectorState();
}

class _FacturasSelectorState extends State<FacturasSelector> {
  final _items = List<Factura>.generate(
    10,
    (index) => Factura(id: index, name: "Factura $index"),
  ).map((factura) => MultiSelectItem<Factura>(factura, factura.name)).toList();

  List<Factura> _selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[400]!, width: 1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MultiSelectBottomSheetField<Factura>(
              initialChildSize: 0.4,
              listType: MultiSelectListType.CHIP,
              searchable: true,
              buttonText: const Text("Facturas Seleccionadas"),
              title: const Text("Facturas Disponibles"),
              items: _items,
              onConfirm: (values) {
                setState(() {
                  _selectedItems = values.cast<Factura>();
                });
              },
              chipDisplay: MultiSelectChipDisplay<Factura>(
                onTap: (value) {
                  setState(() {
                    _selectedItems.remove(value);
                  });
                },
              ),
            ),
            _selectedItems.isEmpty
                ? Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Ninguna seleccionada",
                      style: TextStyle(color: Colors.black54),
                    ))
                : Container(),
          ],
        ),
      ),
    );
  }
}
