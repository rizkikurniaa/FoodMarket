part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food({
    this.id,
    this.picturePath,
    this.name,
    this.description,
    this.ingredients,
    this.price,
    this.rate,
  });
}

Food mockFood = Food(
    id: 1,
    picturePath:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3o9RY6AF8Z59IuRa5qVJUonapTbs9UEoWKQ&usqp=CAU',
    name: 'Sate Sayur Sultan',
    description:
        'Sate sayur sultan adalah menu sate vegan paling terkenal di bandung. Sate ini dibuat dari berbagai macam bahan berkualitas.',
    ingredients: 'Bawang merah, Paprika, Bawang bombay, Timun',
    price: 150000,
    rate: 4.2);
