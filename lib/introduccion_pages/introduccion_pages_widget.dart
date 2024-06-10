import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'introduccion_pages_model.dart';
export 'introduccion_pages_model.dart';

class IntroduccionPagesWidget extends StatefulWidget {
  const IntroduccionPagesWidget({super.key});

  @override
  State<IntroduccionPagesWidget> createState() =>
      _IntroduccionPagesWidgetState();
}

class _IntroduccionPagesWidgetState extends State<IntroduccionPagesWidget> {
  late IntroduccionPagesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IntroduccionPagesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: const Color(0xB89ABC12),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 20.0,
            borderWidth: 0.0,
            buttonSize: 63.0,
            icon: const FaIcon(
              FontAwesomeIcons.home,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () async {
              context.pushNamed(
                'Homepage',
                extra: <String, dynamic>{
                  kTransitionInfoKey: const TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                    duration: Duration(milliseconds: 0),
                  ),
                },
              );
            },
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          height: 800.0,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 23.0),
                                child: PageView(
                                  controller: _model.pageViewController ??=
                                      PageController(initialPage: 0),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Sin_ttulo-1_Mesa_de_trabajo_1.png',
                                        width: 300.0,
                                        height: 140.0,
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Sin_ttulo-1_Mesa_de_trabajo_1_copia.png',
                                        width: 1000.0,
                                        height: 542.0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(6.0),
                                      child: Image.asset(
                                        'assets/images/Sin_ttulo-1_Mesa_de_trabajo_1_copia_2.png',
                                        width: 300.0,
                                        height: 200.0,
                                        fit: BoxFit.scaleDown,
                                        alignment: const Alignment(0.0, 0.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 16.0),
                                  child:
                                      smooth_page_indicator.SmoothPageIndicator(
                                    controller: _model.pageViewController ??=
                                        PageController(initialPage: 0),
                                    count: 3,
                                    axisDirection: Axis.horizontal,
                                    onDotClicked: (i) async {
                                      await _model.pageViewController!
                                          .animateToPage(
                                        i,
                                        duration: const Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                      setState(() {});
                                    },
                                    effect: const smooth_page_indicator
                                        .ExpandingDotsEffect(
                                      expansionFactor: 5.0,
                                      spacing: 8.0,
                                      radius: 16.0,
                                      dotWidth: 8.0,
                                      dotHeight: 8.0,
                                      dotColor: Color(0x4C6A7984),
                                      activeDotColor: Color(0xB89ABC12),
                                      paintStyle: PaintingStyle.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
