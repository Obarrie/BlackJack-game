var currentScene = 2;
var currentMoney = 0;
var currentBet = 0;
var playerHand = [];
var dealerHand = [];
var playerScore = 0;
var dealerScore = 0;
var deck = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"];
var DrawBitmoji= function (x, y, DiazH) // bitmoji function
            {
        noStroke();
        
        fill(214, 108, 55); //fill to skin tone
        ellipse(x-(DiazH/150) ,y-(DiazH/150),DiazH/150*83,DiazH/150*100); //head
        
        fill(255, 255, 255); 
        arc(x-(DiazH/150*40),y+(DiazH/150*37),DiazH/150*30,DiazH/150*55,DiazH/150*2000,DiazH/150*361); //left chisel
        arc(x+(DiazH/150*42), y+(DiazH/150*37), DiazH/150*28, DiazH/150*55, DiazH/150*2000,DiazH/150*361); //right chisel
        
        fill(0, 0, 0);// black hair
        quad(x-(DiazH/150*50),y-(DiazH/150),x-(DiazH/150*37),y-(DiazH/150*32),x-(DiazH/150*10),y-(DiazH/150*50),x-(DiazH/150*30),y-(DiazH/150*1)); //left hair
        
        quad(x+(DiazH/150*49),y-(DiazH/150*2),x+(DiazH/150*34),y-(DiazH/150*32),x+(DiazH/150*13),y-(DiazH/150*50),x+(DiazH/150*35),y-(DiazH/150*3)); //right hair 
        ellipse(x-(DiazH/150),y-(DiazH/150*37),62*DiazH/150,28*DiazH/150); //top hair
        stroke(0, 0, 0); // stroke to black for glasses
        
        fill(255, 255, 255);// fill to skin tone around my eye in glasses
        ellipse(x-(DiazH/150*11),y-(DiazH/150),19*DiazH/150,14*DiazH/150); //glasses left 
        ellipse(x+(DiazH/150*15),y-(DiazH/150),DiazH/150*19,DiazH/150*14); // glasses right
        line(x-(DiazH/150*1),y-(DiazH/150*2),x+(DiazH/150*3),y-(DiazH/150*2)); // glasses nose bidge line(61,98,79, 98);
        line(x-(DiazH/150*39),y-(DiazH/150*2),x-(DiazH/150*21),y-(DiazH/150*2)); // glasses side left 
        line (x+(DiazH/150*24),y-(DiazH/150*2),x+(DiazH/150*39),y-(DiazH/150*2)); //glasses side right
        
        fill(115, 23, 23); //brown eyes fill
        ellipse(x-(DiazH/150*10),y-(DiazH/150),DiazH/150*6,DiazH/150*4); //left eye
        ellipse(x+(DiazH/150*17),y-(DiazH/150),DiazH/150*6,DiazH/150*4); //right eye
        
        fill(207, 107, 0); //fill to skin tone
        bezier (x-(DiazH/150),y-(DiazH/150),x+(DiazH/150*21), y+(DiazH/150*22), x-(DiazH/150*8), y+(DiazH/150*20), x-(DiazH/150*4),y+(DiazH/150*15)) ;//nose
        
        
        fill(255,255,255); //white fill for teeth
        arc(x+(DiazH/150*3), y+(DiazH/150*25),DiazH/150*30,DiazH/150*13,DiazH/150,DiazH/150*-259);
        // mouth
        line (x-(DiazH/150*14),y+(DiazH/150*24),x+(DiazH/150*19),y+(DiazH/150*24)); 
        //top of mouth
        
        
        noStroke();
        fill(214,108, 55); // neck fill
        rect(x-(DiazH/150*24),y+(DiazH/160*46),DiazH/150*51,DiazH/150*19); // neck 
        rect(x-(DiazH/150*24),y+(DiazH/150*39),DiazH/150*25,DiazH/150*17);// neck
        rect(x+(DiazH/150*3),y+(DiazH/150*50),DiazH/150*25,DiazH/150*-23); // neck
        
        
        fill(255, 0, 0);
        quad(x-(DiazH/150*74), y+(DiazH/150*114), x+(DiazH/150*80), y+(DiazH/150*117), x+(DiazH/150*28), y+(DiazH/150*66), x-(DiazH/150*23), y+(DiazH/150*66));// chest
        
        
        fill(0, 0, 0); 
        textSize(7);
        text("MD POLO", x-(DiazH/150*23), y+(DiazH/150*97)); 
        }; 
