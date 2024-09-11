import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text("Discover", style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w500),),
      Container(
        padding: const EdgeInsets.all(10),
        width: 50,
        decoration: BoxDecoration(border: Border.all(width: 0.2), borderRadius: BorderRadius.circular(40)),
        child: Image.asset('assets/images/cart.png'))

    ],);
  }
}