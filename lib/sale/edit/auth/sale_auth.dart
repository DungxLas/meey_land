import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SaleAuth extends StatelessWidget {
  const SaleAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sale Auth')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: const Text('Go to SalePage'),
        ),
      ),
    );
  }
}
