import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_3/models/shoe.dart';

class CartCubit extends Cubit<List<Shoe>> {
  CartCubit() : super([]);

  void addItemToCart(Shoe shoe) {
    final updatedCart = List<Shoe>.from(state)..add(shoe);
    emit(updatedCart);
  }

  void removeItemFromCart(Shoe shoe) {
    final updatedCart = List<Shoe>.from(state)..remove(shoe);
    emit(updatedCart);
  }

  List<Shoe> get shopList => [
        Shoe(
          name: 'Nike Air Max 270',
          price: 150.00,
          description:
              'Nike Air Max 270 — це стильні кросівки з революційною технологією Air Max для максимального комфорту під час носіння.',
          imagePath: 'lib/images/pngwing.com.png',
        ),
        Shoe(
          name: 'Nike Air Force 1',
          price: 120.00,
          description:
              'Легендарні Nike Air Force 1 — це класика, яка поєднує міцність та стиль у кожній деталі.',
          imagePath: 'lib/images/pngwing.com (2).png',
        ),
        Shoe(
          name: 'Nike React Infinity Run',
          price: 160.00,
          description:
              'Nike React Infinity Run забезпечують м’якість і комфорт для бігу на довгі дистанції з революційною технологією React.',
          imagePath: 'lib/images/pngwing.com (1).png',
        ),
        Shoe(
          name: 'Nike Blazer Mid 77 Vintage',
          price: 110.00,
          description:
              'Nike Blazer Mid 77 Vintage — це стильні ретро-кросівки з винтажним виглядом і сучасною технологією для комфорту.',
          imagePath: 'lib/images/4thshoe.png',
        ),
      ];

  // Отримати список елементів в корзині
  List<Shoe> get userCart => state;
}
