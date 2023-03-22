class item_Products {
  static final products = [
    Items(
      id: 01,
      name: "Redmi Note 10 Pro",
      desp:
          "(Dark Night, 128 GB) features and specifications include 6 GB RAM...",
      prize: 236,
      color: "#ADD8E6",
      imageurl:
          "https://static.toiimg.com/photo/81333900/Xiaomi-Redmi-Note-10-Pro-128GB-8GB-RAM.jpg",
    )
  ];
}

class Items {
  final int id;
  final String name;
  final String desp;
  final num prize;
  final String color;
  final String imageurl;

  Items(
      {required this.id,
      required this.name,
      required this.desp,
      required this.prize,
      required this.color,
      required this.imageurl});
}
