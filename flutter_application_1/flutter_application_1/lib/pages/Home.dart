import 'package:flutter_application_1/models/componentDetails.dart';
import 'package:flutter_application_1/pages/add.dart';
import 'package:flutter_application_1/pages/details.dart';
import 'package:flutter_application_1/widgets/component.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<ComponentDetails> componentList = [
    ComponentDetails(
        name: 'Arduino',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/3/38/Arduino_Uno_-_R3.jpg',
        quantity: 5,
        description: 'angjodnafon'),
    ComponentDetails(
        name: 'Arduino',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/3/38/Arduino_Uno_-_R3.jpg',
        quantity: 5,
        description: 'angjodnafon'),
    ComponentDetails(
        name: 'Arduino',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/3/38/Arduino_Uno_-_R3.jpg',
        quantity: 5,
        description: 'angjodnafon'),
    ComponentDetails(
        name: 'Arduino',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/3/38/Arduino_Uno_-_R3.jpg',
        quantity: 5,
        description: 'angjodnafon'),
    ComponentDetails(
        name: 'Arduino',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/3/38/Arduino_Uno_-_R3.jpg',
        quantity: 5,
        description: 'angjodnafon'),
    ComponentDetails(
        name: 'Arduino',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/3/38/Arduino_Uno_-_R3.jpg',
        quantity: 5,
        description: 'angjodnafon'),
    ComponentDetails(
        name: 'Arduino',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/3/38/Arduino_Uno_-_R3.jpg',
        quantity: 5,
        description: 'angjodnafon'),
    ComponentDetails(
        name: 'Arduino',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/3/38/Arduino_Uno_-_R3.jpg',
        quantity: 5,
        description: 'angjodnafon'),
    ComponentDetails(
        name: 'Arduino',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/3/38/Arduino_Uno_-_R3.jpg',
        quantity: 5,
        description: 'angjodnafon'),
  ];

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: TextFormField(
                      controller: textController,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Component',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyText2.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFABA3A3),
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF5688CC),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF5688CC),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        suffixIcon: const Icon(
                          Icons.search,
                          color: Color(0xFF5688CC),
                          size: 22,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: componentList.length,
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsWidget(
                                          details: componentList[index])));
                            }),
                            child: Component(
                                name: componentList[index].name,
                                imageUrl: componentList[index].imageUrl,
                                quantity: componentList[index].quantity),
                          );
                        })),
                  )
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddComponent(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.add_circle,
                            color: Color(0xFF637C9C),
                            size: 80,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
