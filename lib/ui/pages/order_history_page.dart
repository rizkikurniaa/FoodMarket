part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;
  List<Transaction> inProgress = mockTransactions
      .where((element) =>
          element.status == TransactionStatus.on_delivery ||
          element.status == TransactionStatus.pending)
      .toList();

  List<Transaction> past = mockTransactions
      .where((element) =>
          element.status == TransactionStatus.delivered ||
          element.status == TransactionStatus.cancelled)
      .toList();

  @override
  Widget build(BuildContext context) {
    if (inProgress.length == 0 && past.length == 0) {
      return IllustrationPage(
        title: 'Ouch! Hungry',
        subTitle: 'Seems you like have not\nordered any food yet',
        picturePath: 'assets/love_burger.png',
        buttonTap1: () {},
        buttonTitle1: 'Find foods',
      );
    } else {
      return ListView(
        children: [
          Column(
            children: [
              //Header
              Container(
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: defaultMargin),
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your Orders',
                      style: blackFontStyle1,
                    ),
                    Text(
                      'Wait for the best meal',
                      style: greyFontStyle.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              //Body
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTabBar(
                      titles: ['In Progress', 'Past Orders'],
                      selectedIndex: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: (selectedIndex == 0 ? inProgress : past)
                          .map((e) => Text(e.food.name))
                          .toList(),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      );
    }
  }
}
