part of first_view;

class _FirstTablet extends StatelessWidget {
  final FirstViewModel viewModel;

  _FirstTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('FirstTablet')),
    );
  }
}