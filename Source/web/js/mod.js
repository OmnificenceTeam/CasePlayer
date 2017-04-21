

var _gSettings1 = '  <tr>'+
                            '            <th>Image ID</th>'+
                             '           <th style="">Jan 2013</th>'+
                              '          <th style="">May 2013</th>'+
                               '         <th style="">Jun 2013</th>'+
                                   ' </tr><tr class="Presentation">                          ' +
                               '    <td>Presentation</td>' +
                                 ' <td class="Jan2013"></td>' +
                                '   <td class="May2013"></td>' +
                                 '  <td class="Jun2013"></td>' +
                          '     </tr>' +
                           '     <tr class="Relevant History" >' +
                            '       <td>Relevant History</td>' +
                             '       <td class="Jan2013"></td>' +
                              '     <td class="May2013"></td>' +
                               '    <td class="Jun2013"></td>' +
                        '       </tr>' +
                         '       <tr class="Examination">' +
                          '         <td>Examination</td>' +
                           '       <td class="Jan2013"></td>' +
                            '       <td class="May2013"></td>' +
                             '      <td class="Jun2013"></td>' +
                         '      </tr>' +
                        '        <tr class="Laboratory findings">' +
                          '         <td>Laboratory findings</td>' +
                           '         <td class="Jan2013"></td>' +
                            '       <td class="May2013"></td>' +
                             '      <td class="Jun2013"></td>' +
                            '   </tr>' +
                           '       <tr class="Management">' +
                            '       <td>Management</td>' +
                             '       <td class="Jan2013"></td>' +
                              '     <td class="May2013"></td>' +
                               '    <td class="Jun2013"></td>' +
                               '</tr>'+
                   '                     </tr>'+
                    '                       <tr class="Question">'+
                     '                       <td>Question</td>'+
                      '                      <td class="Jan2013"></td>'+
                       '                     <td class="May2013"></td>'+
                        '                    <td class="Jun2013"></td>'+
                         '               </tr>';



var _gsettings2 = '<tr>'+
                                       ' <th>Image ID</th>'+
                                    '    <th style="">Apr 2012</th>'+
                                   '     <th style="">Jun 2013</th>'+
                                  '      <th style="">Aug 2013</th>'+
                                  '      <th style="">Oct 2013</th>'+
                                   '     <th style="">Apr 2014</th>' +
                                 '   </tr><tr class="Presentation">        ' +
                                         '   <td>Presentation</td>' +
                                          '  <td class="Apr2012"></td>' +
                                           ' <td class="Jun2013"></td>' +
                                            '<td class="Aug2013"></td>' +
                                            '<td class="Oct2013"></td>' +
                                            '<td class="Apr2014"></td>' +
                 '                       </tr>' +
                  '                      <tr class="Relevant History">' +
                   '                         <td>Relevant History</td>' +
                    '                        <td class="Apr2012"></td>' +
                     '                       <td class="Jun2013"></td>' +
                      '                      <td class="Aug2013"></td>' +
                       '                     <td class="Oct2013"></td>' +
                        '                    <td class="Apr2014"></td>' +
                         '               </tr>' +
                          '              <tr class="Examination">' +
                           '                 <td>Examination</td>' +
                            '                <td class="Apr2012"></td>' +
                             '              <td class="Jun2013"></td>' +
                               '             <td class="Aug2013"></td>' +
                                '            <td class="Oct2013"></td>' +
                                 '           <td class="Apr2014"></td>' +
                                  '      </tr>' +
                                   '     <tr class="Laboratory findings">' +
                                    '        <td>Laboratory findings</td>' +
                                     '       <td class="Apr2012"></td>' +
                                      '      <td class="Jun2013"></td>' +
                                       '     <td class="Aug2013"></td>' +
                                        '    <td class="Oct2013"></td>' +
                                         '   <td class="Apr2014"></td>' +
                 '                       </tr>' +
                  '                      <tr class="Management">' +
                   '                         <td>Management</td>' +
                    '                        <td class="Apr2012"></td>' +
                     '                       <td class="Jun2013"></td>' +
                      '                      <td class="Aug2013"></td>' +
                       '                     <td class="Oct2013"></td>' +
                        '                    <td class="Apr2014"></td>' +
                         '               </tr>'+
    '<tr class="Question">'+
     '                                       <td>Question</td>'+
      '                                      <td class="Apr2012"></td>'+
       '                                     <td class="Jun2013"></td>'+
        '                                    <td class="Aug2013"></td>'+
         '                                   <td class="Oct2013"></td>'+
          '                                  <td class="Apr2014"></td>'+
           '                             </tr>';

