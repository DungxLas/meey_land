import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meey_land/cubit/sale_new_cubit.dart';
import 'package:meey_land/sale/edit/auth/sale_auth.dart';
import 'package:meey_land/sale/edit/create_post.dart';

import 'sale/salepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routerConfig: GoRouter(routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => BlocProvider(
            create: (context) => SaleNewCubit(),
            child: const SalePage(
              title: "Trang cá nhân",
            ),
          ),
        ),
        GoRoute(
          path: '/sale/edit/auth/sale_auth',
          builder: (context, state) => const SaleAuth(),
        ),
        GoRoute(
          path: '/sale/edit/create_post',
          builder: (context, state) => const CreatePost(),
        ),
      ]),
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
          textTheme: const TextTheme()),
    );
  }
}
