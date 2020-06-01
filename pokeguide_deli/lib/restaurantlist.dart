class Restaurant {
  final String name;
  final String type;
  final String district;
  final String image;

  Restaurant({
    this.name,
    this.type,
    this.district,
    this.image}
      );

  factory Restaurant.fromJson(Map<String,dynamic>json){
    return new Restaurant(
        name: json["merchant_name"]["en"],
        type: json["category"]["en"],
        district: json["merchant_district"]["en"],
        image: json["merchant_images"]["img_url"]
    );
  }
}
