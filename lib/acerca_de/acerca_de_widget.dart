import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'acerca_de_model.dart';
export 'acerca_de_model.dart';

class AcercaDeWidget extends StatefulWidget {
  const AcercaDeWidget({super.key});

  @override
  State<AcercaDeWidget> createState() => _AcercaDeWidgetState();
}

class _AcercaDeWidgetState extends State<AcercaDeWidget> {
  late AcercaDeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AcercaDeModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xB89ABC12),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 20.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
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
                    transitionType: PageTransitionType.topToBottom,
                  ),
                },
              );
            },
          ),
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Acerca de',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, -0.9),
                            child: Text(
                              'Nuestro objetivo',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, -3.0),
                            child: Text(
                              'En este OVA sobre contaminación ambiental, nuestro principal objetivo es crear conciencia sobre la urgente necesidad de abordar y mitigar los efectos devastadores que la contaminación tiene en nuestro planeta',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Nuestra misión',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 5.0,
                          color: Color(0xB89ABC12),
                        ),
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, -2.0),
                            child: Text(
                              'Nuestra misión es destacar las diferentes formas de contaminación que afectan a nuestro entorno, desde la contaminación del aire y del agua hasta la generación de desechos y la degradación del medio ambiente. ',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.1),
                          child: Text(
                            'Autores',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.22),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Text(
                        'Sebastian Palacio',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Manrope',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Text(
                      'Guillermo Tovar',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.67),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: const Color(0xB89ABC12),
                      borderRadius: 20.0,
                      borderWidth: 3.0,
                      buttonSize: 40.0,
                      fillColor: const Color(0xFFA3DE2B),
                      icon: const FaIcon(
                        FontAwesomeIcons.facebookF,
                        color: Color(0xFFFFFDFD),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        await launchURL(
                            'https://www.facebook.com/profile.php?id=100088724079276&mibextid=ViGcVu');
                      },
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/386442891_1060388898426652_1397880384169784350_n.jpg',
                        width: 126.0,
                        height: 143.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/WhatsApp_Image_2023-11-17_at_2.16.38_PM.jpeg',
                        width: 127.0,
                        height: 135.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: const Color(0xB89ABC12),
                      borderRadius: 20.0,
                      borderWidth: 3.0,
                      buttonSize: 40.0,
                      fillColor: const Color(0xFFA3DE2B),
                      icon: const FaIcon(
                        FontAwesomeIcons.facebookF,
                        color: Color(0xFFFFFDFD),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        await launchURL(
                            'https://www.facebook.com/guillermo.tovar.1238/');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: const Color(0xB89ABC12),
                      borderRadius: 20.0,
                      borderWidth: 3.0,
                      buttonSize: 40.0,
                      fillColor: const Color(0xFFA3DE2B),
                      icon: const FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Color(0xFFFFFDFD),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        await launchURL(
                            'https://instagram.com/guillermort123?igshid=NzZlODBkYWE4Ng==');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
