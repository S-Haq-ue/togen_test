import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:togen_test/data.dart';

class FlashCard2 extends StatelessWidget {
  const FlashCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: const InputDecoration(
                  // label: const Text("Search"),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  fillColor: Color.fromARGB(255, 234, 232, 232),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide.none),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cardList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Positioned(
                            child: Container(
                              width: 330,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 255, 252, 240),
                                boxShadow: const [
                                  BoxShadow(blurRadius: 0.0, offset: Offset(10, 12),color: Color.fromARGB(255, 252, 244, 211)),
                                  BoxShadow(blurRadius: 0.0, color: Colors.white, offset: Offset(-20, 20)),
                                  BoxShadow(blurRadius: 0.0, offset: Offset(10, 12),color: Color.fromARGB(255, 252, 244, 211)),
                                  BoxShadow(blurRadius: 0.0, offset: Offset(10, 12),color: Color.fromARGB(255, 252, 244, 211)),
                                  BoxShadow(blurRadius: 0, color: Colors.white, offset: Offset(20, 0)),
                                  BoxShadow(blurRadius: 0.0, color: Colors.white, offset: Offset(-5, -5)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(30),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          cardList[index].title,
                                          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                                        ),
                                        const Icon(Bootstrap.three_dots_vertical)
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      cardList[index].subtitle,
                                      style: GoogleFonts.poppins(fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        ElevatedButton.icon(
                                          onPressed: () {},
                                          label: const Text("Add Card"),
                                          icon: const Icon(Icons.add),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 164, 13, 238),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 50,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 255, 252, 240),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5),
                                                side: const BorderSide(
                                                  color: Color.fromARGB(255, 164, 13, 238),
                                                )),
                                          ),
                                          child: const Text(
                                            "Practice",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 255, 252, 240),
                              border: Border.all(color: const Color.fromARGB(255, 252, 244, 211))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(30),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        cardList[index].title,
                                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                                      ),
                                      const Icon(Bootstrap.three_dots_vertical)
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    cardList[index].subtitle,
                                    style: GoogleFonts.poppins(fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ElevatedButton.icon(
                                        onPressed: () {},
                                        label: const Text("Add Card"),
                                        icon: const Icon(Icons.add),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(255, 164, 13, 238),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 50,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(255, 255, 252, 240),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5),
                                              side: const BorderSide(
                                                color: Color.fromARGB(255, 164, 13, 238),
                                              )),
                                        ),
                                        child: const Text(
                                          "Practice",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(AntDesign.left_circle_outline, color: Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(AntDesign.plus_outline, color: Colors.black),
                  ),
                ],
              ),
              const Center(
                  child: Text(
                "Flash Card",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