var bitmojihead =function(x,y,h) {
// face
fill(113, 65, 55);//color skin
ellipse(x-0*h/150,y-0*h/150,77*h/150,100*h/150); //Head
fill(247, 239, 239); //color for top of hat
//hat
ellipse(x-0*h/150,y-39*h/150,95*h/150,50*h/150); //top of hat
fill(5, 5, 5);//color for flap of hat
arc(x+8*h/150,y-39*h/150, 150*h/150, 52*h/150, 46, 150); //flap of hat
fill(247, 239, 239); // color for second ellipse
ellipse(x+5*h/150,y-42*h/150,40*h/150,18*h/149); // second ellipse to cover arc

//ears
fill(113, 65, 55);
arc(x-39*h/150,y+7*h/150,15*h/150,24*h/150,-1,362);
arc(x+38*h/150,y+7*h/150,15*h/150,24*h/150,-1,362);

//eyes
fill(247, 239, 239);
ellipse(x-16*h/150,y-0*h/150,19*h/150,14*h/150); //left eye
ellipse(x+18*h/150,y-0*h/150,19*h/150,14*h/150); //right eye
fill(15, 13, 13); //eyeball color
ellipse(x-15*h/150,y-0*h/150,6*h/150,4*h/150); // left eyeball
ellipse(x+19*h/150,y-0*h/150,6*h/150,4*h/150); // right eyeball

//Nose
stroke(15, 13, 13); //outline for nose
fill(113, 65, 55); // color of nose
bezier(x-0*h/150,y+5*h/150,x+21*h/150,y+18,x-3*h/150,y+26*h/150,x-5*h/150,y+12*h/185); //shape for nose

//lips
noStroke();
fill(201,130,118);//color for lips
arc(x+0*h/150,y+35*h/150,30*h/150,7*h/150,1,180);//bottom lip
arc(x+0*h/150,y+32*h/150,30*h/150,4*h/150,1,180); // top lip
}; // My bitmoji code

var bitmojibody =function (x,y,h) {
//body
fill(113, 65, 55);//color skin
triangle(x-0*h/150, y+42*h/150, x+91*h/150, y+91*h/150, x-80*h/150, y+92*h/150);    
//shirt
fill(128, 115, 112); //shirt color
rect(x+90*h/150, y+144*h/150, -170*h/150, -85*h/150);//shirt
fill(5, 5, 5);//color for triangle
//-> FIRST TRIANGLE: triangle(x-100*h/150, y+40*h/150, x-26*h/150, y+56*h/150, x-80*h/150, y+93*h/150);//left triangle to make shape
fill(5, 0, 0); //color for triangles
// -> SECOND TRIANGLE: triangle(x+35*h/160, y+56*h/150, x+96*h/150, 165-y*h/150, x+156*h/150, y+48*h/143);//right triangle to make shape

//Chain
fill(211,211,211); //color for chain
arc(x+1*h/150,y+54*h/150,67*h/150,5*h/150,-22,211); //chain

//Name
fill(247, 242, 242);
textSize(30*h/150);
text("OB", x-20*h/150,y+95*h/150,210*h/150,214*h/150);
textSize(11*h/150);
fill(5,5,5);
text ("NO FRAUDS",x-32*h/150,y-50*h/150,204*h/150,214*h/150);
}; // My bitmoji code

var drawbitmoji=function(x,y,h) {
    bitmojihead(x,y,h);
    bitmojibody(x,y,h);
}; // My bitmoji code
var Card = function(x, y, width, height, suit, value){
    this.x = x || 0;
    this.y = y || 0;
    this.width = width || 109;
    this.height = height || 50;
    this.suit = suit || "suit";
    this.value = value || "" ;
};

