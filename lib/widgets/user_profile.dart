import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
   List<MenuRowData> firsMenuRow = [
    MenuRowData(Icons.favorite, 'Избранное'),
    MenuRowData(Icons.call, 'Недавние звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder, 'Папка с чатами'),
  ];
   List<MenuRowData> secondMenuRow = [
     MenuRowData(Icons.notifications, 'Увдомления и звуки'),
     MenuRowData(Icons.privacy_tip, 'Конфеденциальность'),
     MenuRowData(Icons.date_range, 'Данные и память'),
     MenuRowData(Icons.brush, 'Оформление'),
     MenuRowData(Icons.language, 'Язык'),
   ];
   UserProfile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Настройки', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _UserInfo(),
            SizedBox(height: 30),
            _MenuWidget(menuRow: firsMenuRow),
            SizedBox(height: 30),
            _MenuWidget(menuRow: secondMenuRow),
          ],
        ),
      ),
    ); // return Text('Test');
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({super.key, required this.menuRow});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {

  final MenuRowData data;

  const _MenuWidgetRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(children: [
        Icon(data.icon),
        SizedBox(width: 15),
        Expanded(child: Text(data.text)),
        Icon(Icons.chevron_right),
      ],
      ),
    );
  }
}


class _UserInfo extends StatelessWidget {
  const _UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 30),
          _AvatarWidget(),
          SizedBox(height: 30),
          _UserNameWidget(),
          SizedBox(height: 10),
          _UserPhoneWidget(),
          SizedBox(height: 10),
          _UserNIckNameWidget(),
        ],
      ),
    );
  }
}

class _UserNIckNameWidget extends StatelessWidget {
  const _UserNIckNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('@aka_qa', style: TextStyle(color: Colors.grey, fontSize: 16));
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '+7(123)456 78 89',
      style: TextStyle(color: Colors.grey, fontSize: 15),
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Dominoff',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, child: Placeholder());
  }
}
