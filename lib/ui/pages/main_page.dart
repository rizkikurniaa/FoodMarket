part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: true,
        child: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            SafeArea(
              child: Container(
                color: 'FAFAFC'.toColor(),
              ),
            ),
            SafeArea(
              child: Center(
                child: Text('Body area'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavBar(),
            )
          ],
        ),
      ),
    );
  }
}
