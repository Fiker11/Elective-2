import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  final Order _order = Order();
  String? _validateItem(String value) {
    return value.isEmpty ? 'Please enter an item' : null;
  }

  String? _validateQuantity(String value) {
    int? valueAsInt = value.isEmpty ? 0 : int.tryParse(value);
    return valueAsInt == 0 ? 'Please enter a valid quantity' : null;
  }

  void submitOrder() {
    if (_formStateKey.currentState!.validate()) {
      _formStateKey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Item: ${_order.item} \n  Quantity: ${_order.quantity}',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form validation')),
      body: SafeArea(
        child: Column(
          children: [
            Form(
              key: _formStateKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "coffee",
                        labelText: "Item",
                      ),
                      validator: (value) => _validateItem(value!),
                      onSaved: (value) => _order.item = value,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '1',
                        labelText: "Quantity",
                      ),
                      validator: (value) => _validateQuantity(value!),
                      onSaved:
                          (value) => _order.quantity = int.tryParse(value!),
                    ),
                    Divider(color: Colors.black, height: 60.0),
                    ElevatedButton(
                      onPressed: submitOrder,
                      child: Text("submit"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Order {
  String? item;
  int? quantity;
}
