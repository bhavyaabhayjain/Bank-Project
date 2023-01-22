<html>
<head>
    <title>Branch Table</title>
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
            <th>BId</th>
            <th>B_Name</th>
            <th>B_Address</th>
            <th>Assets</th>
            <th>Manager</th>
            <th>Assistant_Manager</th>
        </tr>
        <?php
        $conn = mysqli_connect("localhost","root","","bankproject");
        $sql = "SELECT * from branch";
        $result = $conn->query($sql);

        if($result->num_rows > 0){
            while($row = $result-> fetch_assoc()){
                echo"<tr><td>" . $row["BId"] . "</td><td>" . $row["B_Name"] . "</td><td>" . $row["B_Address"] . "</td><td>" . $row["Assets"] . "</td><td>" . $row["Manager"]
                . "</td><td>" . $row["Assistant_Manager"] . "</td><td>";
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