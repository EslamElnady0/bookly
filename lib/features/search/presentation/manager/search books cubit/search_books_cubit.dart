import 'package:bloc/bloc.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/models/book/book_model.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;

  fetchSearchBooks(String query) async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchSearchBooks(query);
    result.fold((failure) {
      emit(SearchBooksFailure(failure.errMessage));
    }, (result) {
      emit(SearchBooksSuccess(result));
    });
  }
}
