import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_todo_app/src/core/usecases/usecase.dart';
import 'package:flutter_todo_app/src/features/items/domain/entities/list_item.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/i_list_item_repository.dart';

class CreateListItemUsecase implements UseCase<ListItem, Params> {
  final IListItemRepository _repository;

  CreateListItemUsecase(this._repository);

  @override
  Future<Either<Failure, ListItem>> call(Params params) async {
    return await _repository.createListItem(params.listItem);
  }
}

class Params extends Equatable {
  final ListItem listItem;

  const Params({required this.listItem});

  @override
  List<Object> get props => [listItem];
}
