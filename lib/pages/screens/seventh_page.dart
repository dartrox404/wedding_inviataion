import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gap/gap.dart';
import 'package:latlong2/latlong.dart';
import 'package:weeding_invitation/core/const/app_sizes.dart';
import 'package:weeding_invitation/core/theme/app_styles.dart';

class SeventhPage extends StatefulWidget {
  const SeventhPage({super.key});

  @override
  State<SeventhPage> createState() => _SeventhPageState();
}

class _SeventhPageState extends State<SeventhPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/17.webp'),
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Text(
                'GMK MARQUEE',
                style: AppTextStyles.h2.copyWith(
                  fontFamily: 'poppins',
                  color: Colors.white,
                ),
              ),
              Text(
                'New Lahore Road Narowal',
                style: AppTextStyles.bodyLarge.copyWith(
                  fontFamily: 'raleway',
                  color: AppTextStyles.white,
                ),
              ),
              const Gap(AppSizes.kspace24),
              ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.kradiusLg),
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: FlutterMap(
                    options: MapOptions(
                      initialCenter: LatLng(32.10197, 74.87303),
                      initialZoom: 11,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName: 'com.example.weeding_invitation',
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(32.10197, 74.87303),
                            child: const Icon(
                              Icons.location_pin,
                              color: Colors.red,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(AppSizes.kspace24),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTextStyles.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSizes.kspace10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'View on GoogleMap',
                    style: AppTextStyles.bodyMedium.copyWith(
                      fontFamily: 'poppins',
                      color: AppTextStyles.classicgold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
