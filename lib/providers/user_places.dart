import 'package:riverpod/riverpod.dart';
import 'dart:io';
import 'package:favorite_place/models/place.dart';
import 'package:path_provider/path_provider.dart' as syspath;
import 'package:path/path.dart' as path;

class UserPlacesNotivier extends StateNotifier<List<Place>> {
  UserPlacesNotivier() : super(const []);

  void addPlace(String title, File image, PlaceLocation location) async {
    final appDir = await syspath.getApplicationDocumentsDirectory();
    final fileName = path.basename(image.path);
    final copiedImage = await image.copy('${appDir.path}/$fileName');


    final newPlace = Place(title: title, image: copiedImage, location: location);
    state = [newPlace, ...state];
  }
}

final usePlaceProvider = StateNotifierProvider<UserPlacesNotivier, List<Place>>(
  (ref) => UserPlacesNotivier(),
);
