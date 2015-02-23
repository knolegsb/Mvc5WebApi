<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApiClient.aspx.cs" Inherits="ExploreCaliforniaAPI.ApiClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="tours">
        
    </div>
    </form>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script>
        $(function () {
            $.getJSON('/api/tour').done(function (data) {
                $.each(data, function (index, tour) {
                    for (prop in tour) {
                        $('#tours').append(prop + ':' + tour[prop] + '<br />');
                    }
                    $('#tours').append('<br />');
                });
            });
        });
    </script>
</body>
</html>
