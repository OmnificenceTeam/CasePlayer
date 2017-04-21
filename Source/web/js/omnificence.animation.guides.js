//#region Animation controller
function AnimationController(pathdata, canvasid) {
    this.path = pathdata;
    this.animationObjects = [];
    this.thresold = 3;

    this.imageHolder = document.getElementById(canvasid);
    var me = this;
    this.imageHolder.onclick = function (e) {
        for (var index = 0; index < me.animationObjects.length ; index++) {
            if (me.animationObjects[index].type != "image")
                continue;
            if (me.animationObjects[index].position == undefined)
                return;
            var isClicked =
                (e.layerX >= me.animationObjects[index].position.x
                && e.layerX <= me.animationObjects[index].position.x + me.animationObjects[index].position.w
                && e.layerY >= me.animationObjects[index].position.y
                && e.layerY <= me.animationObjects[index].position.y + me.animationObjects[index].position.h);
            if (isClicked) {
                onImageClick(this, me.animationObjects[index].dataid);
                break;
            }
        }

    }
    //for (var index = 0; index < paths.length; index++) {
    //    var pathName = "P" + index;
    //    this.path[pathName] = { len: 0, points: [] };
    //    this.path[pathName].len = paths[index].getTotalLength(); // Store the total length of the path

    //    for (var points = 0; points < this.path[pathName].len ; points++) {
    //        var point = { x: 0, y: 0 };
    //        point = paths[index].getPointAtLength(points);
    //        point.x = Math.ceil(point.x);
    //        point.y = Math.ceil(point.y);
    //        point.alpha = 0;
    //        this.path[pathName].points.push(point);
    //    }
    //}

    //document.getElementById("output").value = JSON.stringify(this.path);
}
AnimationController.prototype.requestAnimFrame = window.requestAnimationFrame ||
            window.webkitRequestAnimationFrame ||
            window.mozRequestAnimationFrame ||
            function (callback) {
                window.setTimeout(callback, 1000 / 60);
            };

AnimationController.prototype.loadObjects = function (animationObjects) {
    this.animationObjects = animationObjects;
}

AnimationController.prototype.scrollDown = function (oldposition, newposition) {
    var me = this;
    this.requestAnimFrame.call(window, function () {
        try {
            me.animate(oldposition);
        } catch (e) { console.log(e); }
        oldposition += me.thresold;
        if (oldposition <= newposition)
            me.scrollDown(oldposition, newposition);
        //if (--distance != 0)
        //    me.scrollDown(distance);
    });
}

AnimationController.prototype.animate = function (pos) {
    var me = this;
    var ctx = me.imageHolder.getContext("2d");
  
    ctx.clearRect(0, 0, 717, 489);
    for (var index = 0; index < me.animationObjects.length ; index++) {
        var imageItem = me.animationObjects[index];

        if (imageItem.type == "image") {
            var img = document.createElement("IMG");
            img.setAttribute("src", imageItem.source);
            img.style.height = "64px";
            img.style.width = "48px";
            //imageItem.source
            var position = parseInt(me.path["P" + imageItem.path].len + parseInt(imageItem.distance) - pos);
            var point = me.path["P" + imageItem.path].points[position];
            if (point == undefined)
                continue;
            me.animationObjects[index].position = {
                x: point.x,
                y: point.y,
                h: 64,
                w: 48
            };

            ctx.drawImage(img, point.x, point.y);
        }
        if (imageItem.type == "line") {

            var positionLeft = parseInt(me.path["P" + imageItem.path].len + parseInt(imageItem.distance) - pos);
            var pointLeft = me.path["P" + imageItem.path].points[positionLeft];
            var positionRight = parseInt(me.path["P" + 6].len + parseInt(imageItem.distance) - pos);
            var pointRight = me.path["P" + 6].points[positionRight];
            if (pointLeft == undefined || pointRight == undefined)
                continue;

            ctx.beginPath();
            ctx.moveTo(pointLeft.x, pointLeft.y);
            ctx.lineTo(pointRight.x, pointLeft.y);
            ctx.stroke();

            ctx.font = "20px Arial";
            ctx.fillText("   " + imageItem.text, pointRight.x, pointRight.y);

        }
        
    }
}

AnimationController.prototype.scrollUp = function (oldposition, newposition) {
    var me = this;
    this.requestAnimFrame.call(window, function () {
        try {
            me.animate(oldposition);
        } catch (e) { alert(e); }
        oldposition -= me.thresold;
        if (oldposition >= newposition)
            me.scrollUp(oldposition, newposition);
        //if (--distance != 0)
        //    me.scrollDown(distance);
    });
}