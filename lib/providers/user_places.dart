import 'package:riverpod/riverpod.dart';
import 'dart:io';
import 'package:favorite_place/models/place.dart';

class UserPlacesNotivier extends StateNotifier<List<Place>> {
  UserPlacesNotivier() : super(const []);

  void addPlace(String title, File image){
    final newPlace = Place(title: title, image: image);
    state = [newPlace, ...state];
  }
}

final usePlaceProvider = StateNotifierProvider<UserPlacesNotivier, List<Place>>(
  (ref) => UserPlacesNotivier(),
);
