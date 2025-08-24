# Image Deblurring Toolbox

This repository provides MATLAB and Python code for blind and non-blind image deblurring, including outlier handling and PSNR evaluation.

## Structure

- `run_ours_real_images.m`: Main MATLAB script to run blind deconvolution and save results.
- `cho_final_deconv/`: Contains non-blind deconvolution methods with outlier handling ([deconv_L2.m](cho_final_deconv/deconv_L2.m), [deconv_outlier.m](cho_final_deconv/deconv_outlier.m)).
- `utils/`: Utility functions for deblurring (e.g., kernel estimation, convolution, filtering).
- `PSNR.ipynb`: Python notebook for evaluating PSNR of input and output images.
- `input*.bmp`, `output*.bmp`: Example input and output images.
- `HW3.pdf`: Reference document.

## Usage

### MATLAB

1. Place your input images (`input1.bmp`, `input2.bmp`, `input3.bmp`) in the root directory.
2. Run the main script in MATLAB:
   ```matlab
   run_ours_real_images
   ```
   This will generate deblurred outputs (`output1.bmp`, `output2.bmp`, `output3.bmp`).

### Python (PSNR Evaluation)

1. Install dependencies:
   ```sh
   pip install numpy scikit-image tensorflow
   ```
2. Open and run [PSNR.ipynb](PSNR.ipynb) to compute PSNR for input and output images.

## References

- Sunghyun Cho, Jue Wang, Seungyong Lee, "Handling Outliers in Non-blind Image Deconvolution," ICCV 2011.
- [Project page](https://sites.google.com/site/jspanhomepage/)

## Citation

If you use this code for research, please cite the referenced paper.

## License

For academic use only. All rights reserved by the original authors.