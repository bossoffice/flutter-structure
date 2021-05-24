part of first_view;

class _FirstDesktop extends StatelessWidget {
  final FirstViewModel viewModel;

  _FirstDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('FirstDesktop')),
    );
  }
}