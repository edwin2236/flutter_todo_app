import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/list_item.dart';

abstract class IListItemRepository {
  Future<Either<Failure, List<ListItem>>> getListItems();
  Future<Either<Failure, ListItem>> createListItem(ListItem listItem);
  Future<Either<Failure, bool>> deleteListItem(String id);
}
