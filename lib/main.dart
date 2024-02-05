import 'package:flutter/material.dart';
import 'package:randomclick/buisinesslogic/bloc/random_bloc.dart';
import 'package:randomclick/data/implimentation/database_implimentation.dart';
import 'package:randomclick/data/implimentation/ramdom_implimentation.dart';
import 'package:randomclick/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await DatabaseImplimentation.instance.intDb;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                RandomBloc(RandomService(), DatabaseImplimentation.instance),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: genarateRoute,
          initialRoute: "/",
        ));
  }
}
