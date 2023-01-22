<html>
<head>
    <title>Savings Account Table</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <style>
                table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

                .center {
        width:20%;
    margin-left:15%;
    margin-right:15%;
  margin: 0px auto;
  padding: 20px;
  border: 1px solid #B0C4DE;
  background: white;
  border-radius: 0px 0px 10px 10px;
}
    </style>
</head>
<body>
    <table class="center">
        <tr>
            <th>Account_UID</th>

            <th>Fixed_Rate</th>

        </tr>
        <?php
        $conn = mysqli_connect("localhost","root","","bankproject");
        $sql = "SELECT * from savingsaccount";
        $result = $conn->query($sql);

        if($result->num_rows > 0){
            while($row = $result-> fetch_assoc()){
                echo"<tr><td>" . $row["Account_UID"] . "</td><td>" . $row["Fixed_Rate"] . "</td><td>";
            }
        }
        else{
            echo"No Results";
        }
        $conn->close();
        ?>
    </table>
</body>
</html>