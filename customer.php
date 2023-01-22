<html>
<head>
    <title>Customer Table</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <style>
                table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

                .center {
        width:50%;
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
            <th>C_SSN</th>
            <th>C_Name</th>
            <th>C_Address</th>
            <th>Branch_ID</th>
            <th>Employee_ID</th>
        </tr>
        <?php
        $conn = mysqli_connect("localhost","root","","bankproject");
        $sql = "SELECT * from customer";
        $result = $conn->query($sql);

        if($result->num_rows > 0){
            while($row = $result-> fetch_assoc()){
                echo"<tr><td>" . $row["C_SSN"] . "</td><td>" . $row["C_Name"] . "</td><td>" . $row["C_Address"] . "</td><td>" . $row["Branch_ID"] . "</td><td>" . $row["Employee_ID"]
                . "</td><td>";
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