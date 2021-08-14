var canvas = document.getElementById('canvas');
var context = canvas.getContext('2d');

var radius = 10;

canvas.width = window.innerWidth;
canvas.height = window.innerHeight;

context.linewidth = radius * 2;

var dragging = false;

var putPoint = function(e){
    if(disengage){
    // arc Method 
    // context.arc(x, y, radius, startangle, endAngle, [antiClockwise]);
    context.lineTo(e.offsetX, e.offsetY);
    context.stroke();
    context.beginPath();
    context.arc(e.offsetX, e.offsetY, radius, 0, Math.PI * 2);
    context.fill();
    context.beginPath();
    context.moveTo(e.offsetX, e.offsetY);
}
}

var engage = function(e){
    dragging = true;
    putPoint(e);
}

var disengage = function(){
    dragging = false;
    context.beginPath();
}

//mousemove, mousedown, mouseup 등등
canvas.addEventListener('mousedown', engage);
canvas.addEventListener('mousemove', putPoint);
canvas.addEventListener('mouseup', disengage);