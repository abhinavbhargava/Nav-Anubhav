import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Example'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Home Page Content'),
      ),
    );
  }
}

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  final List<Map<String, dynamic>> drawerItems0 = [
    {'title': 'Assessment of Ill Patient', 'onTap': () => print('Assessment of Ill Patient clicked')},
  ];

  final Map<String, List<Map<String, dynamic>>> sectionedItems0 = {
    'Trauma': [
      {'title': 'Polytrauma', 'onTap': () => print('Item 1.1 clicked')},
      {'title': 'Head Injury Generic', 'onTap': () => print('Item 1.2 clicked')},
      {'title': 'Head Injury Condition Specific', 'onTap': () => print('Item 1.3 clicked')},
      {'title': 'Extradural Hematoma', 'onTap': null},
      {'title': 'Acute Subdural Hematoma', 'onTap': null},
      {'title': 'Chronic Subdural Hematoma', 'onTap': null},
      {'title': 'Traumatic Intracranial Hematoma', 'onTap': null},
      {'title': 'Depressed Skull Fracture', 'onTap': null},
      {'title': 'Penetrating Trauma', 'onTap': null},
      {'title': 'Spinal Trauma', 'onTap': () => print('Item 1.3 clicked')},
      {'title': 'Injury to Chest', 'onTap': () => print('Item 1.3 clicked')},
      {'title': 'Blunt Abdominal Trauma', 'onTap': () => print('Item 1.3 clicked')},
      {'title': 'Open Fracture', 'onTap': () => print('Item 1.3 clicked')},
    ],
    'Cardiorespiratory Emergencies': [
      {'title': 'Chest Pain', 'onTap': () => print('Item 2.1 clicked')},
      {'title': 'Shortness of Breath', 'onTap': () => print('Item 2.2 clicked')},
      {'title': 'Shortness of Breath Condition Specific', 'onTap': () => print('Item 2.2 clicked')},
      {'title': 'Asthma', 'onTap': null},
      {'title': 'Chronic Obstructive Pulmonary Disease', 'onTap': null},
      {'title': 'Anaphylaxis', 'onTap': null},
      {'title': 'Heart Failure', 'onTap': null},
      {'title': 'Anaemia', 'onTap': null},
    ],
    'Neurological Emergencies': [
      {'title': 'Stroke', 'onTap': () => print('Item 2.1 clicked')},
      {'title': 'Headache Generic', 'onTap': () => print('Item 2.2 clicked')},
      {'title': 'Subarachnoid Haemorrhage', 'onTap': () => print('Item 2.2 clicked')},
      {'title': 'Vascular Problems', 'onTap': () => print('Item 2.2 clicked')},
      {'title': 'Incidenral Unruptured Anueurysm', 'onTap': null},
      {'title': 'Vascular Malformations', 'onTap': null},
      {'title': 'Brain Tumours', 'onTap': () => print('Item 2.2 clicked')},
      {'title': 'Intracranial Infections', 'onTap': () => print('Item 2.2 clicked')},
      {'title': 'Cerebral Empyema Abscess', 'onTap': null},
      {'title': 'Meningitis', 'onTap': null},
      {'title': 'Tuberculosis', 'onTap': null},
      {'title': 'Hydrocephalus', 'onTap': () => print('Item 2.2 clicked')},
      {'title': 'Hydrocephalus', 'onTap': null},
      {'title': 'Normal Pressure Hydrocephalus', 'onTap': null},
      {'title': 'Idiopathic Intracranial Hypertension', 'onTap': null},
      {'title': 'First Seizure', 'onTap': () => print('Item 2.2 clicked')},
      {'title': 'Status Epilepticus', 'onTap': () => print('Item 2.2 clicked')},
    ],
    'Abdominal Emergencies': [
      {'title': 'Acute Abdomen', 'onTap': () => print('Item 2.1 clicked')},
      {'title': 'Appendicitis', 'onTap': () => print('Item 2.2 clicked')},
      {'title': 'Acute Pancreatitis', 'onTap': () => print('Item 2.2 clicked')},
      {'title': 'Biliary Colic', 'onTap': () => print('Item 2.2 clicked')},
      {'title': 'Renal Colic', 'onTap': () => print('Item 2.2 clicked')},
    ],
  };

  final List<Map<String, dynamic>> drawerItems1 = [
    {'title': 'Shock', 'onTap': () => print('Assessment of Ill Patient clicked')},
    {'title': 'Sepsis', 'onTap': () => print('Assessment of Ill Patient clicked')},
    {'title': 'Acute Hot Painful Joints', 'onTap': () => print('Assessment of Ill Patient clicked')},
    {'title': 'Acute Unwell Child with Limb', 'onTap': () => print('Assessment of Ill Patient clicked')},
  ];

  final Map<String, List<Map<String, dynamic>>> sectionedItems1 = {
    'Diabetic Emergencies': [
      {'title': 'Hypoglycaemia', 'onTap': () => print('Item 1.1 clicked')},
      {'title': 'Diabetic Ketoacidosis', 'onTap': () => print('Item 1.2 clicked')},
    ],
    'Pregnancy Related Emergencies': [
      {'title': 'Indications for Referral in Labor', 'onTap': () => print('Item 2.1 clicked')},
      {'title': 'Post-Partum Haemorrhage', 'onTap': () => print('Item 2.2 clicked')},
      {'title': 'Management of Preeclampsia', 'onTap': () => print('Item 2.2 clicked')},
      {'title': 'Spinal Dysraphism', 'onTap': () => print('Item 2.2 clicked')},
    ],
    'Back Pain': [
      {'title': 'Back Pain', 'onTap': () => print('Item 2.1 clicked')},
      {'title': 'Metastatus Spinal Cord Compression', 'onTap': () => print('Item 2.2 clicked')},
      {'title': 'Discitis', 'onTap': () => print('Item 2.2 clicked')},
    ],
  };

  final List<Map<String, dynamic>> drawerItems2 = [
    {'title': 'Burns', 'onTap': () => print('Assessment of Ill Patient clicked')},
    {'title': 'Screening for Cancer', 'onTap': () => print('Assessment of Ill Patient clicked')},
    {'title': 'Transfer Checklist', 'onTap': () => print('Assessment of Ill Patient clicked')},
  ];

  final Map<String, List<Map<String, dynamic>>> sectionedItems2 = {
    'Addendum': [
      {'title': 'WFNS SAH Grading Scale', 'onTap': () => print('Item 1.1 clicked')},
      {'title': 'Asia Grade', 'onTap': () => print('Item 1.2 clicked')},
      {'title': 'ETV Success Score', 'onTap': () => print('Item 1.1 clicked')},
      {'title': 'GCS', 'onTap': () => print('Item 1.2 clicked')},
      {'title': 'Tachycardia', 'onTap': () => print('Item 1.1 clicked')},
      {'title': 'Bradycardia', 'onTap': () => print('Item 1.2 clicked')},
    ],
  };

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _searchQuery = _searchController.text;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> drawerListItems = [];

    // Filter items based on search query
    drawerItems0.forEach((item) {
      if (item['title'].toLowerCase().contains(_searchQuery.toLowerCase())) {
        drawerListItems.add(ListTile(
          title: Text(item['title']),
          onTap: item['onTap'],
        ));
        //drawerListItems.add(Divider());
      }
    });

    sectionedItems0.forEach((section, items) {
      bool sectionAdded = false;
      items.forEach((item) {
        if (item['title'].toLowerCase().contains(_searchQuery.toLowerCase())) {
          if (!sectionAdded) {
            drawerListItems.add(ListTile(
              title: Text(
                section,
                style: TextStyle(color: Colors.grey),
              ),
            ));
            //drawerListItems.add(Divider());
            sectionAdded = true;
          }
          drawerListItems.add(ListTile(
            title: Padding(
              padding: item['onTap'] == null ? const EdgeInsets.only(left: 16.0) : EdgeInsets.zero,
              child: Text(
                item['title'],
                style: TextStyle(
                  color: item['onTap'] == null ? Colors.grey.shade400 : Colors.black,
                ),
              ),
            ),
            onTap: item['onTap'],
          ));
          //drawerListItems.add(Divider());
        }
      });
      //drawerListItems.add(Divider());
    });

    // Filter items based on search query
    drawerItems1.forEach((item) {
      if (item['title'].toLowerCase().contains(_searchQuery.toLowerCase())) {
        drawerListItems.add(ListTile(
          title: Text(item['title']),
          onTap: item['onTap'],
        ));
        //drawerListItems.add(Divider());
      }
    });

    sectionedItems1.forEach((section, items) {
      bool sectionAdded = false;
      items.forEach((item) {
        if (item['title'].toLowerCase().contains(_searchQuery.toLowerCase())) {
          if (!sectionAdded) {
            drawerListItems.add(ListTile(
              title: Text(
                section,
                style: TextStyle(color: Colors.grey),
              ),
            ));
            //drawerListItems.add(Divider());
            sectionAdded = true;
          }
          drawerListItems.add(ListTile(
            title: Padding(
              padding: item['onTap'] == null ? const EdgeInsets.only(left: 16.0) : EdgeInsets.zero,
              child: Text(
                item['title'],
                style: TextStyle(
                  color: item['onTap'] == null ? Colors.grey.shade400 : Colors.black,
                ),
              ),
            ),
            onTap: item['onTap'],
          ));
          //drawerListItems.add(Divider());
        }
      });
      //drawerListItems.add(Divider());
    });

    // Filter items based on search query
    drawerItems2.forEach((item) {
      if (item['title'].toLowerCase().contains(_searchQuery.toLowerCase())) {
        drawerListItems.add(ListTile(
          title: Text(item['title']),
          onTap: item['onTap'],
        ));
        //drawerListItems.add(Divider());
      }
    });

    sectionedItems2.forEach((section, items) {
      bool sectionAdded = false;
      items.forEach((item) {
        if (item['title'].toLowerCase().contains(_searchQuery.toLowerCase())) {
          if (!sectionAdded) {
            drawerListItems.add(ListTile(
              title: Text(
                section,
                style: TextStyle(color: Colors.grey),
              ),
            ));
            //drawerListItems.add(Divider());
            sectionAdded = true;
          }
          drawerListItems.add(ListTile(
            title: Padding(
              padding: item['onTap'] == null ? const EdgeInsets.only(left: 16.0) : EdgeInsets.zero,
              child: Text(
                item['title'],
                style: TextStyle(
                  color: item['onTap'] == null ? Colors.grey.shade400 : Colors.black,
                ),
              ),
            ),
            onTap: item['onTap'],
          ));
          //drawerListItems.add(Divider());
        }
      });
      //drawerListItems.add(Divider());
    });

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(Icons.info, color: Colors.white),
                      onPressed: () {
                        // Handle About click
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.description, color: Colors.white),
                      onPressed: () {
                        // Handle Disclaimer click
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite, color: Colors.white),
                      onPressed: () {
                        // Handle Dedication click
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.settings, color: Colors.white),
                      onPressed: () {
                        // Handle Settings click
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          ...drawerListItems,
        ],
      ),
    );
  }
}
