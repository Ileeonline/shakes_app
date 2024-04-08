// ignore_for_file: sized_box_for_whitespace, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shakes_here/models/recipe.dart';
import 'package:shakes_here/widgets/my_button.dart';

class DetailsPage extends StatefulWidget {
  final Recipe recipe;
  const DetailsPage({super.key, required this.recipe});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isFavourite = false;

  void favouriteFuntion() {
    setState(() {
      isFavourite = !isFavourite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                  width: double.infinity,
                  height: 400,
                  child: Image.asset(
                    widget.recipe.imgPath,
                    fit: BoxFit.cover,
                  )),
              const Positioned(
                top: 60,
                left: 20,
                child: BackButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xffF4526A)),
                    iconColor: MaterialStatePropertyAll(
                      Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 60,
                right: 20,
                child: GestureDetector(
                  onTap:favouriteFuntion,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: isFavourite ? Colors.red[400] : Colors.grey[300],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.recipe.name,
                        style:  GoogleFonts.poppins(
                            fontSize: 26,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                      Text(
                        widget.recipe.type,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffF4526A),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ingredients(8)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "1 Serving",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                                color: Color(0xffF4526A)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: Image.asset('assets/images/Rectangle 15.png'),
                        title: const Text(
                          'Chocolate Chips',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                        trailing: const Text(
                          '1 Cup',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffADA9AA)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ListTile(
                        leading: Image.asset('assets/images/Rectangle 16.png'),
                        title: const Text(
                          'Milk',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                        trailing: const Text(
                          '1/1 Cup',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffADA9AA)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ListTile(
                        leading: Image.asset('assets/images/Rectangle 17.png'),
                        title: const Text(
                          'Unsalted butter',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                        trailing: const Text(
                          '1 Cup',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffADA9AA)),
                        ),
                      ),
                    ],
                  ),
                  MyButton(
                    onTap: () {},
                    btnName: "Let's Start",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
