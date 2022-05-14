import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/item.dart';
import '../repositories/i_item_repository.dart';

class GetItemsUseCase implements UseCase<List<Item>, NoParams> {
  final IItemRepository _repository;

  GetItemsUseCase(this._repository);

  @override
  Future<Either<Failure, List<Item>>> call(NoParams params) async {
    return await _repository.getItems();
  }
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
