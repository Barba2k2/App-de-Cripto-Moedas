import 'package:crypto_app/repositories/moeda_repository.dart';
import 'package:flutter/material.dart';

class MoedasPage extends StatelessWidget {
  const MoedasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final table = MoedaRepository.table;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Cripto Currency'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int moeda) {
          return ListTile(
            leading: Image.asset(table[moeda].icone),
            title: Text(table[moeda].nome),
            trailing: Text(table[moeda].preco.toString()),
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: table.length,
      ),
    );
  }
}
