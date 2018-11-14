const canvas = document.getElementById('myCanvas');
const context = canvas.getContext('2d');
canvas.width = window.innerWidth;
canvas.height = window.innerHeight;

let car = new Image(),  street = new Image(), frontWheel = new Image(), rearWheel = new Image();
let position = new Vector2D(0,320), acceleration = new Vector2D(0,0), velocity = new Vector2D(3,0);

street.src = "Images/street.png";
car.src = "Images/car.png";
frontWheel.src = "Images/wheel.png";
rearWheel.src = "Images/wheel.png";

let rotation = 0;

car.addEventListener('load',()=>{
  position.dy = canvas.height - car.height-60;
  animate();
})

document.addEventListener('keydown',(evt)=>{
  if(evt.key == "ArrowRight"){
    acceleration.dx += 1;
  }
  if(evt.key == "ArrowLeft"){
    acceleration.dx -= 1;
  }
})

function animate(){
  context.clearRect(0,0,canvas.width,canvas.height);
  requestAnimationFrame(animate);

  context.drawImage(street,0,canvas.height / 8);
  rotation += velocity.dx /100;
  velocity.add(acceleration);
  position.add(velocity);
  context.drawImage(car, position.dx, position.dy);

  acceleration.mult(0);

  context.save();
  context.translate(position.dx+751,position.dy+200);
  context.rotate(rotation);
  context.drawImage(frontWheel,-80,-80)
  context.restore();

  context.save();
  context.translate(position.dx+210,position.dy+200);
  context.rotate(rotation);
  context.drawImage(rearWheel,-80,-80)
  context.restore();

  if(position.dx > canvas.width){
    position.dx = -car.width;
  }
  if(position.dx<-car.width){
    position.dx = canvas.width;
  }
}
