# automated-spheroid-detection

## Overview

This macro automates the process of detecting spheroids and analyzing live/dead ratios in merged `.tif` images. It iterates through images in a specified directory, processes each one, and saves the results.

## Pre-requisites
- [Fiji (ImageJ) Installation](https://fiji.sc)
- [Cellpose Installation](https://cellpose.readthedocs.io/en/latest/installation.html)
- [BIOP Cellpose Wrapper Manual](https://github.com/BIOP/ijl-utilities-wrappers?tab=readme-ov-file#cellpose) - to use Cellpose Advanced in Fiji.

## Usage Instructions

### 1. Start the Macro
1. Open Fiji (ImageJ).
2. Open the script editor (Plugins > New > Macro).
3. Copy and paste the provided macro code into the editor.
   - Or, you can drag-and-drop the macro file onto Fiji's main toolbar, [automated-spheroid-detection.ijm](https://github.com/Daniel-Waiger/automated-spheroid-detection/blob/main/automated-spheroid-detection.ijm.).


<p align="center">
  <img src="https://github.com/Daniel-Waiger/Ice-Crystal-Morphometry/assets/55537771/8abb6d99-0120-431d-898a-4f6cf91000a6" alt="Fiji Toolbar" style="width: 75%;" />
</p>
  
5. Run the macro (Run button in the script editor).

<p align="center">
  <img src="https://github.com/Daniel-Waiger/Ice-Crystal-Morphometry/assets/55537771/1882307d-c1f7-4871-a5eb-b3c939fc69a9" alt="script-editor-gui" style="width: 75%;">
</p>

6. When prompted, Choose the directory containing your merged `.tif` image files.
7. Monitor the console for progress logs.
8. Results: After completion, the measurements will be saved in CSV files within the selected directory, and ROIs will be saved as `.zip` files.

## Notes

- **Adjust Calibration:** Modify `pixelWidth` and `pixelHeight` values to match your microscope's calibration.
- **Cellpose Parameters:** Customize the parameters in the `Cellpose Advanced` function to suit your specific sample type and detection requirements.
- **Output:** Ensure the directory has write permissions to save results correctly.
