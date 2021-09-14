

class Clothes {
  Clothes(this.title, this.subTitle, this.price, this.imageUrl,this.detailUrl);
  String title;
  String subTitle;
  String price;
  String imageUrl;
  List<String> detailUrl;


  static List<Clothes> generateClothes() {
    return [
    Clothes(
        'Gucci oversize',
        'Hoodie',
        '\$79.99',
        'assets/images/arrival1.png',
        [
          'assets/images/arrival1.png',
          'assets/images/detail2.png',
        ]),
    Clothes(
    'Man Coats',
    'Rain Jacket',
    '\$39.99',
    'assets/images/arrival2.png',
    ['assets/images/arrival2.png', 'assets/images/detail3.png']),
      Clothes(
          'Gucci oversize',
          'Hoodie',
          '\$79.99',
          'assets/images/arrival1.png',
          [
            'assets/images/arrival1.png',
            'assets/images/detail2.png',
          ]),
      Clothes(
          'Gucci oversize',
          'Hoodie',
          '\$79.99',
          'assets/images/arrival1.png',
          [
            'assets/images/arrival1.png',
            'assets/images/detail2.png',
          ]),
      Clothes(
          'Gucci oversize',
          'Hoodie',
          '\$79.99',
          'assets/images/arrival1.png',
          [
            'assets/images/arrival1.png',
            'assets/images/detail2.png',
          ]),
    ];
  }
}