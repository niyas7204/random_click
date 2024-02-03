import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randomclick/buisinesslogic/bloc/random_bloc.dart';
import 'package:randomclick/enums.dart';
import 'package:tuple/tuple.dart';

class ClickResult extends StatelessWidget {
  final Size size;

  const ClickResult({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RandomBloc, RandomState>(
      builder: (context, state) {
        return Container(
          height: size.height * .2,
          decoration: BoxDecoration(
              border: Border.all(
                color: state.result == Result.success
                    ? Color(int.parse("0xFF4A8E4A"))
                    : Color(int.parse("0xFFCFA13F")),
              ),
              color: state.result == Result.success
                  ? Color(int.parse("0xFF57A456"))
                  : Color(int.parse("0xFFF5BF4B")),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  state.message!,
                  style: TextStyle(
                      fontSize: size.height * .03,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: state.result == Result.success
                    ? Color(int.parse("0xFF4A8E4A"))
                    : Color(int.parse("0xFFCFA13F")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Score : ${state.numberOfSuccess}/${state.numberOfAttempt}",
                  style: TextStyle(
                      fontSize: size.height * .027,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
