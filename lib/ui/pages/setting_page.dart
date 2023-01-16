import 'package:bwa_airplane/cubit/auth_cubit.dart';
import 'package:bwa_airplane/cubit/page_cubit.dart';
import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
              backgroundColor: kRedColor,
            ),
          );
        } else if (state is AuthInitial) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              duration: Duration(seconds: 2),
              content: Text('Berhasil Logout'),
              backgroundColor: Colors.red,
            ),
          );
          Navigator.pushNamedAndRemoveUntil(
              context, '/sign-in', (route) => false);
          context.read<PageCubit>().setPage(0);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Center(
          child: CustomButton(
            title: 'Sign Out',
            onPressed: () {
              context.read<AuthCubit>().signOut();
            },
            width: 220,
          ),
        );
      },
    );
  }
}
