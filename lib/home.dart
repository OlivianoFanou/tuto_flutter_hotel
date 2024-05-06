import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_booking/main.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyCustomAppBarr(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SEARCH BAR
            SearchSection(),
            HotelSection(),
            // CATEGORIES

            // GRID VIEW
            // BUTTONS
          ],
        ),
      ),
    );
  }
}

//***** APP BAR PERSONNALISE **** //

class MyCustomAppBarr extends StatelessWidget implements PreferredSizeWidget {
  const MyCustomAppBarr({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 2.0,
      shadowColor: const Color.fromARGB(255, 255, 255, 255),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back),
      ),
      centerTitle: true,
      title: Text(
        'Explore',
        style: GoogleFonts.nunito(
            color: Colors.black, fontSize: 22, fontWeight: FontWeight.w800),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_outline_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.place),
        ),
      ],
    );
  }
}

////////////////////////////////////////////////////////////////////////////////

//****** SEARCH SECTION ****//
class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 23, bottom: 10, left: 10, right: 10),
      height: 185,
      color: Colors.grey[200],
      child: Column(
        children: [
          //**Textfild and Icon button */
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 4,
                          offset: const Offset(0, 3),
                        )
                      ]),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'London',
                      contentPadding:
                          EdgeInsets.only(left: 20, top: 13, bottom: 13),
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: dGreen,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 4,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(25)),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      ))),
            ],
          ),
          const SizedBox(height: 10),
          //**Péride de recherche */
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choose date",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "12 Dec - 22 Dec",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 1.5,
                color: const Color.fromARGB(255, 218, 217, 217),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nuber of Rooms",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "1 Room - 2 Adults",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

//****** HOTEL SECTION ****//
class HotelSection extends StatelessWidget {
  const HotelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            color: Colors.red,
            child: const Row(
              children: [
                Text("550 hotels founds"),
                Row(
                  children: [
                    Text("Filters"),
                    Icon(Icons.filter_list),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 1000,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
