import 'package:flutter/material.dart';
import 'package:navigation/pages/secound_route.dart';

void main() {
  runApp(const FirstRoute());
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rotas Nomeadas',
      initialRoute: '/',
      routes: {
        '/': (context) => const NewWidgetRouter(),
        '/second': (context) => const SecondRoute(),
      },
    );
  }
}

class NewWidgetRouter extends StatelessWidget {
  const NewWidgetRouter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Primeira Rota'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: const Text('Ir para a Segunda Rota'),
          ),
        ));
  }
}
