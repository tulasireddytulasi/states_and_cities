import 'dart:convert';
import 'package:flutter/material.dart';

class StateProvider extends ChangeNotifier {

  // Setters and getters
  String _selectedState = 'California';
  String get selectedState => _selectedState;
  String _selectedCity = 'Los Angeles';
  String get selectedCity => _selectedCity;

  List<String> _states = [];
  List<String> get states => _states;
  Map<String, List<String>> _cities = {};
  Map<String, List<String>> get cities => _cities;

  clearCities() => _cities.clear();

  // Get the data from the JSON
  getData() {
    String jsonCities = '{"California": ["Los Angeles", "San Francisco"], "Texas": ["Houston", "Dallas"], "New York": ["New York City", "Buffalo"]}';

    final statesAndCitiesData = json.decode(jsonCities);

    _states = (statesAndCitiesData as Map<String, dynamic>).keys.toList();
    _cities = (statesAndCitiesData).map<String, List<String>>(
          (key, value) => MapEntry(
        key,
        (value as List<dynamic>).cast<String>(),
      ),
    );
  }

  setCity({required String city}) {
    _selectedCity = city;
    notifyListeners();
  }

  setState({required String state}) {
    _selectedState = state;
    _selectedCity = _cities[state]![0];
    notifyListeners();
  }
}
