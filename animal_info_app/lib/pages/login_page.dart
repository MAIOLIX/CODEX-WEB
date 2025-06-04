import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return Column(
                children: [
                  TextField(
                    onChanged: (value) => context
                        .read<LoginBloc>()
                        .add(UsernameChanged(value)),
                    decoration: const InputDecoration(labelText: 'Username'),
                  ),
                  TextField(
                    onChanged: (value) => context
                        .read<LoginBloc>()
                        .add(PasswordChanged(value)),
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Password'),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () => context
                            .read<LoginBloc>()
                            .add(LoginSubmitted()),
                        child: const Text('Login'),
                      ),
                      ElevatedButton(
                        onPressed: () => context.read<LoginBloc>().add(LoginReset()),
                        child: const Text('Reset'),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