function onLoadDisablePage() {
    var request = new GetPageData();
    var result = DoService(request);
    var html = "";
    var elements = $(document).find('.ul_menu').find('li');
    for (var i = 0; i < result.length; i++) {
        if (!result[i].Status) {
            for (var index = 0; index < elements.length ; index++) {
                if ('#' + result[i].PageID == $(elements[index]).data("content"))
                    $(elements[index]).addClass(" disabled");
            }
        }
    }

}



function onClickActivate() {
    var request = new GetPageData();
    var result = DoService(request);
    var html = "";
    for (var i = 0; i < result.length; i++) {
        var status = "";
        if (result[i].Status)
             status = "checked";

        html += '<tr>' +
        '<td>' + result[i].PageName + '</td>' +
          '<td>  <input type="checkbox"  data-value= "' + result[i].ID+ '" name="my-checkbox"' + status + '></td>' +
      '</tr>';
    }

    $('#pageDatatable').html(html);
    $('input[name="my-checkbox"]').bootstrapSwitch();
    $('#myModal').modal('show');


    $('input[name="my-checkbox"]').on('switchChange.bootstrapSwitch', function (event, state) {
        var pageData = new PageData()
        pageData.ID = parseInt($(this).data("value"));
        pageData.Status = state;

        var request = new SetPageStatus(pageData);
        var result = DoService(request);
        if (!result.Status)
            alert("Something went wrong");
    });

}


function onClickActivateCase() {

    $('#caseSetting1').html(_gSettings1);
    $('#caseSetting2').html(_gsettings2);
    
    var request = new GetImageData();
    var result = DoService(request);
    var html = "";
    for (var i = 0; i < result.length; i++) {
        var status = "";
        if (result[i].Status)
            status = "checked";

        var titleSplit = result[i].ImageName.split(' ');
        var elem = $('#caseSetting' + result[i].CaseID).find('.' + titleSplit[0]).find('.' + result[i].Month);

        $(elem).html($(elem).html() + '<input type="checkbox" class="activateImg"  data-value= "' + result[i].ID + '" name="my-checkbox"' + status + '></td>')
    }

    $('input[name="my-checkbox"]').bootstrapSwitch();
    $('#myModalCase').modal('show');


    $('input[class="activateImg"]').on('switchChange.bootstrapSwitch', function (event, state) {
        var pageData = new ImageData()
        pageData.ID = parseInt($(this).data("value"));
        pageData.Status = state;

        var request = new SetImageStatus(pageData);
        var result = DoService(request);
        if (!result.Status)
            alert("Something went wrong");
    });

}




function onclickAnswer(ele){
    var parent = $(ele).parent().parent();
    var answer = $(parent).find('#Answer').val();
    var Answer = "";


    var elements = $(parent).find("input");
    for (var index = 0; index < elements.length ; index++) {
        if (elements[index].type == "radio" && elements[index].checked) {
            Answer = elements[index].value;
        }
    }

    if (Answer == "")
        alert("Please select an option")
    
    else if (Answer == answer) {
        
        var cHtml = ' <strong>Congrats !</strong><br /><br /> <div class="ImgAns"><span class="glyphicon glyphicon-ok"></span></div> <p style="margin-top:10px"> Correct answer</p> <br/>'
        '</div>';
        $(parent).find('#AnswerDisp').html(cHtml);
        $(parent).find('#AnswerDisp').show();
    }

    else {
        var cHtml = ' <strong>Sorry !</strong><br /><br /> <div class="ImgAns"><span class="glyphicon glyphicon-remove"></span></div> Incorrect answer ' +
                                       '<p>The correct answer is <span><strong>' + answer + '</strong></span></p>' +
                                     '</div>';
        $(parent).find('#AnswerDisp').html(cHtml);
        $(parent).find('#AnswerDisp').show();

    }
    
    window.setTimeout(function () { $(parent).find('#AnswerDisp').hide(); }, 10000);
}


function onclickYesNo(ele, status) {
    var parent = $(ele).parent().parent();

    if (status) {
        $(parent).find('.rem').hide();
        $(parent).find('.ok').show();
    }
    else
    {
        $(parent).find('.rem').show();
        $(parent).find('.ok').hide();
    }
    window.setTimeout(function () {
        $(parent).find('.rem').hide();
        $(parent).find('.ok').hide();
    }, 60000);
}