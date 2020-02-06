# Selected Topics in Mathematical Optimization

![](totoro.png)

*Edition 2019-2020*

**Michiel Stock**

**Maxime Van Haeverbeke**

This repository contains the notes and exercises of the optimization course given in the Master of Bioinformatics Bioscience Engineering and Systems Biology at Ghent University.

The goal of this course is to give students a general overview of the rich field of mathematical optimization. This course will put a particular emphasis on practical implementations and performance. After this course, students should be able to formulate problems from computational biology as optimization problems and be able to interpret, understand, and implement new optimization algorithms.

As of 2020, we have chosen to move this course from Python to the new [Julia programming language](https://julialang.org/). This is not because we are too cool for Python (though we *are* too cool for Python), but because Julia is supremely suited for scientific computing. Furthermore, Julia code can be made extremely performant, on par with optimized C code. We don't expect students to fully optimized code, but throughout, we will give hint and guidelines on how to generally improve implementations, in Julia or other programming languages. No prior knowledge of Julia is needed. We will learn while doing it! If you get lost, we recommend taking a look at the [cheat sheet](https://juliadocs.github.io/Julia-Cheat-Sheet/).

## Using this repo

If you have *Julia* and *IJulia*-notebooks installed, clone the repo (check the section on GitHub below if you don't know what this means) and work locally in the notebooks, this is recommended as it is the only way to save your work. Otherwise, click on the badge below to open a Binder session or check the *installation instructions* below to install *Julia* and *IJulia*-notebooks.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/MichielStock/STMO/6d8ef3594ea8fc7058204d63dd02bc0ae3f1fc4a)

<<<<<<< HEAD
While using Binder is convenient in the short term, it will take a while to start up every time and will only allow you to follow along with the notebooks, without having the ability to save your work.
=======
While using Binder is convenient in the short term, it will take a while to start up every time, and it will only allow you to follow along with the notebooks, without having the ability to save your work.

All notebooks and pdf notes are generated from the `.jmd` files in all the chapter folders. These can be build by running the `build.jl` script in Julia:

```julia
include("build.jl")
```

In addition to the Jupyter notebooks and PDF notes, running this script also generates some example figures. All PDF notes will also be made available on Ufora.

This repository also represents a Julia package, which can be loaded in the Julia REPL.

```julia
using STMO
```

This package contains the solution to most implementation exercises in this course. It also includes a wealth of helper functions for plotting etc.

## Course content

1. Intro to Julia and bracket search
2. Quadratic optimization
3. Unconstrained convex optimization
4. Constrained convex optimization
5. Automatic differentiation
6. Optimal transportation
7. Minimum spanning trees
8. Shortest path problems
9. NP-hard problems
10. Meta-heuristics
>>>>>>> 6d8ef3594ea8fc7058204d63dd02bc0ae3f1fc4a


## Installation instructions

### Github

Using Git or Github desktop is recommended for this course. In case you don't already have git or Github installed, this can be done by following the instructions for your operating system here [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) for Git and [here](https://desktop.github.com/) for GitHub desktop. Using git, clone (i.e., download the files of) the course repository by typing
```
git clone https://github.com/MichielStock/STMO.git
```
In the command prompt, after navigating to where you want to save the course files.

### Installing Julia

1. Download the *Julia* binaries for your system [here](https://julialang.org/downloads/) we suggest installing the Long-term support release, v1.0.5
2. Check the [Platform Specific Instructions](https://julialang.org/downloads/platform.html) of the official website to install *Julia*

### Installing the STMO package

All required packages for this course are bundled together in the STMO package, which can be installed as follows.

In Julia, enter *package mode* by pressing the "`]`" key.  All required packages will be installed by then typing (or copying) at the `(v1.2) pkg> ` prompt:
```
add https://github.com/MichielStock/STMO.git
```

> This course is work in progress and will likely be updated throughout the year. At the start of every lecture, it is a good idea to update the package by typing `update STMO` in the package mode and rebasing your repository to be in sync with the `master` branch.

### Running the IJulia Notebook

If you are comfortable managing your own Python/Jupyter installation, you can just run `jupyter notebook` yourself in a terminal. To simplify installation, you can alternatively type the following in Julia, at the `julia>` prompt:
```julia
using IJulia
notebook()
```
to launch the IJulia notebook in your browser.

The first time you run `notebook()`, it will prompt you
for whether it should install Jupyter.  Hit enter to have it use the [Conda.jl](https://github.com/Luthaf/Conda.jl) package to install a minimal Python+Jupyter distribution (via [Miniconda](http://conda.pydata.org/docs/install/quick.html)) that is private to Julia (not in your `PATH`).
On Linux, it defaults to looking for `jupyter` in your `PATH` first, and only asks to installs the  Conda Jupyter if that fails; you can force it to use Conda on Linux by setting `ENV["JUPYTER"]=""` during installation (see above).  (In a Debian or Ubuntu  GNU/Linux system, install the package `jupyter-client` to install the system `jupyter`).
<<<<<<< HEAD

=======
[source](https://raw.githubusercontent.com/JuliaLang/IJulia.jl/master/README.md)
>>>>>>> 6d8ef3594ea8fc7058204d63dd02bc0ae3f1fc4a
