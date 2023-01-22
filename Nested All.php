<html>
<head>
    <title>Nested All Query </title>
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
            <th>E_SSN</th>
            <th>E_Name</th>
            <th>E_Phone</th>
            <th>E_Department</th>
            <th>E_StartDate</th>
            <th>BankBranchID</th>
            <th>Super_SSN</th>
        </tr>
        <?php
        $conn = mysqli_connect("localhost","root","","bankproject");
        $sql = "SELECT * FROM `bankproject`.`bankemployee`
WHERE E_SSN = ALL
(SELECT Employee_ID
FROM bankproject.customer
WHERE C_Address ='170 hello street');";
        $result = $conn->query($sql);

        if($result->num_rows > 0){
            while($row = $result-> fetch_assoc()){
                echo"<tr><td>" . $row["E_SSN"] . "</td><td>" . $row["E_Name"] . "</td><td>" . $row["E_Phone"] . "</td><td>" . $row["E_Department"] . "</td><td>" . $row["StartDate"]
                . "</td><td>" . $row["BankBranchID"] . "</td><td>" . $row["Super_SSN"] . "</td><td>";
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