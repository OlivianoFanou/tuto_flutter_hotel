// hotel_model.dart
class Hotel {
  final String title;
  final String place;
  final int distance;
  final int review;
  final String picture;
  final int price;

  Hotel({
    required this.title,
    required this.place,
    required this.distance,
    required this.review,
    required this.picture,
    required this.price,
  });
}

final List<Hotel> hotelList = [
  Hotel(
    title: "Grand Roy Hotel",
    place: "wembley, London",
    distance: 2,
    review: 36,
    picture: "assets/images/hotel_1.png",
    price: 180,
  ),
  Hotel(
    title: "Queen Hotel",
    place: "wembley, London",
    distance: 3,
    review: 13,
    picture: "assets/images/hotel_2.png",
    price: 220,
  ),
  Hotel(
    title: "Grand Mal Hotel",
    place: "wembley, London",
    distance: 6,
    review: 88,
    picture: "assets/images/hotel_3.png",
    price: 400,
  ),
  Hotel(
    title: "Hilton",
    place: "wembley, London",
    distance: 11,
    review: 31,
    picture: "assets/images/hotel_1.png",
    price: 520,
  ),
  Hotel(
    title: "Hilton",
    place: "wembley, London",
    distance: 11,
    review: 31,
    picture: "assets/images/hotel_1.png",
    price: 520,
  ),
  Hotel(
    title: "Hilton",
    place: "wembley, London",
    distance: 11,
    review: 31,
    picture: "assets/images/hotel_1.png",
    price: 520,
  ),
  Hotel(
    title: "Hilton",
    place: "wembley, London",
    distance: 11,
    review: 31,
    picture: "assets/images/hotel_1.png",
    price: 520,
  ),
  Hotel(
    title: "Hilton",
    place: "wembley, London",
    distance: 11,
    review: 31,
    picture: "assets/images/hotel_1.png",
    price: 520,
  ),
];
