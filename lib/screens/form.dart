import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int _currentStep = 0;

  _stepState(int step) {
    if (_currentStep > step) {
      return StepState.complete;
    } else {
      return StepState.editing;
    }
  }

  _steps() => [

    Step(
      title: const Text('Basic Details'),
      content: const _CardForm(),
      state: _stepState(0),
      isActive: _currentStep == 0,
    ),

    Step(
      title: const Text('Address'),
      content: const _AddressForm(),
      state: _stepState(1),
      isActive: _currentStep == 1,
    ),
    Step(
      title: const Text('Overview'),
      content: const _Overview(),
      state: _stepState(2),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        type: StepperType.horizontal,
        controlsBuilder: (BuildContext context, ControlsDetails controls) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: controls.onStepContinue,
                  child: const Text('NEXT'),
                ),
                if (_currentStep != 0)
                  TextButton(
                    onPressed: controls.onStepCancel,
                    child: const Text(
                      'BACK',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
              ],
            ),
          );
        },
        onStepTapped: (step) => setState(() => _currentStep = step),
        onStepContinue: () {
          setState(() {
            if (_currentStep < _steps().length - 1) {
              _currentStep += 1;
            } else {
              _currentStep = 0;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (_currentStep > 0) {
              _currentStep -= 1;
            } else {
              _currentStep = 0;
            }
          });
        },
        currentStep: _currentStep,
        steps: _steps(),
      ),
    );
  }
}

class _AddressForm extends StatelessWidget {
  const _AddressForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'District',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Region',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Sub-county',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Street',
          ),
        ),
      ],
    );
  }
}

class _CardForm extends StatelessWidget {
  const _CardForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Title',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Full Names',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Age',
          ),
        ),
      ],
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(child: Text('Thank you for your Visit!')),
      ],
    );
  }
}
