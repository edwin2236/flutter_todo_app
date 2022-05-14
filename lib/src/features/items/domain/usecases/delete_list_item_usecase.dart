import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_todo_app/src/core/errors/failures.dart';
import 'package:flutter_todo_app/src/core/usecases/usecase.dart';

import '../repositories/i_list_item_repository.dart';

class DeleteListItemUseCase implements UseCase<bool, Params> {
  final IListItemRepository _repository;

  DeleteListItemUseCase(this._repository);

  @override
  Future<Either<Failure, bool>> call(Params params) async {
    return await _repository.deleteListItem(params.id);
  }
}

class Params extends Equatable {
  final String id;

  const Params({required this.id});

  @override
  List<Object> get props => [];
}
