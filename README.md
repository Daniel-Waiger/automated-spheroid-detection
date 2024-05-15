# Automated Spheroid Detection using Fiji

## Spheroid Detection - Merged '.tif' Analysis

### Overview
This macro is designed to automate the detection of spheroids in merged '.tif' images, streamlining the process of analyzing microscopy data. The script uses ImageJ/Fiji software to process images, applying advanced filtering and segmentation techniques.

### How to Use
1. Open Fiji.
2. Run the macro `Spheroid Detection - Merged tif Analysis`.
3. Select the directory containing the merged tif images when prompted.

### Requirements
- Fiji (ImageJ) must be installed.
- Images must be named starting with "Merged_" and ending in ".tif".

### Steps and Outputs

#### Step 1: Initialize and Configure
- The macro initializes the environment, opens the console, and logs the start of the process.
- **Snapshot:** `<img src="path/to/initialize_snapshot.png" alt="Initialization Snapshot">`

#### Step 2: Select Directory
- User is prompted to choose a directory containing the TIF images.
- **Snapshot:** `<img src="path/to/directory_selection_snapshot.png" alt="Directory Selection Snapshot">`

#### Step 3: File Filtering and Processing
- Filters and processes only the images that meet the naming criteria.
- **Snapshot:** `<img src="path/to/filtering_snapshot.png" alt="Filtering Snapshot">`

#### Step 4: Image Analysis
- Applies pixel size settings, merges channels, and converts the image for optimal analysis.
- **Snapshot:** `<img src="path/to/image_analysis_snapshot.png" alt="Image Analysis Snapshot">`

#### Step 5: Spheroid Detection
- Uses the Cellpose model to detect spheroids based on cell morphology.
- **Snapshot:** `<img src="path/to/detection_snapshot.png" alt="Detection Snapshot">`

#### Step 6: ROI Management and Saving
- Converts detected areas to ROIs, saves them, and clears the workspace.
- **Snapshot:** `<img src="path/to/roi_management_snapshot.png" alt="ROI Management Snapshot">`

#### Step 7: Completion
- Indicates the completion of processing for all files.
- **Snapshot:** `<img src="path/to/completion_snapshot.png" alt="Completion Snapshot">`
