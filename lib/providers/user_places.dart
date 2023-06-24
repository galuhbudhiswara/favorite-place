import 'package:riverpod/riverpod.dart';
import 'dart:io';
import 'package:favorite_place/models/place.dart';

class UserPlacesNotivier extends StateNotifier<List<Place>> {
  UserPlacesNotivier() : super(const []);

  void addPlace(String title, File image, PlaceLocation location){
    final newPlace = Place(title: title, image: image, location: location);
    state = [newPlace, ...state];
  }
}

final usePlaceProvider = StateNotifierProvider<UserPlacesNotivier, List<Place>>(
  (ref) => UserPlacesNotivier(),
);
