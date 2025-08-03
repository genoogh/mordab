# Performance-Tweaks LITE

## Overview
A lightweight Magisk module designed to enhance Android device performance through system-level optimizations.

## Features
- **CPU Governor Optimization**: Sets CPU governor to performance mode for better responsiveness
- **I/O Scheduler Tuning**: Optimizes disk I/O with deadline scheduler
- **Memory Management**: Reduces swappiness and optimizes OOM killer behavior
- **Network Optimization**: Enables TCP optimizations for better network performance

## Module Information
- **Name**: Performance-Tweaks LITE
- **Version**: v1.0 LITE
- **Author**: @reljawa
- **Status**: Official Public Release
- **Compatibility**: Android devices with Magisk v20.4+

## Installation
1. Download the module ZIP file
2. Open Magisk Manager
3. Go to Modules section
4. Tap "Install from storage"
5. Select the downloaded ZIP file
6. Reboot your device

## What It Does
The module applies the following optimizations at boot:

### CPU Optimizations
- Sets CPU governor to "performance" for maximum performance

### Storage Optimizations
- Changes I/O scheduler to "deadline" for better disk performance

### Memory Optimizations
- Reduces swappiness to 10 (from default 60)
- Optimizes OOM (Out of Memory) killer behavior

### Network Optimizations
- Enables TCP low latency mode
- Enables TCP timestamps for better connection handling

## Logging
The module creates a log file at `/data/local/tmp/performance_tweaks.log` to track applied optimizations.

## Credits
- **Developer**: @reljawa
- **Source**: Young Update Source @Youngupdatesource
- **Indonesian Development Team**

## Disclaimer
This module modifies system parameters to improve performance. Use at your own risk. Some optimizations may increase battery consumption.

## Support
For support and updates, contact @reljawa or visit the Young Update Source community.

---
*Cihuyyy - Indonesian dev..!*