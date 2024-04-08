// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:shakes_here/models/recipe.dart';

class RecipeTile extends StatelessWidget {
  void Function()? onTap;
  final Recipe recipe;
   RecipeTile({super.key, required this.recipe,required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Image.asset(
                  recipe.imgPath,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffF4526A),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(12)),
                  ),
                  child: Text(
                    '★${recipe.rating}',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recipe.name,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
              ),
              Text(
                recipe.type,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
