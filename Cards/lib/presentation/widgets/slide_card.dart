import 'package:flutter/material.dart';

class SlideCard extends StatelessWidget {
  const SlideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0x3343A047), // Verde translúcido
              Color(0x3366BB6A), // Verde translúcido claro
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            const Icon(Icons.add_shopping_cart, color: Colors.green, size: 28),
            const SizedBox(width: 12),
            const Text(
              'Añadir al carrito',
              style: TextStyle(
                color: Colors.green,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
      secondaryBackground: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0x33D32F2F), // Rojo translúcido
              Color(0x33EF5350), // Rojo translúcido claro
            ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'Eliminar de favoritos',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(width: 12),
            const Icon(Icons.delete, color: Colors.red, size: 28),
          ],
        ),
      ),
      onDismissed: (direction) {
        if (direction == DismissDirection.startToEnd) {
          // Acción al deslizar hacia la derecha
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Producto añadido al carrito'),
              backgroundColor: Color(0xFF43A047),
            ),
          );
        } else if (direction == DismissDirection.endToStart) {
          // Acción al deslizar hacia la izquierda
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Producto eliminado de favoritos'),
              backgroundColor: Color(0xFFD32F2F),
            ),
          );
        }
      },
      child: Card(
        elevation: 6.0,
        shadowColor: Colors.grey.withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: ListTile(
          title: const Text(
            'Producto Premium',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          subtitle: const Text(
            'Descripción detallada del producto.',
            style: TextStyle(color: Colors.grey, fontSize: 14.0),
          ),
          trailing: const Text(
            '\$45.99',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
