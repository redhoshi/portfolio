import 'package:flutter/material.dart';

class EducationWidget extends StatefulWidget {
  const EducationWidget({super.key});

  @override
  State<EducationWidget> createState() => _EducationWidgetState();
}

class _EducationWidgetState extends State<EducationWidget> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      controlsBuilder: (context, controller) {
        return const SizedBox.shrink();
      },
      currentStep: currentStep,
      onStepTapped: (stepIndex) {
        setState(() => currentStep = stepIndex);
      },
      elevation: 1.0,
      steps: <Step>[
        const Step(
          title: Text(
              "2015-2018 | Tochigi Prefectural Utsunomiya Central Girls' High School"),
          content: Text(
              'I was a class representative in my class, a member of the brass band, and participated in an English debate competition. '),
        ),
        const Step(
          title: Text(
              '2018-2022 | University of Tsukuba, Bachelor degree of Media arts Science and Technology'),
          content: Text(
              'I was a member of a brass band and researched music cognition of the hearing impaired for my graduation thesis.'),
        ),
        const Step(
          title: Text(
              "2022-202x | University of Tsukuba, Master's Programs in Informatics"),
          content: Text('Now'),
        ),
        const Step(
          title: Text(
              "2023-2024 | Brandenburg University of Technology Cottbus - Senftenberg, Master's Programs in Artificial Intelligence"),
          content: Text('Next'),
        ),
      ],
    );
  }
}