var draw_card = function(Card) {
    fill(255, 255, 255);
    rect(Card.x, Card.y, Card.width, Card.height);
    fill(0, 0, 0);
    // println(Card.value);
    textSize(25);
    text(Card.value, Card.x + 20, Card.y + 27);
    textSize(13);
    text(Card.suit, Card.x + 7, Card.y + 90);
    
};

var card_array = [];

for(var i = 0; i < 4; i ++) { // looping thru the suits
    for (var j = 1; j < 14; j ++) { // looping thru the values
    var value;
    // 12 is queen, 11 is jack, 1 is ace
    if (j === 13) {
        value = "King";
    } else {
        value = j;
    }
    var lone_card;
        if (i === 0) {
            lone_card = new Card(0, 0, 50, 100, "hearts", value); // 3
        }
        // 1 of hearts, 2 of hearts, 3 of hearts
        if (i === 1) {
            lone_card = new Card(0, 0, 20, 50, "spades", value);
        }
        if (i === 2) {
            lone_card = new Card(0, 0, 20, 50, "diamonds", value);
        }
        if (i === 3) {
            lone_card = new Card(0, 0, 20, 50, "clubs", value);
        }
    card_array.push(lone_card);
    }
}
//println(card_array.length);
for (var i = 0; i < card_array.length; i ++) {
    //println(card_array[i].value + " of " + card_array[i].suit);
}
// 1                    11  12 13
// A 2 3 4 5 6 7 8 9 10 J   Q   K
draw_card(card_array[0]);
card_array[1].x = 100;
card_array[1].y = 0;
draw_card(card_array[1]);


// Used to code the buttons. Made using parameters for them easier
var card = function(config){
this.x = config.x || 0;
    this.y = config.y || 0;
    this.width = config.width || 109;
    this.height = config.height || 50;
    this.suit = config.suit || "Suit";
    this.number = config.number || -1 ;
};

var cards = [card];

var Button = function(config) {
    this.x = config.x || 0;
    this.y = config.y || 0;
    this.width = config.width || 109;
    this.height = config.height || 50;
    this.label = config.label || "Click";
    this.onClick = config.onClick || function() {};
};

Button.prototype.draw = function() {
    fill(255, 0, 205);
    rect(this.x, this.y, this.width, this.height, 5);
    fill(0, 0, 0);
    textSize(19);
    textAlign(LEFT, TOP);
    text(this.label, this.x+10, this.y+this.height/4);
};

Button.prototype.isMouseInside = function() {
    return mouseX > this.x &&
           mouseX < (this.x + this.width) &&
           mouseY > this.y &&
           mouseY < (this.y + this.height);
};

Button.prototype.handleMouseClick = function() {
    if (this.isMouseInside()) {
        this.onClick();
    }
};

var btnStand = new Button({  // button for stand
    x: 215,
    y: 235,
    label: "   Stand",
    onClick: function() {
        println(3);
    }
});

btnStand.draw();

var playerHit = function() { // for the hit button
    fill(255, 255, 255);
    rect(Card.x, Card.y, Card.width, Card.height);
    fill(0, 0, 0);
    // println(Card.value);
    textSize(25);
    text(Card.value, Card.x + 20, Card.y + 27);
    textSize(13);
    text(Card.suit, Card.x + 7, Card.y + 90);
    playerScore = playerScore + Card.value;
    println(2);
};

var btnHit = new Button({ // button for hit 
    x: 65,
    y: 235,
    label: "      Hit",
    onClick: function() {
      deck[floor (random(0,deck.length))]; 
    }
});

btnStand.draw();

mouseClicked = function() {
    btnStand.handleMouseClick();
    btnHit.handleMouseClick();
};
var Card = function(x, y, width, height, suit, value){
    this.x = x || 0;
    this.y = y || 0;
    this.width = width || 109;
    this.height = height || 50;
    this.suit = suit || "suit";
    this.value = value || "" ;
};

