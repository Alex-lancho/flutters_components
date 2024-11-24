import 'package:flutter/material.dart';

class GridCards extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Arroz Premium',
      'price': 15.99,
      'discountPrice': 12.99,
      'image':
          'https://mercatococina.com/cdn/shop/products/arrozpremium_1000x1000.png?v=1617640198',
      'onSale': true,
    },
    {
      'name': 'Aceite Vegetal',
      'price': 25.49,
      'image':
          'https://e7.pngegg.com/pngimages/963/934/png-clipart-soybean-oil-vegetable-oil-cooking-oils-grease-miscellaneous-sunflower-seed.png',
      'onSale': false,
    },
    {
      'name': 'Pasta Integral',
      'price': 12.99,
      'discountPrice': 9.99,
      'image': 'https://www.emporioterramater.cl/emporio/img/new/1205.png',
      'onSale': true,
    },
    {
      'name': 'Café Orgánico',
      'price': 18.75,
      'image':
          'https://w7.pngwing.com/pngs/864/65/png-transparent-jamaican-blue-mountain-coffee-2020-summer-olympics-organic-coffee-coffee-bean-brazilian-coffee-coffee-superfood-organic-farming.png',
      'onSale': false,
    },
  ];

  GridCards({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.75,
      ),
      itemCount: products.length,
      shrinkWrap: true,
      padding: const EdgeInsets.all(8.0),
      itemBuilder: (context, index) {
        final product = products[index];
        final bool isOnSale = product['onSale'] ?? false;

        return Stack(
          clipBehavior: Clip.none,
          children: [
            Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Imagen del producto
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                    child: Image.network(
                      product['image'],
                      fit: BoxFit.contain,
                      height: 100,
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  // Nombre del producto
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Center(
                        child: Text(
                          product['name'],
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )),
                  const SizedBox(height: 4.0),
                  // Precio y descuento en línea
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (isOnSale)
                          Text(
                            '\$${product['price'].toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        if (isOnSale) const SizedBox(width: 8.0),
                        Text(
                          isOnSale
                              ? '\$${product['discountPrice'].toStringAsFixed(2)}'
                              : '\$${product['price'].toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8.0),
                ],
              ),
            ),
            // Etiqueta "Oferta"
            if (isOnSale)
              Positioned(
                top: 4,
                left: 2,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 2.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(2),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(2),
                      bottomRight: Radius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Oferta',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            // Botón "Agregar" ajustado
            Positioned(
              bottom: -6.0, // Sobresale un poco
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${product['name']} añadido al carrito'),
                        backgroundColor: Colors.green.withOpacity(0.9),
                        duration: const Duration(seconds: 2),
                        /*behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0), // Bordes redondeados
                        ),*/
                      ),
                    );
                  },
                  icon: const Icon(Icons.add_shopping_cart, size: 16),
                  label: const Text('Agregar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 2.0),
                    elevation: 4.0,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
