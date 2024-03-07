<h1 align="center">Studies on the applicability of the mechanical advantage hypothesis of grasping</h1>
During my Ph.D. in Neuromechanics, I conducted groundbreaking research focused on understanding the intricate relationship between neural control and mechanical behavior in human fingertips. Leveraging advanced techniques in data collection, analysis, and visualization, my study involved gathering fingertip force data from human participants to unravel underlying neuromuscular mechanisms. Employing sophisticated statistical analyses, I examined patterns within the collected data to discern key insights into motor control processes and sensorimotor integration. Utilizing data visualization tools, I effectively communicated complex findings, enabling compelling data storytelling and facilitating broader understanding within the scientific community. This interdisciplinary endeavor underscores my proficiency in integrating principles from biomechanics, neuroscience, and data science to unravel fundamental questions in human motor control.

<p align="center">
  <img src="https://github.com/Banuvathyrr/Ph.D-Thesis-project/assets/145739539/84a221ea-cf89-4435-a0ae-949bde2d62e6" width="600" height="800">
</p>

### Introduction

- For a long time, we have wondered about the strategy used by our brain to attain object stabilization while grasping an object that undergoes a change in size, shape, mass and surface property.
- The strategy used by the brain can be quantitatively assessed by measuring the fingertip forces generated while holding the object.
- Grasping force or the normal forces exerted by the individual fingers while performing a grasping task should be in such a way that it is neither too large to crush or damage the object nor too small to drop the object.
- Fine adjustment of the normal and tangential forces is essential for the successful completion of the task.
- Grip force is the normal force acting perpendicular to the surface of the object while load force is a tangential force acting parallel to the surface of the object to balance the weight of the object.
<p align="center">
  <img src="https://github.com/Banuvathyrr/Ph.D-Thesis-project/assets/145739539/47e5b64d-8eaf-40d3-8126-ef077dbe12d7" width="300" height="280">
</p>

### Motivation for the current research

- Motivation for the current study is that there are certain objects in real life like hand held pocket radio, Retractable ball point pens and pipette controllers that consists of slider on the thumb side for the fine adjustment of its functionality.
- The current research was inspired by observing such objects.
- This triggered to question on how object stabilization would be attained while holding a handle when the thumb is placed on a slider or an unsteady base.


<table>
  <tr>
    <td>Pocket radio</td>
     <td>Pipette controller</td>
     <td>Retractable ball point pen</td>
  </tr>
  <tr>
    <td><img src="https://github.com/Banuvathyrr/Ph.D-Thesis-project/assets/145739539/f6110ace-a2d6-4cde-85e5-9b3fcb9373d0" width=150 height=250></td>
    <td><img src="https://github.com/Banuvathyrr/Ph.D-Thesis-project/assets/145739539/0195df29-fc2a-4e0d-a9a4-d4a441bc724a" width=150 height=250></td>
    <td><img src="https://github.com/Banuvathyrr/Ph.D-Thesis-project/assets/145739539/00a7fbd4-2e16-4e26-a17a-53ad98f8fb5e" width=150 height=250></td>
  </tr>
 </table>


### Research Question
How object stabilization is achieved while holding a handle that consists of unsteady thumb base?

### Experimental apparatus
- A handle with slider platform was designed. 
- By this way, The friction between the platform and handle frame is reduced. This will in turn casue torque changes to the handle.
- Total mass of the handle including the slider platform is 535gms.
- On the thumb side of the handle frame, a vertical railing was fitted to mount the slider platform. A mechanical constraint was used to fix the position of the slider at the HOME position (that s found midway between middle and ring fingers).
- In the absence of mechanical constraint, slider could translate in the vertical direction over the railing like this.  Five 6 axis force/torque sensors were mounted to measure the fingertip forces of individual fingers and thumb.
- Force sensor for thumb was placed on the slider platform. A laser displ sensor was placed on top of the handle toward the thumb side  to measure the position of the slider platform. An acrylic block was attached on top in the anterior posterior direction to mount electromagnetic tracking sensor and bull’s eye.
- Bull’s eye provide tilt feedback to the participant.


<p align="center">
  <img src="https://github.com/Banuvathyrr/Ph.D-Thesis-project/assets/145739539/6a898dc3-a4bc-4d19-91df-d4b4f63c01f8" width="400" height="400">
</p>

### Data Collection

- Four experiments were conducted using the experimental apparatus.
- Around 100 participants volunteered to participate in the experiments.
- Each experiment had different task to be performed with the same experimental apparatus.
- The experiment involved set of trials. Each trial lasted for few seconds.
- Fingertip force data and position data was collected while performing each trial.

### Experiment description

### Tools used
- LabVIEW - The data was collected using a customized LabVIEW (LabVIEW Version 12.0, National Instruments) program
- Matlab - Offline data analysis was performed using MATLAB (Version R2016b,MathWorks, USA).
- R programming- Statistical analysis was performed using R.
- GPower - Statistical power and sample size computation using GPower software.
- Inkscape - Diagram of the handle and the setup drawn using Inkscape.
- Originlab - Bar graphs, line plots, scatter plots etc were plotted using Origin.

### Data Cleaning
- Checked for missing values and addessed it at the data collection stage itself.
- Checked for outliers

### Data Analysis
- Offline data analysis was performed using MATLAB (Version R2016b,MathWorks, USA).

- Following key indicators were computed: 
1) Normal force sharing %
2) Safety Margin
3) Average normal force
4) Average tangential force
5) Moment computation

 <p align="center">
  <img src="https://github.com/Banuvathyrr/Ph.D-Thesis-project/assets/145739539/b7e2e77b-723f-4448-bc4b-f0dda15408f5" width="500" height="400">
</p>



#### Synergy analysis
- Finger force covariation was quantified to examine the existence of synergy. 
- Synergy is defined as a set of elemental variables with a purpose of stabilizing a certain performance variable

#### Linear discriminant analysis
- To examine how the change in tangential force produced by the thumb affected the moments produced by normal forces and hence, the static equilibrium of the object, we used a Linear Discriminant Analysis (LDA).
- A linear discriminant classifier was trained with the set of data points on thumb tangential force and the moments mentioned above for the two conditions: Fixed (platform fixed) and Free (platform movable).
- The two different conditions: fixed and free were considered to be the two different classes for the purpose of LDA. 
- Both the classes were found to be linearly separable by a decision boundary that was constructed using LDA. 
- The classifier was trained with 405 data points on thumb tangential force and moment due to normal forces of the individual fingers.
- LDA was able to predict the test data at an accuracy of 98%, sensitivity of 100%, specificity and precision of 97%, false-positive rate of 2% for all four cases.

  <p align="center">
  <img src="https://github.com/Banuvathyrr/Ph.D-Thesis-project/assets/145739539/0fd072d6-7a98-4b8b-b28e-1131d87f655d" width="500" height="400">
</p>


#### Correlation analysis
- To find the relationship between the individual fingertip normal forces, correlation analysis was performed.

### Statistical analysis
- For the current research, repeated measures design has been adopted in designing all four experiments.    
- According to this design method, multiple measures were taken for the same variable, and same set of participants under different conditions.    
- By having a greater number of trials (repeated measures) with limited number of participants, a better statistical power can be achieved.  
- As a result, if there exists any effect, the statistical test that we employ can detect the effect accurately.  
- For statistical power computation, GPower software was used.

  <p align="center">
  <img src="https://github.com/Banuvathyrr/Ph.D-Thesis-project/assets/145739539/bdc5ac04-05c1-40f1-a6ef-dc3cbab9200d" width="500" height="700">
</p>

### Insights



