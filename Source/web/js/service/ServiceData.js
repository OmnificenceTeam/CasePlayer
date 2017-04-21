
    function GetPageData() {
        this.CommandType = "getpage";
        this.Data = new Object();
    }


    function SetPageStatus(data) {
        this.CommandType = "setpagestatus";
        this.Data = data;
    }

    function PageData() {
        this.ID = 0;
        this.PageID = "";
        this.PageName = "";
        this.Status = false;
    }




    function GetImageData() {
        this.CommandType = "getimage";
        this.Data = new Object();
    }


    function SetImageStatus(data) {
        this.CommandType = "setimagestatus";
        this.Data = data;
    }

    function ImageData() {
        this.ID = 0;
        this.ImageID = "";
        this.Status = false;
    }


    function Submitpoll(data) {
        this.CommandType = "submitpoll";
        this.Data = data;
    }



    function QuestionData() {
        this.QuestionID = 0;
        this.Answer = "";
    }


    


