// JScript File

function DoService(PostData)
{
    try {
    var XmlHttp = new XMLHttpRequest();
    XmlHttp.open("POST", "CoreAppService.aspx", false);
    XmlHttp.send(JSON.stringify(PostData));
    var Header = JSON.parse(XmlHttp.responseText);
    return Header.Result;

    }
    catch(e)
    {
    result.value = e.description;
    }
}

