import 'package:flr_component/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          //.adaptive me permite mostrar el Slider dependiendo
          //si es android o iOS.
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            divisions: 10,
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  }
                : null,
          ),
          Checkbox(
            value: _sliderEnabled,
            onChanged: (value) {
              setState(() {
                _sliderEnabled = value ?? true;
              });
            },
          ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Enable Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value ?? true;
            }),
          ),
          Switch(
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value;
            }),
          ),
          //.adaptive me permite mostrar el SwitchListTile dependiendo
          //si es android o iOS.
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Enable Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value;
            }),
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_1280.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
