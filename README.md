# System Setup

1. Use bash
    - On windows, use https://wiki.ubuntu.com/WSL 
    - On OSX, your builtin bash _should_ suffice. 
    - On linux -- all set!
1. Install Anaconda on your system
    - Find the linux installation script and run it. 
    - Accept defaults, except I let it run conda init 
2. Create a conda environment for the class  
    ```bash
    conda create -n cse627 jupyterlab jupyter ipython ipykernel matplotlib
    
    ```  
3.  Activate the environment for this class 
    ```bash
    conda activate cse627 
    
    ```  
    
4.  Install the kernel
    ```
    python -m ipykernel install --user --name cse627
    
    ```  
5.  Clone the repo into an appropriate place
    ```
    mkdir -p Courses && cd Courses
    git clone https://github.com/MU-CSE627/MU-CSE627.git
    ```
7.  Launch jupyter
    ```
    jupyter lab
    ```
    Then, copy the URL including the token into your browser