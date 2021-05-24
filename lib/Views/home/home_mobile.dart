part of home_view;

class _HomeMobile extends StatelessWidget {
  final HomeViewModel viewModel;

  _HomeMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("change_languages_button").tr(),
                Consumer(
                  builder: (context, ScopedReader watch, child) {
                    var vm = watch(couterNotifierState);
                    return Text('HomeMobile : $vm');
                  },
                ),
                TextButton(
                    onPressed: () {
                      viewModel.navigateToHomeView(context);
                    },
                    child: Text("go next page"))
              ],
            ),
          ),
          Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {
                          context
                              .read(couterNotifierState.notifier)
                              .increment();
                          print("on press some");
                        },
                        child: Text("incrment")),
                    TextButton(
                        onPressed: () {
                          context
                              .read(couterNotifierState.notifier)
                              .decrement();
                          print("on press some");
                        },
                        child: Text("decrment"))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
