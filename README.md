# automated-spheroid-detection

## Overview

This macro automates the process of detecting spheroids and analyzing live/dead ratios in merged `.tif` images. It iterates through images in a specified directory, processes each one, and saves the results.

## Pre-requisites
- [Fiji (ImageJ) Installation](https://fiji.sc)
- [Cellpose Installation](https://cellpose.readthedocs.io/en/latest/installation.html)
- [BIOP Cellpose Wrapper Manual](https://github.com/BIOP/ijp-imagetoools/wiki/Cellpose) - to use Cellpose Advanced in Fiji.

## Usage Instructions

1. Run Fiji (ImageJ) and open the Macro editor (Plugins > New > Macro).
2. Copy and paste the macro code into the editor (Plugins > New > Macro).
3. Save the macro with a descriptive name (e.g., `Spheroid_Detection_Live_Dead.ijm`).
    - Or, you can drag-and-drop the macro file onto Fiji's main toolbar, [automated-spheroid-detection.ijm](https://github.com/Daniel-Waiger/automated-spheroid-detection/blob/main/automated-spheroid-detection.ijm.)
4. Run the macro (Macros > Run...) and select the saved macro file, or click the 'Run' button in the script editor.
5. When prompted, Choose the directory containing your merged `.tif` image files.
6. Monitor the console for progress logs.
7. Results: After completion, the measurements will be saved in CSV files within the selected directory, and ROIs will be saved as `.zip` files.

## Notes

- **Adjust Calibration:** Modify `pixelWidth` and `pixelHeight` values to match your microscope's calibration.
- **Cellpose Parameters:** Customize the parameters in the `Cellpose Advanced` function to suit your specific sample type and detection requirements.
- **Output:** Ensure the directory has write permissions to save results correctly.
