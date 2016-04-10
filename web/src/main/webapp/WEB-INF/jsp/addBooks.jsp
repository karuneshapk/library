<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">

<head>
    <meta http-equiv="content-type" content="text/html: charset=utf-8" />

    <title>Add your book</title>
    <link rel="stylesheet" type="text/css" href="/css/visual.css" />

    <script type="text/javascript">
        <!--

        function validate_form ( )
        {
            valid = true;

            if (( document.myForm.name.value == "" ) || (document.myForm.author.value == ""))
            {
                alert ( "Пожалуйста заполните поля" );
                valid = false;
            }

            if (( isNaN(parseInt(document.myForm.name.value)) == false ) || (isNaN(parseInt(document.myForm.author.value) == false)))
            {
                alert ( "Исправьте, поля не могут быть цифровыми" );
                valid = false;
            }

            return valid;
        }

        //-->
    </script>

</head>

<body>

<div id="header">
    <img src="../../image/header.gif" />
</div>

<div id="main">
    <form name="myForm" method="post" action="/servlets/addBooks" onsubmit="return validate_form ( );">
        <table>
            <tr>
                <td><h1>Автор:</h1></td> <td><input placeholder="автор" name="author" type="text"></td>
            </tr>
            <tr>
                <td><h1>Книга:</h1></td> <td><input placeholder="название книги" name="name" type="text"></td>
            </tr>
        </table>

        <p><b>Аннотация:</b></p>
        <p><textarea name = "description" placeholder="Краткое описание книги" rows="10" cols="45" name="text"></textarea></p>

        <input type="submit" name="save">

    </form>
</div>

<div id="footer">
    &copy; 2015, LIBRARY
    <br />
    All books for you.
</div>

</body>
</html>