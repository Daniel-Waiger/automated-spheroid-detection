# Automated Spheroid Detection in Fiji/ImageJ

## Overview

This macro automates the process of detecting spheroids and analyzing live/dead ratios in merged `.tif` images. It iterates through images in a specified directory, processes each one, and saves the results.

**Example - From Left to Right: Raw --> 8-bit Gray (after conversion from composite to RGB) --> Cellpose Label Image.**

<div style="display: flex; justify-content: center;">
  <img src="https://github.com/Daniel-Waiger/automated-spheroid-detection/assets/55537771/f814c448-3f04-4691-aef1-e13ec4f4caf2" alt="raw-spheroid-image" style="width: 33%; vertical-align: top;" />
  <img src="https://github.com/Daniel-Waiger/automated-spheroid-detection/assets/55537771/a9703b31-aab7-448b-94f9-2cce2254ae27" alt="gray-spheroid-image" style="width: 33%; vertical-align: top;" />
  <img src="https://github.com/Daniel-Waiger/automated-spheroid-detection/assets/55537771/a21816ce-5e76-484c-8394-99b564b19451" alt="cellpose-spheroid-image" style="width: 33%; vertical-align: top;" />
</div>



## Pre-requisites
- [Fiji (ImageJ) Installation](https://fiji.sc)
- [Cellpose Installation](https://cellpose.readthedocs.io/en/latest/installation.html)
### Plugins and how to install them:
   - [BIOP Cellpose Wrapper Manual](https://github.com/BIOP/ijl-utilities-wrappers?tab=readme-ov-file#cellpose) - to use Cellpose Advanced in Fiji.
      - [How to install plugins in Fiji](https://www.youtube.com/watch?v=DFz9xmWi63I&t=47s&ab_channel=Lost-in-the-Shell)
      - [Fiji FAQ - Quick How-to Manual](https://imagej.net/learn/faq)

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
