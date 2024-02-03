import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:randomclick/buisinesslogic/bloc/random_bloc.dart';
import 'package:randomclick/data/data_model/score_model.dart';
import 'package:randomclick/enums.dart';
import 'package:randomclick/presentation/widgets/result_message.dart';
import 'package:tuple/tuple.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder<RandomBloc, RandomState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * .15,
                      width: size.width * .42,
                      padding: EdgeInsets.only(top: size.height * .04),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(int.parse("0xFF849BC3")),
                          ),
                          color: Color(int.parse("0xFFDDE8FA")),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          const Text(
                            'Current Second',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Divider(color: Color(int.parse("0xFFB3B3B3"))),
                          state.currenTime != null
                              ? Text(
                                  '${state.currenTime}',
                                  style: const TextStyle(fontSize: 28),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * .15,
                      width: size.width * .42,
                      padding: EdgeInsets.only(top: size.height * .04),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(int.parse("0xFF9E85AE"))),
                          color: Color(int.parse("0xFFDFD5E6")),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          const Text(
                            'Random Number',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Divider(color: Color(int.parse("0xFFB3B3B3"))),
                          state.randomTime != null
                              ? Text(
                                  '${state.randomTime}',
                                  style: const TextStyle(fontSize: 28),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    )
                  ],
                ),
                state.result != null
                    ? ClickResult(
                        size: size,
                      )
                    : const SizedBox(),
                Stack(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: CircularProgressIndicator(
                              color: Color(int.parse("0xFF65B788")),
                              backgroundColor: Color(int.parse("0xFFDFD5E6")),
                              value: (state.timer - 5).abs() / 5.toDouble(),
                              strokeWidth:
                                  10, // Adjust the stroke width as needed
                            ),
                          ),
                          Center(
                            child: Text(
                              '${state.timer}',
                              style: const TextStyle(fontSize: 28),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<RandomBloc>(context)
                        .add(const RandomEvent.onRandomClick());
                  },
                  child: const Text(
                    'Click',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    var b = await Hive.openBox<ScoreModel>("score");
                    b.clear();
                  },
                  child: const Text(
                    'Click',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
