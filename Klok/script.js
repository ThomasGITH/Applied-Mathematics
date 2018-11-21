const canvas = document.getElementById('canvas');
const context = canvas.getContext('2d');
canvas.width = window.innerWidth;
canvas.height = window.innerHeight;

let midX = canvas.width / 2;
let midY = canvas.height / 2;

let face = new Image();
face.src = "images/cartoon_face.png";

let myTime = new Date();

let secondHand = new Image();
secondHand.src = "images/secondHand.png"

let minutesHand = new Image();
minutesHand.src = "images/minutesHand.png";

let hoursHand = new Image();
hoursHand.src = "images/hoursHand.png";

function animate()
{
  myTime = new Date();
  requestAnimationFrame(animate);
  context.clearRect(0,0, canvas.width, canvas.height);
  context.drawImage(face, midX-face.width/2, midY-face.height/2);
  console.log(myTime);

  context.save();
  context.translate(midX, midY);
  context.rotate(myTime.getSeconds()*2*Math.PI/60);
  context.drawImage(secondHand, -70, -233);
  context.restore();

  context.save();
  context.translate(midX, midY);
  context.rotate(myTime.getMinutes()*2*Math.PI/60);
  context.drawImage(minutesHand, -23, -180);
  context.restore();

  context.save();
  context.translate(midX, midY);
  context.rotate(myTime.getHours()*2*Math.PI/60);
  context.drawImage(hoursHand, -20, -115);
  context.restore();

}

animate();
