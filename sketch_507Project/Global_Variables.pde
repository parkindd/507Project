//Global Variables
boolean nodeMode = true;
boolean edgeMode = false;
boolean firstEdge = true;
Node firstNode;
Node[] nodes = new Node[0];
int partition_x1 = 250; 
Connection[] connections = new Connection[0];
Iteration save[] = new Iteration[0]; //Saves what nodes are in partition A, partition B can then be assumed

//Buttons
Button [] buttons = new Button[0];;
Button modeSwap = new Button(550,30,"Node");  
Button optimize = new Button(550,100, "Optimize");
