import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<UsernameChanged>((event, emit) {
      emit(state.copyWith(username: event.username));
    });
    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
    on<LoginReset>((event, emit) {
      emit(const LoginState());
    });
    on<LoginSubmitted>((event, emit) {
      // In a real app you would add authentication logic here
      emit(state); // no change
    });
  }
}
