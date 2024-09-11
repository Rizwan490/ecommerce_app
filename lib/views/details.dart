import 'package:ecommerce_app/models/product_model.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.product});
final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          height: 300,
          width: double.infinity,
          child: Image.network(product.imageUrl.toString(),fit: BoxFit.cover,)),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text(product.name.toString()),
                    SizedBox(height: 30,),
                     Text(product.desc.toString()),
                     
            ],),
          ),
       
      ],),
    );
  }
}