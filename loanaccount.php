<html>
<head>
    <title>Loan Account Table</title>
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
            <th>ACC_UID</th>
            <th>Fixed_Rate</th>
            <th>L_ID</th>
            <th>Loan_Amount</th>
            <th>Monthly_Repayment</th>
        </tr>
        <?php
        $conn = mysqli_connect("localhost","root","","bankproject");
        $sql = "SELECT * from loanaccount";
        $result = $conn->query($sql);

        if($result->num_rows > 0){
            while($row = $result-> fetch_assoc()){
                echo"<tr><td>" . $row["ACC_UID"] . "</td><td>" . $row["Fixed_Rate"] . "</td><td>" . $row["L_ID"] . "</td><td>" . $row["Loan_Amount"] . "</td><td>" . $row["Monthly_Repayment"]
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