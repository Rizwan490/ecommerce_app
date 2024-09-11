import 'package:ecommerce_app/data/products.dart';
import 'package:ecommerce_app/views/details.dart';
import 'package:flutter/material.dart';

class ShowAll extends StatefulWidget {
  const ShowAll({super.key});

  @override
  State<ShowAll> createState() => _ShowAllState();
}

class _ShowAllState extends State<ShowAll> {
  Products products = Products();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      
      crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10, 
      //childAspectRatio: 2/3
      mainAxisExtent: 300
      ),
    itemCount: products.allProducts.length,
    physics: ScrollPhysics(),
    shrinkWrap: true,
     itemBuilder: (context, index) {

      return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Details(product: products.allProducts[index]),));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: 200,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: const Color.fromARGB(255, 237, 233, 233), borderRadius: BorderRadius.circular(10)),
              child: Image.network(products.allProducts[index].imageUrl.toString()),),
        
              Text(products.allProducts[index].name.toString()),
              Text('Price: ${products.allProducts[index].price}')
        
          
          ],
        ),
      );
    },);
  }
}