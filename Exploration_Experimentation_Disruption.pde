/**

1. Briefly outline how you’ve taken your work beyond in class exercises through exploration and experimentation 

As a Computer Science student, I am familiar with the fundamentals of different concepts in programming 
like primitive data types, scoping, invoking functions, and object-oriented programming. 
I would say that I was able to apply some advanced programming techniques in creating this drawing program project
that is beyond what was taught in class:

    A. 
    In order to achieve a clean and understandable code, I applied the principle of object-oriented programming in 
    this project. Instead of using primitive data types in defining brush stroke weight, opacity, color, and shape, I 
    defined a Brush class that could be instantiated and initialized with initial values of weight, opacity, color, and
    shape which are the properties of the brush object. I also defined brush object methods that is called depending
    on what the user intents to do with the brush like increasing and decreasing opacity and size of the brush stroke/fill
    and using the brush itself in the draw() function. Also, I defined a Button class in creating buttons on the palette bar.
    
    B. 
    In displaying the buttons, instead of manually creating button objects, I used a looping technique to iteratively
    lay out the buttons on the palette bar. This way, I don't have to manually calculate the positioning of each button 
    because there is already an algorithm the computes where to put the succeeding buttons.
    
    C. 
    I used array to store color elements that is eventually iterated through a for-loop to initialize color property
    of button objects.
    
    D. 
    I experimented using processing's built-in function cursor() to manipulate the look of the mouse pointer depending 
    on which element it hovers on. This made the drawing program more intuitive to use. 
    
    E. 
    I experimented using processing's built-in function save() to take a screenshot image of the program's window.
    Also, to enable the user to save multiple images without worrying about overwritting old image files, saved images are
    named based on the date/time it was saved.


*/
