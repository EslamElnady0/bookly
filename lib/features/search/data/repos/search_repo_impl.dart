import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/models/book/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/util/api_service.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;
  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      String query) async {
    try {
      var data = await apiService.get(
          endPoint: "volumes?q=$query&Filtering=free-ebooks&Sorting=newest");
      List<BookModel> books = [];
      for (var book in data["items"]) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(errMessage: e.toString()));
      }
    }
  }
}
