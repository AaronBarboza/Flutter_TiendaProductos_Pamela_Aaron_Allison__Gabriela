import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class ProductFormScreen extends StatefulWidget {
  @override
  _ProductFormScreenState createState() => _ProductFormScreenState();
}

class _ProductFormScreenState extends State<ProductFormScreen> {
  final _formKey = GlobalKey<FormState>();
  String _id = '';
  String _name = '';
  String _description = '';
  double _price = 0.0;
  int _quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Agregar Producto',
        ),
        backgroundColor: Colors.blueGrey[100], // color
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'ID'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa un ID';
                  }
                  return null;
                },
                onSaved: (value) {
                  _id = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nombre'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa un nombre';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Descripción'),
                onSaved: (value) {
                  _description = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Precio'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa un precio';
                  }
                  // Verifica el valor
                  if (double.tryParse(value) == null) {
                    return 'Por favor, ingresa un número válido';
                  }
                  return null;
                },
                onSaved: (value) {
                  _price = double.parse(value!);
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Cantidad'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa una cantidad';
                  }
                  return null;
                },
                onSaved: (value) {
                  _quantity = int.parse(value!);
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    _saveProduct();
                    _clearForm(); // Clear the form
                  }
                },
                child: Text('Guardar Producto'),
              ),
              SizedBox(height: 16.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductListScreen()),
                    );
                  },
                  icon: Icon(Icons.list),
                  label: Text('Ver Lista de Productos'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 144, 221, 254), // color
    );
  }

  void _saveProduct() {
    FirebaseFirestore.instance.collection('products').doc(_id).set({
      'id': _id,
      'name': _name,
      'description': _description,
      'price': _price,
      'quantity': _quantity,
    });
  }

  void _clearForm() {
    _formKey.currentState!.reset();
    _id = '';
    _name = '';
    _description = '';
    _price = 0.0;
    _quantity = 0;
  }
}
