import 'package:adstacks/persentation/bloc/bloc/dashboard_bloc.dart';
import 'package:adstacks/persentation/pages/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'persentation/bloc/bloc/dashboard_event.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardBloc()
        ..add(LoadDashboardData()), // Loading the data on start
      child: MaterialApp(
        title: 'AdStacks Dashboard',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: const DashboardPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
