# UW-Albedo-Estimation
In close-range underwater interactions, two information of object is needed: shape & surface information.
3D shape can be obtained by sonar, but precisice surface infos like texutre, colors are only can be captured by camera.
But in underwater (UW), 3 main issues(Attenuation, Scattering, Turbidity) make camera measurements differs by time & place.
To avoid measurement issues with UW domain, the surface information can be represented with _**albedo**_, fraction of light that is diffusely reflected by a body. (~from [NBUV, CVPR 2017](https://openaccess.thecvf.com/content_cvpr_2016/papers/Sheinin_The_Next_Best_CVPR_2016_paper.pdf))
And with _**albedo**_, we can estimate unknown object's surface texture & use as cost function for automated light-camera system's Next Best Sensor & Light View Planning. (also, from [NBUV](https://openaccess.thecvf.com/content_cvpr_2016/papers/Sheinin_The_Next_Best_CVPR_2016_paper.pdf))

In this project, I tried to implement albedo estimation to understand physical component of UW visual environments.
