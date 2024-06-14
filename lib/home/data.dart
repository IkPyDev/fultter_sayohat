class Data {
  String name;
  String desc;
  String rating;
  String location;
  String image;

  Data(this.name, this.desc, this.rating, this.location, this.image);
}

class Const {
  static List<Data> list = [
    Data(
      "Barcelona",
      "Barcelona is known for its art and architecture. The fantastical Sagrada Família church and other modernist landmarks designed by Antoni Gaudí dot the city.",
      "5.0",
      "Spain",
      "assets/barcelona_city.jpg",
    ),
    Data(
      "Dubai",
      "Dubai is famous for its modern architecture, luxury shopping, and vibrant nightlife. The Burj Khalifa, an 830m tall tower, dominates the skyscraper-filled skyline.",
      "4.7",
      "UAE",
      "assets/dubai.jpg",
    ),
    Data(
      "Moscow",
      "Moscow, on the Moskva River in western Russia, is the nation's cosmopolitan capital. It's known for its iconic landmarks such as the Kremlin and Red Square.",
      "4.8",
      "Russia",
      "assets/moskov_city.jpeg",
    ),
    Data(
      "New York",
      "New York City is an architectural marvel with plenty of historic monuments, magnificent buildings and countless dazzling skyscrapers.",
      "4.7",
      "USA",
      "assets/new_york_city.jpg",
    ),
    Data(
      "Niagara",
      "Niagara Falls, straddling the border between the USA and Canada, is one of the most famous natural attractions in the world, drawing millions of visitors each year.",
      "4.9",
      "Canada/USA",
      "assets/niagara.jpg",
    ),
    Data(
      "Tashkent",
      "Tashkent, the capital city of Uzbekistan, is known for its many museums and its mix of modern and Soviet-era architecture.",
      "4.5",
      "Uzbekistan",
      "assets/tashkent_city.jpg",
    ),
    Data(
      "Tokyo",
      "Tokyo, Japan’s bustling capital, mixes the ultramodern and the traditional, from neon-lit skyscrapers to historic temples.",
      "4.4",
      "Japan",
      "assets/tokio_city.jpg",
    ),
    Data(
      "Warsaw",
      "Warsaw, Poland’s capital, is known for its varied architecture, which reflects the city’s long, turbulent history.",
      "4.6",
      "Poland",
      "assets/warshava_city.jpg",
    ),
  ];
}
