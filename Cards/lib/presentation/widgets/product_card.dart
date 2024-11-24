import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Imagen del producto con etiqueta
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                child: Image.network(
                  'https://metroio.vtexassets.com/arquivos/ids/536578-800-auto?v=638569533779770000&width=800&height=auto&aspect=true', // Imagen de prueba
                  // Limita al ancho disponible
                  fit: BoxFit.cover, // Ajustar imagen al contenedor
                ),
              ),
              Positioned(
                top: 8.0,
                left: 8.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text(
                    'Oferta',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Información del producto
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Título del producto
                const Text(
                  'Arroz Superior 1kg',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                // Descripción breve
                const Text(
                  'El mejor arroz para tus comidas. Calidad garantizada.',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8.0),
                // Precios
                const Row(
                  children: [
                    Text(
                      '\$15.00', // Precio actual
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      '\$20.00', // Precio tachado
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12.0),
                // Botón
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        print('Añadido al carrito');
                      },
                      icon: const Icon(Icons.add_shopping_cart),
                      label: const Text('Añadir'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        minimumSize: const Size(100, 40),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
