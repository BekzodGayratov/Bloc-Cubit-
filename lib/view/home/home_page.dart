import 'package:blocapi/cubit/home/home_cubit.dart';
import 'package:blocapi/cubit/home/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) => _scaffold(context, state));
  }

  _scaffold(BuildContext context, HomeState state) {
    return Scaffold(
      appBar: AppBar(title: const Text("Work with Cubit & API")),
      body: Builder(builder: (context) {
        if (state is HomeLoadingState) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (state is HomeErrorState) {
          return Center(
            child: Text(state.error),
          );
        } else if (state is HomeCompleteState) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                title: Text(
                  state.data[index].name.toString(),
                ),
              ));
            },
            itemCount: state.data.length,
          );
        } else {
          return const SizedBox();
        }
      }),
    );
  }
}
