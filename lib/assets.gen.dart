/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsBgGen {
  const $AssetsBgGen();

  /// File path: assets/bg/match.png
  AssetGenImage get match => const AssetGenImage('assets/bg/match.png');

  /// List of all assets
  List<AssetGenImage> get values => [match];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow2.png
  AssetGenImage get arrow2 => const AssetGenImage('assets/icons/arrow2.png');

  /// File path: assets/icons/arrow_down.svg
  String get arrowDown => 'assets/icons/arrow_down.svg';

  /// File path: assets/icons/arrow_left.svg
  String get arrowLeft => 'assets/icons/arrow_left.svg';

  /// File path: assets/icons/arrow_right.svg
  String get arrowRight => 'assets/icons/arrow_right.svg';

  /// File path: assets/icons/change.svg
  String get change => 'assets/icons/change.svg';

  /// File path: assets/icons/down.svg
  String get down => 'assets/icons/down.svg';

  /// File path: assets/icons/down_arrow2.png
  AssetGenImage get downArrow2 =>
      const AssetGenImage('assets/icons/down_arrow2.png');

  /// File path: assets/icons/download.svg
  String get download => 'assets/icons/download.svg';

  /// File path: assets/icons/keo_arrow2.png
  AssetGenImage get keoArrow2 =>
      const AssetGenImage('assets/icons/keo_arrow2.png');

  /// File path: assets/icons/person.svg
  String get person => 'assets/icons/person.svg';

  /// File path: assets/icons/share.svg
  String get share => 'assets/icons/share.svg';

  /// File path: assets/icons/vector.svg
  String get vector => 'assets/icons/vector.svg';

  /// List of all assets
  List<dynamic> get values => [
        arrow2,
        arrowDown,
        arrowLeft,
        arrowRight,
        change,
        down,
        downArrow2,
        download,
        keoArrow2,
        person,
        share,
        vector
      ];
}

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/brighton.png
  AssetGenImage get brighton => const AssetGenImage('assets/logo/brighton.png');

  /// File path: assets/logo/leo.png
  AssetGenImage get leo => const AssetGenImage('assets/logo/leo.png');

  /// File path: assets/logo/man_city.png
  AssetGenImage get manCity => const AssetGenImage('assets/logo/man_city.png');

  /// List of all assets
  List<AssetGenImage> get values => [brighton, leo, manCity];
}

class Assets {
  Assets._();

  static const $AssetsBgGen bg = $AssetsBgGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsLogoGen logo = $AssetsLogoGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
