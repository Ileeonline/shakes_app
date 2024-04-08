// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shakes_here/models/recipe.dart';
import 'package:shakes_here/pages/details_page.dart';
import 'package:shakes_here/widgets/recipe_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

void navigateToDetailsPage(int index){
  Navigator.push(context,
   MaterialPageRoute(builder: (e)=>DetailsPage(recipe: recipiesList[index],),),);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  child: Image.asset(
                    'assets/images/blur.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: 70,
                child: Text(
                  textAlign: TextAlign.center,
                  'What do you want\nto eat today?',
                  style: GoogleFonts.poppins(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      height: 1.2),
                ),
              ),
              Positioned(
                top: 235,
                left: 40,
                child: SizedBox(
                  width: 350,
                  child: TextField(
                    cursorColor: Colors.white,
                    autofocus: false,
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      fillColor:Color(0xffF4526A),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color(0xffF4526A))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color(0xffF4526A))
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w900),
                      suffixIcon: Icon(CupertinoIcons.search, color: Colors.white),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                Text(
                  "Popular Recipies",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: Color(0xffF4526A)),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: recipiesList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: .96),
                  itemBuilder: (context, index) {
                    return RecipeTile(
                      onTap:()=> navigateToDetailsPage(index),
                      recipe: recipiesList[index]);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
