<html>
<head>
    <title>Transaction Table</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <style>
                table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

                .center {
        width:40%;
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
            <th>Type_Code</th>
            <th>Number</th>
            <th>Total_Amount</th>
            <th>Hour</th>
            <th>Date</th>
            <th>ACC_ID</th>
        </tr>
        <?php
        $conn = mysqli_connect("localhost","root","","bankproject");
        $sql = "SELECT * from transaction";
        $result = $conn->query($sql);

        if($result->num_rows > 0){
            while($row = $result-> fetch_assoc()){
                echo"<tr><td>" . $row["Type_Code"] . "</td><td>" . $row["Number"] . "</td><td>" . $row["Total_Amount"] . "</td><td>" . $row["Hour"] . "</td><td>" . $row["Date"]
                . "</td><td>" . $row["ACC_ID"] . "</td><td>";
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