<html>
<head>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>

<div class="jumbotron text-center">
    <h1>Aquarium</h1>
    <p>Enter sequence using " " (whitespaces) as a delimiter:</p>
</div>


<div class="container">
    <form id="myForm" action="#!">
        <div class="form-group">
            <label for="sequence">Sequence:</label>
            <input type="text" class="form-control" id="sequence" placeholder="1 2 3 4 5 6 7 8" name="sequence"
                   required>
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
    </form>
</div>

<div class="container">
    <textarea name="sometext" id="sometext">Write to me</textarea>
</div>





<script type="text/javascript">
    $(function () {
        $("#myForm").submit(function () {
            var formData =
                $("#sequence").val();
//            alert(formData);
            $.ajax({
                url: '../../restapi/calculate?sequence=' + formData
                , type: 'GET'
                , dataType : 'json'
                , success: function (res) {
                    alert("It`s alive!");
                    document.getElementById("sometext").innerHTML = res;
                }
            });
            return false;
        });
    });
</script>

</body>
</html>
