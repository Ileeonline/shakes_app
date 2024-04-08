// ignore_for_file: unused_element

class Recipe {
  String imgPath;
  String rating;
  String name;
  String type;

  Recipe({required this.imgPath,required this.name,required this.rating,required this.type,});

  get _imgpath=>imgPath;
  get _rating=>rating;
  get _name=>name;
  get _type=>type;
}

List<Recipe> recipiesList=[
  Recipe(imgPath: 'assets/images/Rectangle6.png', name: 'Banana Cake', rating: '4.6', type: 'Cake'),
  Recipe(imgPath: 'assets/images/Rectangle8.png', name: 'Ice Cream on cookies', rating: '4.9', type: 'Desert'),
  Recipe(imgPath: 'assets/images/Rectangle12.png', name: 'Chocolate Milkshake', rating: '4.3', type: 'Drink'),
  Recipe(imgPath: 'assets/images/Rectangle10.png', name: 'Avacado Milkshake', rating: '5.0', type: 'Drink'),
  Recipe(imgPath: 'assets/images/Rectangle6.png', name: 'Banana Cake', rating: '4.6', type: 'Cake'),
  Recipe(imgPath: 'assets/images/Rectangle8.png', name: 'Ice Cream on cookies', rating: '4.9', type: 'Desert'),
  Recipe(imgPath: 'assets/images/Rectangle12.png', name: 'Chocolate Milkshake', rating: '4.3', type: 'Drink'),
  Recipe(imgPath: 'assets/images/Rectangle10.png', name: 'Avacado Milkshake', rating: '5.0', type: 'Drink'),
];