import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'product_form_screen.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Productos'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductFormScreen()),
              );
            },
          ),
        ],
        backgroundColor: Color.fromARGB(255, 225, 150, 9), // color
      ),
      body: StreamBuilder<List<QueryDocumentSnapshot<Map<String, dynamic>>>>(
        stream: FirebaseFirestore.instance
            .collection('products')
            .snapshots()
            .map((snapshot) => snapshot.docs),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final products = snapshot.data!;
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ListTile(
                title: Text(product['name']),
                subtitle: Text('Descripción: ${product['description']}'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Precio: \$${product['price']}'),
                    SizedBox(width: 10),
                    Text('Cantidad: ${product['quantity']}'),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        product.reference.delete();
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      backgroundColor: Colors.blueGrey[100], // color
    );
  }
}
