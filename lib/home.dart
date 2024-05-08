import 'package:flutter/material.dart';
import 'package:flutter_booking/main.dart';
import 'package:flutter_booking/models/hotel_model.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCustomAppBarr(),
      body: HotelSection(),
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

// hotel_section.dart
class HotelSection extends StatelessWidget {
  final List<Hotel> hotels = hotelList;

  HotelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(
                height: 230,
                child: Column(
                  children: [
                    SearchSection(),
                    SizedBox(height: 25),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "550 hôtels trouvés",
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Filtres",
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.filter_list,
                          size: 30,
                          color: dGreen,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return HotelCard(hotel: hotels[index]);
            },
            childCount: hotels.length,
          ),
        ),
      ],
    );
  }
}

//** HOTEL CARD WIDGET */
///********************** */
class HotelCard extends StatelessWidget {
  final Hotel hotel;

  const HotelCard({required this.hotel, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 2,
              offset: const Offset(1, 1),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage(hotel.picture),
                  fit: BoxFit.cover,
                )),
            child: Stack(
              children: [
                Positioned(
                    top: 1,
                    right: -20,
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.white,
                      shape: const CircleBorder(),
                      child: const Icon(
                        Icons.favorite_border_outlined,
                        color: dGreen,
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            title: Text(
              hotel.title,
              style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '${hotel.place} - ${hotel.distance} km',
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            trailing: Column(
              children: [
                Text(
                  '${hotel.review} avis',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '\$${hotel.price}/nuit',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
