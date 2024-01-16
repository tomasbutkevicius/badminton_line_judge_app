import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_rehearsals_event.dart';
part 'search_rehearsals_state.dart';

class SearchRehearsalsBloc extends Bloc<SearchRehearsalsEvent, SearchRehearsalsState> {
  SearchRehearsalsBloc() : super(SearchRehearsalsInitial()) {
    on<SearchRehearsalsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
