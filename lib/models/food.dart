part of 'models.dart';

enum FoodType { new_food, popular, recommended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food({
    this.id,
    this.picturePath,
    this.name,
    this.description,
    this.ingredients,
    this.price,
    this.rate,
    this.types = const [],
  });

  factory Food.fromJson(Map<String, dynamic> data) => Food(
      id: data['id'],
      picturePath: data['picturePath'],
      name: data['name'],
      description: data['description'],
      ingredients: data['ingredients'],
      price: data['price'],
      rate: (data['rate'] as num).toDouble(),
      types: data['types'].toString().split(',').map((e) {
        switch (e) {
          case 'recommended':
            return FoodType.recommended;
            break;
          case 'popular':
            return FoodType.popular;
          default:
            return FoodType.new_food;
        }
      }).toList());

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3o9RY6AF8Z59IuRa5qVJUonapTbs9UEoWKQ&usqp=CAU',
      name: 'Sate Sayur Sultan',
      description: 'Sate sayur sultan adalah menu sate vegan paling terkenal di bandung. Sate ini dibuat dari berbagai macam bahan berkualitas.',
      ingredients: 'Bawang merah, Paprika, Bawang bombay, Timun',
      price: 150000,
      rate: 4.2,
      types: [FoodType.new_food, FoodType.recommended, FoodType.popular]),
  Food(
      id: 2,
      picturePath:
          'https://www.rukita.co/stories/wp-content/uploads/2020/02/byurger.jpg',
      name: 'Burger Sapi',
      description:
          'Burger sapi adalah menu burger vegan paling terkenal di Padang. Burger ini dibuat dari berbagai macam bahan berkualitas.',
      ingredients: 'Bawang merah, Paprika, Bawang bombay, Timun',
      price: 150000,
      rate: 3.5),
  Food(
      id: 3,
      picturePath:
          'https://kbu-cdn.com/dk/wp-content/uploads/spaghetti-poll-pedas.jpg',
      name: 'Spaghetti Poll Pedas',
      description:
          'Spaghetti Poll Pedas adalah menu paling terkenal di Batusangkar. Makanan ini dibuat dari berbagai macam bahan berkualitas.',
      ingredients: 'Bawang merah, Paprika, Bawang bombay, Timun',
      price: 150000,
      rate: 4.2,
      types: [FoodType.new_food]),
  Food(
      id: 4,
      picturePath:
          'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2020/06/11/3650390209.jpg',
      name: 'Pizza Kaki Lima',
      description: 'Pizza adalah menu sate vegan paling terkenal di padang. Pizza ini dibuat dari berbagai macam bahan berkualitas.',
      ingredients: 'Bawang merah, Paprika, Bawang bombay, Timun',
      price: 150000,
      rate: 4.2,
      types: [FoodType.recommended]),
  Food(
      id: 5,
      picturePath:
          'https://kbu-cdn.com/dk/wp-content/uploads/martabak-8-rasa.jpg',
      name: 'Martabak Mantan',
      description:
          'Martabak Rasa Mantan adalah menu sate vegan paling terkenal di bandung. Martabak Rasa Mantan ini dibuat dari berbagai macam bahan berkualitas.',
      ingredients: 'Bawang merah, Paprika, Bawang bombay, Timun',
      price: 150000,
      rate: 4.2),
];
