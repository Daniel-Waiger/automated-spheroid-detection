# automated-spheroid-detection

## Overview

This macro automates the process of detecting spheroids and analyzing live/dead ratios in merged `.tif` images. It iterates through images in a specified directory, processes each one, and saves the results.

## Usage Instructions

1. Run Fiji (ImageJ) and open the Macro editor (Plugins > New > Macro).
2. Copy and paste the macro code into the editor.
3. Save the macro with a descriptive name (e.g., `Spheroid_Detection_Live_Dead.ijm`).
4. Run the macro (Macros > Run...) and select the saved macro file.
5. Choose the directory containing your merged `.tif` image files when prompted.
6. Monitor the console for progress logs.
7. Results: After completion, the measurements will be saved in CSV files within the selected directory, and ROIs will be saved as `.zip` files.

## Notes

- **Adjust Calibration:** Modify `pixelWidth` and `pixelHeight` values to match your microscope's calibration.
- **Cellpose Parameters:** Customize the parameters in the `Cellpose Advanced` function to suit your specific sample type and detection requirements.
- **Output:** Ensure the directory has write permissions to save results correctly.
