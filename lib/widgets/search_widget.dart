import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(color: const Color.fromARGB(255, 216, 214, 214),
      borderRadius: BorderRadius.circular(15)
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          hintText: "Search",
          suffixIcon: Icon(Icons.search),
          border: OutlineInputBorder(borderSide: BorderSide.none)
        ),
      ),);
  }
}