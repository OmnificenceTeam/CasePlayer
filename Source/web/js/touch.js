// JavaScript source code
var canvas, ctx, flag = false,
    prevX = 0,
    currX = 0,
    prevY = 0,
    currY = 0,
    dot_flag = false;

var canvas = document.getElementById("can");
var context = canvas.getContext('2d');

var pageX = "", pageY = "";

var x = "black",
    y = 2;

function drawCan() {

    var clearCan = document.getElementById("my").style.zIndex;
    if (clearCan == "0") {
        document.getElementById("pen").src = "img/whitepen.png"
        return init();
    }
    else {
        
        return clearAll();
    }
}

function init() {
    canvas = document.getElementById('can');
    document.getElementById("can").style.visibility = "visible";
    document.getElementById("my").style.zIndex = "3";
    //ctx = canvas.getContext("2d");
    var context = canvas.getContext('2d');
    //img = document.getElementById("zoomImage");
    //ctx.drawImage(img, 6, 6, 390,390);

    w = canvas.width;
    h = canvas.height;

    //canvas.addEventListener("mousemove", function (e) {
    //    findxy('move', e)
    //}, false);
    //canvas.addEventListener("mousedown", function (e) {
    //    findxy('down', e)
    //}, false);
    //canvas.addEventListener("mouseup", function (e) {
    //    findxy('up', e)
    //}, false);
    //canvas.addEventListener("mouseout", function (e) {
    //    findxy('out', e)
    //}, false);
    var drawer = {
        isDrawing: false,
        touchstart: function (coors) {
            context.beginPath();
            context.moveTo(coors.x - 122, coors.y -150);
            this.isDrawing = true;
        },
        touchmove: function (coors) {
            if (this.isDrawing) {
                context.lineTo(coors.x - 122, coors.y -150);
                context.stroke();
            }
        },
        touchend: function (coors) {
            if (this.isDrawing) {
                this.touchmove(coors);
                this.isDrawing = false;
            }
        }
    };
    function draw(event) {
        // get the touch coordinates
        var coors = {
            x: event.targetTouches[0].pageX,
            y: event.targetTouches[0].pageY
        };
        // pass the coordinates to the appropriate handler
        drawer[event.type](coors);
    }

    // attach the touchstart, touchmove, touchend event listeners.
    canvas.addEventListener('touchstart', draw, false);
    canvas.addEventListener('touchmove', draw, false);
    canvas.addEventListener('touchend', draw, false);
    // prevent elastic scrolling
    document.body.addEventListener('touchmove', function (event) {
        event.preventDefault();
    }, false);	// end body:touchmove

    //canvas = document.getElementById("can");
    //context.clearRect(0, 0, canvas.width, canvas.height);
    //document.getElementById("my").style.zIndex = "0";

}

//function color(obj) {
//    switch (obj.id) {
//        case "green":
//            x = "green";
//            break;
//        case "blue":
//            x = "blue";
//            break;
//        case "red":
//            x = "red";
//            break;
//        case "yellow":
//            x = "yellow";
//            break;
//        case "orange":
//            x = "orange";
//            break;
//        case "black":
//            x = "black";
//            break;
//        case "white":
//            x = "white";
//            break;
//    }
//    if (x == "white") y = 14;
//    else y = 2;

//}

function draw() {
    ctx.beginPath();
   ctx.moveTo(prevX, prevY);
    ctx.lineTo(currX, currY);
    ctx.strokeStyle = x;
  ctx.lineWidth = y;
    ctx.stroke();
   ctx.closePath();
}

//function erase() {
//    var m = confirm("Want to clear");
//    if (m) {
//        ctx.clearRect(0, 0, w, h);
//        document.getElementById("canvasimg").style.display = "none";
//    }
//}

//function save() {
//    document.getElementById("canvasimg").style.border = "1px solid";
//    var dataURL = canvas.toDataURL();
//    document.getElementById("canvasimg").src = dataURL;
//    document.getElementById("canvasimg").style.display = "inline";
//}

function findxy(res, e) {
    if (res == 'down') {
        prevX = currX;
        prevY = currY;
        currX = e.clientX - canvas.offsetLeft;
        currY = e.clientY - canvas.offsetTop;

        flag = true;
        dot_flag = true;
        if (dot_flag) {
            ctx.beginPath();
            ctx.fillStyle = x;
            ctx.fillRect(currX, currY, 2, 2);
            ctx.closePath();
            dot_flag = false;
        }
    }
    if (res == 'up' || res == "out") {
        flag = false;
    }
    if (res == 'move') {
        if (flag) {
            prevX = currX;
            prevY = currY;
            currX = e.clientX - canvas.offsetLeft;
            currY = e.clientY - canvas.offsetTop;
            draw();
        }
    }
}





function clearAll() {
    document.getElementById("pen").src = "img/pencile.png"
    canvas = document.getElementById("can");
    context.clearRect(0, 0, canvas.width, canvas.height);
    document.getElementById("my").style.zIndex = "0";

}