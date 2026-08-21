#import "template.typ": *


#show: project.with(
)
#info(
  name: "Tilen Žel",
  phone:"+386-41-915-775",
  email:"tilen.zel@gmail.com",
  location:"Ljubljana, Slovenia",
  //github:"github.com/TZ387"
)


= Education

#event(
  title:"University of Ljubljana",
  event:  link("https://www.fmf.uni-lj.si/en/")[ #v(0.2em) Faculty of Mathematics and Physics],
  location:"Master’s Degree (Physics)",
  indentation4:0.0em,
)[]
#v(-0.8em)
= Skills
#v(-0.45em)
#grid(gutter: 5pt,
columns:(1.05fr,2fr),
  rows: (20pt, 0pt),
  strong[#v(7pt)Languages and platforms:],
  [C/C++ #box(baseline: 30%,inset:1pt, image("img/cpp2.svg")) , Python #box(baseline: 30%,inset:1pt, image("img/python.svg")) , Matlab #box(baseline: 30%,inset:1pt, image("img/matlab.jpg")) , Julia #box(baseline: 30%,inset:1pt, image("img/julia.svg")), CUDA #box(baseline: 30%, image("img/cuda.svg"))],
  strong[#v(-0.0pt)Other:],
  [Microsoft Office, LaTeX/Typst, Medical Physics, Photonics],
)
#v(0.3em)
= Work experience
#v(-0.0em)
#event(
  date:"Sep 2021 - Present",
  title: link("https://www.fotona.com/en/")[Fotona],
  event:"R&D Engineer",
  indentation4:0.00em,
)[- Made major improvements in area of numerical simulations, which has led to significant benefits for research and regulatory approval of various devices.
- Participated in research projects involving laser technology, laser treatments, and laser-tissue interaction]

#event(
  date:"Oct 2018 - July 2021",
  title: link("https://www.fs.uni-lj.si/en/")[Faculty of Mechanical Engineering (FS)],
  event:"Research Aide",
  indentation4:0.02em,
)[- Assisted in developing a simulation of capillary tubes, which are a crucial component of various cooling devices, such as air conditioners and refrigerators.
- Analyzed the condensation of moist air in water condensers for different geometries and flow regimes.]

#event(
  date:"Dec 2019 - June 2021",
  title: link("https://ijs.si/ijsw/V001/JSI")[Jozef Stefan Institute (IJS)],
  event:"Research assistant (Master's degree)",
  indentation4:0.02em,
)[
- Analyzed spectroscopic measurements and optically scattering materials by using and modifying the Monte Carlo method in the CUDA platform and the C programming language.]

#v(-0.3em)
= Projects
#v(0.1em)

*Magnetic simulation for arbitrary coils (Fotona):* _Matlab, C, CUDA_

#v(-0.2em)
Modified a Matlab toolbox for calculation of magnetic field, improved it to enable calculation of induced current in tissue, and accelerated it by enabling its computation on graphic card using C and CUDA.

*Simulation of capillary tubes (FS):* _Matlab, C++, wxWidgets_

#v(-0.2em)
My work consisted of minor assistance in the creation of the original code in Matlab and re-implementation of the entire project to the C++ programming language, along with creation of a GUI.

*Simulation of radio-frequency heating (Fotona):* _Julia_

#v(-0.2em)
Created a simulation that determines 3D heat distribution in tissue after RF treatment for arbitrary (Dirichlet or Neumann) boundary conditions.

= Publications
#v(0.3em)
#publication(
  authors:([M. Lukač], [J. Košir], [T. Žel], [M. Kažič], [D. Šavli], [M. Jezeršek]),
  title:"Influence of tissue desiccation on critical temperature for thermal damage during Er:YAG laser skin treatments",
  booktitle:"Lasers in Surgery and Medicine",
  location:"",
  number:"56(1)",
  page:"107-118",
  date:"Nov. 2023",
  doi:"10.1002/lsm.23739",
  type:"journal",
)
#publication(
  authors:([B. Majaron], [T. Žel]),
  title:"Optical properties of Spectralon assessed by replication of literature data in Monte Carlo simulations",
  booktitle:"Proceedings Volume 12147, Tissue Optics and Photonics II; 1214704",
  location:"Strasbourg, France",
  number:"",
  page:"",
  date:"May 2022",
  doi:"10.1117/12.2620704",
  type:"conference",
)
#publication(
  authors:([P. Poredoš], [N. Petelin], [B. Vidrih], [T. Žel], [Q. Ma], [R. Wang], [A. Kitanovski]),
  title:"Condensation of water vapor from humid air inside vertical channels formed by flat plates",
  booktitle:"iScience 25(1)",
  location:"",
  number:"",
  page:"1--26",
  date:"Jan. 2022",
  doi:"10.1016/j.isci.2021.103565 ",
  type:"journal",
)