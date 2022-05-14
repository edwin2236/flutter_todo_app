import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/item.dart';
import '../repositories/i_item_repository.dart';

class CreateItemUsecase implements UseCase<Item, Params> {
  final IItemRepository _repository;

  CreateItemUsecase(this._repository);

  @override
  Future<Either<Failure, Item>> call(Params params) async {
    return await _repository.createItem(params.item);
  }
}

class Params extends Equatable {
  final Item item;

  const Params({required this.item});

  @override
  List<Object> get props => [item];
}
