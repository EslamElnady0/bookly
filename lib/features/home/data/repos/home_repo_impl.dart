import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/util/api_service.dart';
import 'package:bookly/features/home/data/models/book/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?q=subject:programming&Filtering=free-ebooks&Sorting=newest");
      List<BookModel> books = [];
      for (var book in data["items"]) {
        books.add(book);
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
