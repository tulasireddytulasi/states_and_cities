import 'package:flutter/material.dart';
import 'package:flutter_cities/provider/state_provider.dart';
import 'package:flutter_cities/utils/color_palette.dart';
import 'package:flutter_cities/widget/drop_down_widget.dart';
import 'package:provider/provider.dart';

class DropdownExample extends StatefulWidget {
  const DropdownExample({super.key});

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {

  @override
  void initState() {
    super.initState();
    final StateProvider stateProvider = Provider.of<StateProvider>(context, listen: false);
    stateProvider.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Example'),
      ),
      body: Center(
        child: Consumer<StateProvider>(builder: (context, stateProvider, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DropDownWidget(
                hintText: "Select State",
                value: stateProvider.selectedState,
                onChanged: (value) {
                  stateProvider.setState(state: value ?? "");
                },
                listData: stateProvider.states,
              ),
              const SizedBox(height: 20),
              DropDownWidget(
                hintText: "Select City",
                value: stateProvider.selectedCity,
                onChanged: (value) {
                  stateProvider.setCity(city: value ?? "");
                },
                listData: stateProvider.cities[stateProvider.selectedState] ?? [],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Selected State: ${stateProvider.selectedState}",
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 20, color: ColorPalette.black),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Selected City:   ${stateProvider.selectedCity}",
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 20, color: ColorPalette.black),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

