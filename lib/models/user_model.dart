import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final String hobby;
  final int balance;

  // ignore: prefer_const_constructors_in_immutables
  UserModel({
    required this.id,
    required this.email,
    this.name = '',
    this.hobby = '',
    this.balance = 0,
  });

  @override
  List<Object?> get props => [id, email, name, hobby, balance];
}
