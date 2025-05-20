part of 'general_imports.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  List<TabItem> items = [
    TabItem(icon: Icons.home, title: "Home"),
    TabItem(icon: Icons.category, title: "categories"),
    TabItem(icon: Icons.add, title: "Add"),
    TabItem(icon: Icons.tag, title: "Tags"),
    TabItem(icon: Icons.person, title: "Profile"),
  ];

  int visit = 0;

  List<Widget> pages = [Home(), Categories(), AddPost(), Tags(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: visit, children: pages),
      bottomNavigationBar: BottomBarInspiredFancy(
        items: items,
        backgroundColor: AppColors.lightModeBackground,
        color: AppColors.lightModeTextColor,
        colorSelected: AppColors.primaryColor,
        animated: true,
        paddingVertical: 20,
        curve: Curves.fastEaseInToSlowEaseOut,
        indexSelected: visit,
        onTap: (index) {
          setState(() {
            visit = index;
          });
        },
      ),
    );
  }
}
