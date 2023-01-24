<?php 
session_start();

	include("connection.php");
	include("functions.php");
	$user_data = check_login($con);
?>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css" />
	<title>My website</title>
	<style>
        		.button {
    left: 200%;
	color: black;
}
	</style>
</head>
<body>

    <a href="Account.php">
        <input id="button" type="submit" class="header" value="Account" /><br /><br />
    </a>
    <a href="bankemployee.php">
        <input id="button" type="submit" class="header" value="Bank Employee" /><br /><br />
    </a>
    <a href="branch.php">
        <input id="button" type="submit" class="header" value="Branch" /><br /><br />
    </a>
    <a href="checkingaccount.php">
        <input id="button" type="submit" class="header" value="Checking Account" /><br /><br />
    </a>
    <a href="customer.php">
        <input id="button" type="submit" class="header" value="Customer" /><br /><br />
    </a>
    <a href="have.php">
        <input id="button" type="submit" class="header" value="Have" /><br /><br />
    </a>
    <a href="loanaccount.php">
        <input id="button" type="submit" class="header" value="Loan Account" /><br /><br />
    </a>
    <a href="moneymarket.php">
        <input id="button" type="submit" class="header" value="Money Market" /><br /><br />
    </a>
    <a href="savingsaccount.php">
        <input id="button" type="submit" class="header" value="Savings Account" /><br /><br />
    </a>
    <a href="transaction.php">
        <input id="button" type="submit" class="header" value="Transaction" /><br /><br />
    </a>
    <a href="Nested All.php">
        <input id="button" type="submit" class="header" value="Nested query with ALL" /><br /><br />
    </a>
    <a href="Nested In.php">
        <input id="button" type="submit" class="header" value="Nested query with IN" /><br /><br />
    </a>
    <a href="logout.php">
        <input id="button" type="submit" value="Logout" /><br /><br />
    </a>
	
</body>
</html>