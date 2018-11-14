
class Point {
  constructor(x, y, color) {
    this.x = x;
    this.y = y;
    this.color = color;
    this.draggable = false;
  }

  draw(){
    context.beginPath();
    context.lineWidth = 5;
    context.strokeStyle = "green";
    context.fillStyle = this.color;
    context.arc(this.x,this.y,50,0,2*Math.PI);
    context.fill();
    context.closePath();
    context.stroke();
  }

  move(x, y)
  {
    context.arc(this.x + x,this.y + y,50,0,2*Math.PI);
  }
}

const canvas = document.getElementById('canvas');
const context = canvas.getContext('2d');

canvas.width = window.innerWidth;
canvas.height = window.innerWidth;

let pointList = [];

/*
for(let i = 0; i < 5; i++)
{
  for(let j = 0; j < 10; j++)
  {
    let myPoint = new Point(j * 200, i * 200,  "#" + Math.floor(randomNumber(255 * 255 * 256)).toString(16));
    myPoint.draw();
    pointList.push(myPoint);
  }
}
*/

for(let i = 0; i < 50; i++)
{
  let myPoint = new Point(randomNumber(window.innerWidth), randomNumber(window.innerWidth), "#" + Math.floor(randomNumber(255 * 255 * 256)).toString(16));
  myPoint.draw();
  pointList.push(myPoint);
}

function animate()
{
  requestAnimationFrame(animate);
  let myPoint = new Point(randomNumber(window.innerWidth), randomNumber(window.innerWidth), "#" + Math.floor(randomNumber(255 * 255 * 256)).toString(16));
  myPoint.draw();
}

animate();

function randomNumber(max)
{
  return Math.random() * max;
}
