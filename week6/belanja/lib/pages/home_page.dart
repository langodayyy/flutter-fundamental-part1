import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/app_bar.dart';
import 'package:belanja/widgets/button_app_bar.dart';
import 'package:belanja/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
          name: 'Sugar',
          price: 5000,
          foto:
              'data:image/jpeg;base64,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',
          rating: 3,
          stok: 10),
      Item(
          name: 'Salt',
          price: 2000,
          foto:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJH1FWXDJuc7kkRE5rdkDVGq25nVTyO5OC2Q&s',
          rating: 4.0,
          stok: 15),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: customAppBar('Belanja'),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () => context.push('/item', extra: item),
                child: ItemCard(item: item),
              );
            },
          ),
        ),
        bottomNavigationBar: const CustomBottomAppBar(),
      ),
    );
  }
}
