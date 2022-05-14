import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_todo_app/src/core/errors/failures.dart';

import '../../../../core/usecases/usecase.dart';
import '../repositories/i_item_repository.dart';

class DeleteItemUseCase implements UseCase<bool, Params> {
  final IItemRepository repository;

  DeleteItemUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(Params params) async {
    return await repository.deleteItem(params.id);
  }
}

class Params extends Equatable {
  final String id;

  const Params({required this.id});

  @override
  List<Object> get props => [id];
}
