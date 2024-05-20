// Fiji Macro for Automated Spheroid Detection
// Macro 2 of 3 in the series

macro "Spheroid Detection - Merged TIF Analysis" {
    // Open the console and log windows to display outputs and logs during processing
    run("Console");
    IJ.log("Starting spheroid detection script.");

    // Set the directory containing the image files
    dir = getDirectory("Choose a directory containing the image files");

    // Get a list of all TIF files in the directory
    list = getFileList(dir);
    filter = "tif";

    // Configure the measurements to be recorded for each detected spheroid
    run("Set Measurements...", "area mean standard modal min integrated display redirect=None decimal=3");
    print("Measurement settings applied.");

    // Ask user if they want to use GPU
    useGPU = getBoolean("Do you want to use GPU for processing?", "Yes", "No");

    // Detect spheroids in images
    detectSpheroids(dir, list, filter, useGPU);
}


function detectSpheroids(dir, list, filter, useGPU) {
    for (i = 0; i < list.length; i++) {
        // Process only merged TIF images to ensure only relevant files are analyzed
        if (startsWith(list[i], "Merged_") && endsWith(list[i], filter)) {
            print("-----------------------------------------------------------------------------------------------");
            open(dir + list[i]);
            orgName = getTitle();
            print("Opened image file: " + orgName);
            orgName = File.getNameWithoutExtension(orgName);
            print("File name without extension: " + orgName);

            // Set image properties relevant to microscopy measurements
            pixelWidth = 0.6192967; // Pixel width in microns, adjust as per your microscope's calibration
            pixelHeight = 0.6192967; // Pixel height in microns, consistent with pixel width
            run("Properties...", "channels=2 slices=1 frames=1 unit=um pixel_width=" + pixelWidth + " pixel_height=" + pixelHeight + " voxel_depth=1");

            // Merge PI and FDA channels to visualize spheroid morphology in one image
            run("Stack to RGB");
            run("8-bit");
            run("Median...", "radius=10");
            print("Image converted to RGB, then 8-bit, and median filtered [10pix].");

            // Utilize Cellpose 2.0 with a cyto2 model to detect spheroids based on cell morphology
            if (useGPU) {
                additional_flags = "--use_gpu";
                print("Using GPU for Cellpose segmentation.");
            } else {
                additional_flags = ""; // Fall Back to CPU usage
                print("Using CPU for Cellpose segmentation.");
            }

            run("Cellpose Advanced", "diameter=100 cellproba_threshold=0.0 flow_threshold=0.4 anisotropy=1.0 diam_threshold=80.0 model=cyto2 nuclei_channel=0 cyto_channel=1 dimensionmode=2D stitch_threshold=-1.0 omni=false cluster=false additional_flags=" + additional_flags);
            print("Cellpose segmentation complete.");

            // Enhance segmentation accuracy by removing objects touching image borders
            run("Remove Border Labels", "left right top bottom");
            print("Border labels removed.");

            // Convert label images to ROIs for further analysis
            run("Label image to ROIs", "rm=[RoiManager[size=13, visible=true]]");
            print("Label image converted to ROIs.");

            // Save detected ROIs to a zip file for reproducibility and further analysis
            roiManager("Save", dir + File.separator + orgName + ".zip");
            print("ROIs saved to: " + dir + File.separator + orgName + ".zip");

            roiManager("Deselect");
            roiManager("Delete");
            close("*");

        }
    }
    print("-----------------------------------------------------------------------------------------------");
    showMessage("Detection process completed for all files.");
}
