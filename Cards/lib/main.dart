import 'package:cards/presentation/widgets/basic_card.dart';
import 'package:cards/presentation/widgets/botton_card.dart';
import 'package:cards/presentation/widgets/expandable_card.dart';
import 'package:cards/presentation/widgets/grid_cards.dart';
import 'package:cards/presentation/widgets/image_card.dart';
import 'package:cards/presentation/widgets/list_card.dart';
import 'package:cards/presentation/widgets/product_card.dart';
import 'package:cards/presentation/widgets/slide_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todos los Cards',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Todos los Tipos de Cards'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            // Tarjeta Básica
            const BasicCard(),

            // Tarjeta con Imagen
            const ImageCard(),

            // Tarjeta con ListTile
            const ListCard(),

            // Tarjeta con Botones
            const BottonCard(),

            // Tarjeta Expandible
            ExpandableCard(),

            // Tarjetas en Grid
            const Text(
              'Tarjetas en Grid:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            GridCards(),

            // Tarjeta con Fondo Personalizado
            const ProductCard(),

            // Tarjeta Interactiva (Deslizable)
            const SlideCard(),
          ],
        ),
      ),
    );
  }
}
