import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget {
  final String imageUrl;
  final double size;

  const UserProfileImage({required this.imageUrl, this.size = 38.0});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2 - size / 30),
      child: Image.network(
        imageUrl,
        height: size,
        width: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
