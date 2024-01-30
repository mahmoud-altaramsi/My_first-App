import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vapp/providerT.dart';

class IconGrid extends StatefulWidget {
  String icon, linkIcon;
  int m = 1;
  IconGrid({
    Key? key,
    required this.icon,
    required this.linkIcon,
  }) : super(key: key);

  @override
  State<IconGrid> createState() => _IconGridState();
}

class _IconGridState extends State<IconGrid> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderT>(
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
            borderRadius: BorderRadius.circular(50),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 9,
            color: Colors.red,
            child: InkWell(
              onDoubleTap: () {
                value.setMyiconBar(widget.icon);
                value.setMylinBar(widget.linkIcon);
                // value.iconBar = widget.icon;
                // value.linkBar = widget.linkIcon;
                value.notifyListeners();
              },
              onTap: () {
                setState(() {});
                launchUrl(Uri.parse(widget.linkIcon),
                    mode: LaunchMode.externalNonBrowserApplication);
              },
              child: Image(
                image: AssetImage('assets/${widget.icon}'),
              ),
            ),
          ),
        );
      },
    );
    ;
  }
}