var card_array = [];
 // This is the function were I draw the second scene were the game is played

    var secondScene = function(){
      
    background(255, 0, 0);
      currentBet = 0;  
      
for (var i = 0; i < 4; i++){
    fill(0, 0, 0);
    ellipse(i*104 + 46, 350 , 75, 75);
    fill(255, 0, 255);
    textSize(30);
    text("  "+ 100 * (i + 1) ,105*i,333);
    text("  " + currentBet  , 30, 49);  
    btnStand.draw();
    btnHit.draw();
}

//  mouseClicked = function() {
//      if ( mouseX > 10 && mouseX < 86  && mouseY > 314 && mouseY < 390){
//          currentBet = currentBet + 100; 
         
//      } else if ( mouseX > 40 && mouseX < 185  && mouseY > 314 && mouseY < 390){
//          currentBet = currentBet + 200; 
//      } else if ( mouseX > 40 && mouseX < 295  && mouseY > 314 && mouseY < 390){
//          currentBet = currentBet + 300; 
//      } else if ( mouseX > 40 && mouseX < 400  && mouseY > 314 && mouseY < 390) {
//          currentBet = currentBet + 400; 
//      } // change numbers 
     
//         println(currentBet);
//  };
   
    };
    
var btnStart = new Button({ //Code for start button on the splash screen
    x:123,
    y:330,
    width:150,
    height:65,
    color:color(247, 250, 250),
    label:"Start Game",
    onClick: function() {
    currentScene = 2;
    secondScene();
    }
});

//Code for the first scene with all the info and the start button
var splashScreen = function() {
    background(18, 3, 3);
    fill(240, 240, 240);
    textSize(24);
    text("Osman Barrie And Marcus Diaz", 30, 25);
    textSize(15);
    text(" This is Black Jack.To play the game   ", 1, 222);
    drawbitmoji(102,127,86);
    btnStart.draw();
    DrawBitmoji(274,127,100);
        };


mouseReleased = function(){ // when mouse released for the buttons to work
    if (currentScene === 1) {
        btnStart.handleMouseClick();
    }
    };
    
    
//Code to draw the scenes for one and two. And to have them show up in order with the splashscreen first and the scene 2 or the game scene 2
for(var i = 0; i < 4; i ++) { // looping thru the suits
    for (var j = 1; j < 14; j ++) { // looping thru the values
    var value;
    // 12 is queen, 11 is jack, 1 is ace
    if (j === 13) {
        value = "King";
    } else {
        value = j;
    }
    var lone_card;
        if (i === 0) {
            lone_card = new Card(0, 0, 50, 100, "hearts", value); // 3
        }
        // 1 of hearts, 2 of hearts, 3 of hearts
        if (i === 1) {
            lone_card = new Card(0, 0, 20, 50, "spades", value);
        }
        if (i === 2) {
            lone_card = new Card(0, 0, 20, 50, "diamonds", value);
        }
        if (i === 3) {
            lone_card = new Card(0, 0, 20, 50, "clubs", value);
        }
    card_array.push(lone_card);
    }
}

//println(card_array.length);

for (var i = 0; i < card_array.length; i ++) {
    //println(card_array[i].value + " of " + card_array[i].suit);
}

// Function to deal a card to the player

function dealToPlayer() {
  // Choose a random card from the deck
  var card = deck[Math.floor(Math.random() * deck.length)];

  // Add the card to the player's hand
  playerHand.push(card);

  // Update the player's score
  if (card === "A") {
      
    // Ace can be worth 1 or 11 points
    
    if (playerScore + 11 <= 21) {
      playerScore += 11;
    
    } else {
      playerScore += 1;
    
    }
 
  } else if (card === "J" || card === "Q" || card === "K") {
    // Face cards are worth 10 points
    playerScore += 10;
  
  
  } else {
    // All other cards are worth their face value
   playerScore += card;
  }
}
draw = function() {
     if (currentScene === 1) {
         splashScreen(); 
     } else if (currentScene === 2) {
        secondScene();
     }
 };
