import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

part 'dashboard_controller.g.dart';

class DashboardController = _DashboardController with _$DashboardController;

abstract class _DashboardController with Store {
  @observable
  bool emptyLocalizacoes = false;

  @action
  Future<bool> sendLatLng() async {
    bool serviceEnabled;
    LocationPermission permission;

    try {
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Serviço de GPS está desabilitado.');
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Permissão para localização foi negada');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Permissão para localização foi negada permanentemente.');
      }

      final position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);

      final _url = Uri.parse('https://pidengue.azurewebsites.net/api/grava');
      print(position.latitude.toString());
      final response = await http.post(_url,
          headers: {"Content-Type": "application/json"},
          body: json
              .encode({'lat': position.latitude, 'long': position.longitude}));
      print(response.statusCode);
      if (response.statusCode == 200) {
        return true;
      } else {
        print(response.body);
      }
    } on Exception catch (e) {
      print('erro$e');
    }

    return false;
  }
}
