// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

class BlobWidget extends StatelessWidget {
  final Color? color;
  final int? strokeWidth;
  const BlobWidget({
    Key? key,
    this.color,
    this.strokeWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Blob.random(
      size: 200,
      edgesCount: 10,
      styles: BlobStyles(
        strokeWidth: strokeWidth ?? 1,
        fillType: BlobFillType.stroke,
        color: color ?? Colors.grey.shade600,
      ),
      minGrowth: 6,
    );
  }
}

List<Widget> blobList = [
  const Positioned(top: -60, left: -120, child: BlobWidget()),
  const Positioned(top: -60, right: -120, child: BlobWidget()),
  const Positioned(bottom: -60, left: -60, child: BlobWidget()),
  const Positioned(bottom: -60, right: -110, child: BlobWidget()),
];

List<Widget> clubBlobList = [
  const Positioned(
    top: -50,
    right: -70,
    child: BlobWidget(
      color: Colors.white,
      strokeWidth: 2,
    ),
  ),
  const Positioned(
    bottom: -50,
    left: -70,
    child: BlobWidget(
      color: Colors.white,
      strokeWidth: 2,
    ),
  ),
  const Positioned(
    bottom: -50,
    right: -70,
    child: BlobWidget(
      color: Colors.white,
      strokeWidth: 2,
    ),
  ),
];
