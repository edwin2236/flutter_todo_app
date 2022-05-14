import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_todo_app/src/features/items/domain/entities/list_item.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/i_list_item_repository.dart';

class GetListItemsUsecase implements UseCase<List<ListItem>, NoParams> {
  final IListItemRepository _repository;

  GetListItemsUsecase(this._repository);

  @override
  Future<Either<Failure, List<ListItem>>> call(NoParams params) async {
    return await _repository.getListItems();
  }
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
