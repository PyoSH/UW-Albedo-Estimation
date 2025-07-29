# UW-Albedo-Estimation

## 1. Intro
In close-range underwater interactions, two information of object is needed: shape & surface information.
3D shape can be obtained by sonar, but precisice surface infos like texutre, colors are only can be captured by camera.
But in underwater (UW), 3 main issues(Attenuation, Scattering, Turbidity) make camera measurements differs by time & place.
To avoid measurement issues with UW domain, the surface information can be represented with _**albedo**_, fraction of light that is diffusely reflected by a body. (~from [NBUV, CVPR 2017](https://openaccess.thecvf.com/content_cvpr_2016/papers/Sheinin_The_Next_Best_CVPR_2016_paper.pdf))
And with _**albedo**_, we can estimate unknown object's surface texture & use as cost function for automated light-camera system(img in below)'s Next Best Sensor & Light View Planning. (also, from [NBUV](https://openaccess.thecvf.com/content_cvpr_2016/papers/Sheinin_The_Next_Best_CVPR_2016_paper.pdf))
<p align='center'>
  <img src="https://github.com/user-attachments/assets/ca33722d-f389-4298-9afc-2187cb95ad23" width="600">
</p>

In this project, I tried to implement albedo estimation to understand physical component of UW visual environments.

## 2. The physical model of UW visual environment

<p align='center'>
  <img src="https://github.com/user-attachments/assets/e85a3321-a802-425a-80fe-4e5f6dbbed23" width="300">
</p>

<p align='center'>
  <img src="https://github.com/user-attachments/assets/d2eb383b-3411-46aa-b478-d943f1854db1" width="400">
</p>

## 3. The pipeline of albedo estimation

<p align='center'>
  <img src="https://github.com/user-attachments/assets/624a81bd-df37-4b0d-8359-67b7bbdcd746" width="600">
</p>

## 4. Experiment & Validation

### Experiment setup
<p align='center'>
  <img src="https://github.com/user-attachments/assets/d1d4e885-4f69-4478-8fe8-4a05918b0b26" width="300">
</p>

<p align='center'>
  <img src="https://github.com/user-attachments/assets/bff8b7c0-f501-46a2-9aa9-bd6ab26e6a13" width="300">
</p>

### Validation results

<p align='center'>
  <img src="https://github.com/user-attachments/assets/8d63bd39-5f3b-4bbc-87cb-a58c6414600e" width="600">
</p>

## 5. So...

### Conclusion
- Surface information of target objects is essential for underwater task automation.
- In a simplified optical model of the underwater visual environment, surface information is represented by surface reflectance.
- The functionality of surface reflectance estimation was validated through a pipeline implementation in a simulator.
- For arbitrary poses and single images, an optimized pose combination and multiple images are required!

### Future Works
- Modeling more realistic underwater visual environments under conditions such as turbidity.
- Target objects with more complex structures and surface textures.
- Research on optimal camera and lighting positions for automated perception, including Next Best View (NBV) and coverage path planning.

