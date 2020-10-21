import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'cartmodel.dart';

class ECommerceScreen extends StatelessWidget {
  List<Product> _products = [
    Product(
        id: 1,
        title: "Handcrafted Goods",
        price: 20.0,
        imgUrl: "https://img.icons8.com/plasticine/2x/apple.png",
        qty: 1),
    Product(
        id: 2,
        title: "Handcrafted Goods",
        price: 40.0,
        imgUrl: "https://img.icons8.com/cotton/2x/banana.png",
        qty: 1),
    Product(
        id: 3,
        title: "Handcrafted Goods",
        price: 20.0,
        imgUrl: "https://img.icons8.com/cotton/2x/orange.png",
        qty: 1),
    Product(
        id: 4,
        title: "Handcrafted Goods",
        price: 40.0,
        imgUrl: "https://img.icons8.com/cotton/2x/watermelon.png",
        qty: 1),
    Product(
        id: 5,
        title: "Handcrafted Goods",
        price: 25.0,
        imgUrl: "https://img.icons8.com/cotton/2x/avocado.png",
        qty: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Ecommerce"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          )
        ],
      ),
      body:
      GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: _products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, childAspectRatio: 0.8),
        itemBuilder: (context, index){
          return ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            return Card( child: Column( children: <Widget>[
              Image.network(_products[index].imgUrl, height: 120, width: 120,),
              Text(_products[index].title, style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\$"+_products[index].price.toString()),
              OutlineButton(
                    child: Text("Add"),
                    onPressed: () => model.addProduct(_products[index]))
            ])); 
          });
        },
      ),
    );
  }
}