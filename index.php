<?php 
   include "conn.php";
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Token Generator</title>
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.js"></script>
    <script type="text/javascript" src="assets/DataTables/js/jquery.dataTables.js"></script>
    <link rel="stylesheet" type="text/css" href="assets/DataTables/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/DataTables/css/dataTables.bootstrap.css">
</head>
<body>
    <?php
        function getToken($length)
         {
          $token = "";
          $codeAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
          $codeAlphabet.= "abcdefghijklmnopqrstuvwxyz";
          $codeAlphabet.= "0123456789";
          $max = strlen($codeAlphabet); // edited
            
          for ($i=0; $i < $length; $i++) {
           $token .= $codeAlphabet[random_int(0, $max-1)];
          }
            
          return $token;
         }
     ?>
    <center>
        <h3>Token Generator</h3>
        <form method="POST">
            <input type="text" name="token" readonly value="<?php echo getToken(10) ?>">
            <input type="submit" name="save" value="Save" class="btn btn-primary">
            <a href="voucher.php" class="btn btn-outline-primary">Voucher Generator</a>
        </form>
        <?php 
            if (isset($_POST['save'])) {

                $token = $_POST['token'];
                $stat = 0;
                $sql = $koneksi->query("INSERT INTO token (number_token, status) VALUES('$token','$stat')");

                if ($sql) {
                    ?>
                <script type="text/javascript">
                    alert('Data Berhasil Disimpan');
                    window.location.href="index.php";
                </script>

            <?php
            }}
        ?>
        <br>
        <div class="container">
        <!-- Table Token -->
        <table id="data" class="table table-striped table-bordered dataTables">
            <thead>
                <tr>
                    <td>No.</td>
                    <td>Number Token</td>
                    <td>Status Token</td>
                </tr>
            </thead>
            <tbody>
                <?php 
                   $no = 1;
                   $sql = $koneksi->query("SELECT * FROM token");
                   while ($data = $sql->fetch_assoc()) {
                ?>
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td><?php echo $data['number_token'] ?></td>
                    <td>
                        <?php 
                            if($data['status'] == 1){
                                echo "<span style='color:red'>Token Used!</span>";
                            }else{
                                echo "<span style='color:green'>Token Available</span>";
                            }
                        ?>
                    </td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
    </center>
</body>
<script type="text/javascript">
    $(document).ready(function(){
        $('#data').DataTable();
    });
</script>
</html>