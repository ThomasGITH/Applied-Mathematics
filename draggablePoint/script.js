const canvas = document.getElementById('canvas');
const context = canvas.getContext('2d');
canvas.width = window.innerWidth;
canvas.height = window.innerHeight;

let DragPoint2 = new Point(100, 400, 20, "blue");
let DragPoint = new Point(200,200, 20,"red");
DragPoint.draw(context);
DragPoint2.draw(context);
DragPoint.drag();
DragPoint2.drag();

function animate(){
  context.clearRect(0,0,canvas.width,canvas.height);
  requestAnimationFrame(animate);
  DragPoint.draw(context);
  DragPoint2.draw(context);
}

animate();
