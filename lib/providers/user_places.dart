import 'package:riverpod/riverpod.dart';
import 'package:favorite_place/models/place.dart';

class UserPlacesNotivier extends StateNotifier<List<Place>> {
  UserPlacesNotivier() : super(const []);

  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [newPlace, ...state];
  }
}

final usePlaceProvider = StateNotifierProvider<UserPlacesNotivier, List<Place>>(
  (ref) => UserPlacesNotivier(),
);
