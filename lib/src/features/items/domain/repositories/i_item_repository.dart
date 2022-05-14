import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/item.dart';

abstract class IItemRepository {
  Future<Either<Failure, List<Item>>> getItems();
  Future<Either<Failure, Item>> createItem(Item item);
  Future<Either<Failure, bool>> deleteItem(String id);
}
