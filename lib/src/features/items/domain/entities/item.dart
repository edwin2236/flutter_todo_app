import 'package:equatable/equatable.dart';

class Item extends Equatable {
  final String? id;
  final String name;
  final bool done;

  const Item({this.id, required this.name, this.done = false});

  @override
  List<Object?> get props => [id, name, done];
}
