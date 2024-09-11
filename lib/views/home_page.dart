import 'package:ecommerce_app/constants/app_colors.dart';
import 'package:ecommerce_app/widgets/banner_widget.dart';
import 'package:ecommerce_app/widgets/categories_list.dart';
import 'package:ecommerce_app/widgets/search_widget.dart';
import 'package:ecommerce_app/widgets/show_all.dart';
import 'package:ecommerce_app/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: SingleChildScrollView(
          child: Column(children: [
            const TopBar(),
            const SizedBox(height: 20,),
            const SearchWidget(),
            const SizedBox(height: 20,),
            const BannerWidget(),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Categories', style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),),
              TextButton(onPressed: () {
                
              }, child: Text('View All', style: GoogleFonts.poppins(color: AppColors.mainColor, fontWeight: FontWeight.bold),)),
          
              
            ],),
            const SizedBox(height: 20,),
            const CategoriesList(),
            const SizedBox(height: 0,),
            ShowAll()
          
          ],),
        ),
      ),
    );
  }
}