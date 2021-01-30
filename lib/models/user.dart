part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User({
    this.id,
    this.name,
    this.email,
    this.address,
    this.houseNumber,
    this.phoneNumber,
    this.city,
    this.picturePath,
  });

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Kim Dahyun',
    address: 'Jalan Mahmud Yunus',
    city: 'Padang',
    houseNumber: '22',
    phoneNumber: '081234567890',
    email: 'dahyun@twice.com',
    picturePath:
        'https://kepoper.com/wp-content/uploads/2019/12/dahyun-758x433.jpg');
