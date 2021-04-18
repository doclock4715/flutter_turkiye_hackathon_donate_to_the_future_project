class Needy {
  String identity;
  String need;
  String image;
  String price;
  Needy({this.identity, this.need, this.image, this.price});

  factory Needy.fromJson(Map<String, dynamic> json) => Needy(
        identity: json['identity'],
        need: json['need'],
        image: json['image'],
        price: json['price'],
      );

  Map<String, dynamic> toJson() => {
        'identity': identity,
        'need': need,
        'image': image,
        'price': price,
      };
}
