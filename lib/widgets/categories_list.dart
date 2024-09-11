import 'package:ecommerce_app/constants/app_colors.dart';
import 'package:ecommerce_app/provider/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  List<String> myList =[
    'All',
    'SmartPhones',
    'Headphones',
    'Laptops',
    'Tablets',
    'Gadgets',
    'Accessories'
  ]; 
String category = 'All';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: myList.length,
        itemBuilder: (context, index) {
        return Consumer<MyProvider>(builder: (BuildContext context, value, Widget? child) { 
          return InkWell(
          onTap: () {
            category = myList[index];
            value.getCategory(category);

          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: value.category == myList[index]? AppColors.mainColor: null,
              border: Border.all(width: 2, color: AppColors.mainColor),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: Text(myList[index], style: TextStyle(color: value.category==myList[index]? Colors.white: Colors.black, fontSize: 16),),),
                  ),
          ),
        );
         },);
      },),
    );
  }
}