class Space {
  int id;
  String name;
  int price;
  int rating;
  String city;
  String country;
  String imageUrl;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberKitchen;
  int numberBedroom;
  int numberCupboard;

  Space(
      {this.id,
      this.name,
      this.price,
      this.rating,
      this.city,
      this.country,
      this.imageUrl,
      this.address,
      this.phone,
      this.mapUrl,
      this.photos,
      this.numberKitchen,
      this.numberBedroom,
      this.numberCupboard});

  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    rating = json['rating'];
    city = json['city'];
    country = json['country'];
    imageUrl = json['image_url'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['map_url'];
    photos = json['photos'];
    numberKitchen = json['number_of_kitchens'];
    numberBedroom = json['number_of_bedrooms'];
    numberCupboard = json['number_of_cupboards'];
  }
}
