part of first_view;

class _FirstMobile extends ConsumerWidget {
  final FirstViewModel viewModel;

  _FirstMobile(this.viewModel);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    var vm = watch(couterNotifierState);
    return Scaffold(
      appBar: AppBar(
        title: Text("some"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Change Me plsss : ${viewModel.welComeString}'),
            TextButton(
              onPressed: () => viewModel.welComeString = " oh i got change",
              child: Text("Touch My Butt(on)"),
            ),
            Text('FirstMobile : $vm'),
            TextButton(
              onPressed: () =>
                  context.read(couterNotifierState.notifier).decrement(),
              child: Text("decrement"),
            ),
            TextButton(
              onPressed: () => viewModel.popView(context),
              child: Text("Get Back"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: OutlinedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.white))),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 10, horizontal: 40))),
                  onPressed: () {
                    viewModel.changeLanguages(context);
                  },
                  child: Text("change_languages_button").tr()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    context
                        .read(themeStateProvider.notifier)
                        .setAppTheme(AppTheme.Dark);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).accentColor)),
                  child: Text("Dark"),
                ),
                OutlinedButton(
                  onPressed: () {
                    context
                        .read(themeStateProvider.notifier)
                        .setAppTheme(AppTheme.Green);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).accentColor)),
                  child: Text("Green"),
                ),
                OutlinedButton(
                  onPressed: () {
                    context
                        .read(themeStateProvider.notifier)
                        .setAppTheme(AppTheme.White);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).accentColor)),
                  child: Text("white"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
