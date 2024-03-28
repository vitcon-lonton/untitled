import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'commentator.dart';
import 'room_match.dart';
import 'rate_table.dart';
import '../theme/gradient_app_bar.dart';

// const double widthConstraint = 600;
// const double widthConstraint = 320;
// const double widthConstraint = 350;
// const double widthConstraint = 900;
const double widthConstraint = 450;
// const double widthConstraint = 375;

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  static const padding = EdgeInsetsDirectional.symmetric(horizontal: 12);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      const SizedBox(height: 24),
      const ComponentDecoration(child: RoomMatch()),
      const ComponentDecoration(child: Commentator()),
      const SizedBox(height: 24),
      const ComponentDecoration(child: RateTable()),
      // colDivider,
      // const ComponentDecoration(child: ComponentsDemo()),
      const SizedBox(height: 24),
    ];
    List<double?> heights = List.filled(children.length, null);

    // Fully traverse this list before moving on.
    return Scaffold(
      appBar: GradientAppBar(),
      body: FocusTraversalGroup(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: BuildSlivers(
                heights: heights,
                builder: (context, index) {
                  return _CacheHeight(
                    heights: heights,
                    index: index,
                    child: children[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ComponentDecoration extends StatefulWidget {
  const ComponentDecoration({super.key, required this.child});

  final Widget child;

  @override
  State<ComponentDecoration> createState() => _ComponentDecorationState();
}

class _ComponentDecorationState extends State<ComponentDecoration> {
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0),
        // padding: const EdgeInsets.symmetric(vertical: smallSpacing),
        child: Column(
          children: [
            Focus(
              focusNode: focusNode,
              canRequestFocus: true,
              child: GestureDetector(
                onTapDown: (_) {
                  focusNode.requestFocus();
                },
                behavior: HitTestBehavior.opaque,
                child: Card.outlined(
                  elevation: 0,
                  margin: EdgeInsets.zero,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Center(
                    child: widget.child,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return RepaintBoundary(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0),
        // padding: const EdgeInsets.symmetric(vertical: smallSpacing),
        child: Column(
          children: [
            ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(width: widthConstraint),
              // Tapping within the a component card should request focus
              // for that component's children.
              child: Focus(
                focusNode: focusNode,
                canRequestFocus: true,
                child: GestureDetector(
                  onTapDown: (_) {
                    focusNode.requestFocus();
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Card.outlined(
                    // elevation: 0,
                    margin: EdgeInsets.zero,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Center(
                      child: widget.child,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// If the content of a CustomScrollView does not change, then it's
// safe to cache the heights of each item as they are laid out. The
// sum of the cached heights are returned by an override of
// `SliverChildDelegate.estimateMaxScrollOffset`. The default version
// of this method bases its estimate on the average height of the
// visible items. The override ensures that the scrollbar thumb's
// size, which depends on the max scroll offset, will shrink smoothly
// as the contents of the list are exposed for the first time, and
// then remain fixed.
class _CacheHeight extends SingleChildRenderObjectWidget {
  const _CacheHeight({
    super.child,
    required this.heights,
    required this.index,
  });

  final List<double?> heights;
  final int index;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _RenderCacheHeight(
      heights: heights,
      index: index,
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, _RenderCacheHeight renderObject) {
    renderObject
      ..heights = heights
      ..index = index;
  }
}

class _RenderCacheHeight extends RenderProxyBox {
  _RenderCacheHeight({
    required List<double?> heights,
    required int index,
  })  : _heights = heights,
        _index = index,
        super();

  List<double?> _heights;
  List<double?> get heights => _heights;
  set heights(List<double?> value) {
    if (value == _heights) {
      return;
    }
    _heights = value;
    markNeedsLayout();
  }

  int _index;
  int get index => _index;
  set index(int value) {
    if (value == index) {
      return;
    }
    _index = value;
    markNeedsLayout();
  }

  @override
  void performLayout() {
    super.performLayout();
    heights[index] = size.height;
  }
}

// The heights information is used to override the `estimateMaxScrollOffset` and
// provide a more accurate estimation for the max scroll offset.
class BuildSlivers extends SliverChildBuilderDelegate {
  BuildSlivers({
    required NullableIndexedWidgetBuilder builder,
    required this.heights,
  }) : super(builder, childCount: heights.length);

  final List<double?> heights;

  @override
  double? estimateMaxScrollOffset(int firstIndex, int lastIndex,
      double leadingScrollOffset, double trailingScrollOffset) {
    return heights.reduce((sum, height) => (sum ?? 0) + (height ?? 0))!;
  }
}
