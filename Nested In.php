<html>
<head>
    <title>Nested In Query</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <style>
                table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

                .center {
        width:30%;
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
            <th>A_UID</th>
            <th>Account_Balance</th>
            <th>Recent_Transactions</th>
        </tr>
        <?php
        $conn = mysqli_connect("localhost","root","","bankproject");
        $sql = "SELECT *
FROM bankproject.account
WHERE A_UID IN ( SELECT ACC_ID FROM bankproject.transaction where
Total_Amount > 4000);";
        $result = $conn->query($sql);

        if($result->num_rows > 0){
            while($row = $result-> fetch_assoc()){
                echo"<tr><td>" . $row["A_UID"] . "</td><td>" . $row["Account_Balance"] . "</td><td>" . $row["Recent_Transactions"] . "</td><td>";
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