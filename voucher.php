<?php 
   include "conn.php";
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Voucher Generator</title>
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
          $codeAlphabet.= "0123456789";
          $max = strlen($codeAlphabet); // edited
            
          for ($i=0; $i < $length; $i++) {
           $token .= $codeAlphabet[random_int(0, $max-1)];
          }
            
          return $token;
         }

         function getToken2($length)
         {
          $token2 = "";
          $codeAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
          $codeAlphabet.= "0123456789";
          $max = strlen($codeAlphabet); // edited
            
          for ($i=0; $i < $length; $i++) {
           $token2 .= $codeAlphabet[random_int(0, $max-1)];
          }
            
          return $token2;
         }

         function getToken3($length)
         {
          $token3 = "";
          $codeAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
          $codeAlphabet.= "0123456789";
          $max = strlen($codeAlphabet); // edited
            
          for ($i=0; $i < $length; $i++) {
           $token3 .= $codeAlphabet[random_int(0, $max-1)];
          }
            
          return $token3;
         }

         function getToken4($length)
         {
          $token4 = "";
          $codeAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
          $codeAlphabet.= "0123456789";
          $max = strlen($codeAlphabet); // edited
            
          for ($i=0; $i < $length; $i++) {
           $token4 .= $codeAlphabet[random_int(0, $max-1)];
          }
            
          return $token4;
         }
     ?>
    <center>
        <h3>Voucher Generator</h3>
        <div class="container">
        <form method="POST">
            <input type="text" class="form-control" name="voucher" readonly value="<?php echo "HRIZX"."-".getToken(5)."-".getToken2(5)."-".getToken3(5)."-".getToken4(5) ?>">
            <input type="submit" name="save" value="Save" class="btn btn-primary">
        </form>
        </div>
        <?php 
            if (isset($_POST['save'])) {

                $voucher = $_POST['voucher'];
                $exp = date('2024-10-08');
                $stat = 0;
                $sql = $koneksi->query("INSERT INTO voucher (voucher, voucher_exp, status) VALUES('$voucher','$exp','$stat')");

                if ($sql) {
                    ?>
                <script type="text/javascript">
                    alert('Data Berhasil Disimpan');
                    window.location.href="voucher.php";
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
                    <td>Voucher</td>
                    <td>Voucher Expired</td>
                    <td>Status Voucher</td>
                    <td>Tools</td>
                </tr>
            </thead>
            <tbody>
                <?php
                   $no = 1;
                   $sql = $koneksi->query("SELECT * FROM voucher");
                   while ($data = $sql->fetch_assoc()) {
                   $id = urlencode(base64_encode($data['id_voucher']));
                   
                ?>
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td><?php echo $data['voucher'] ?></td>
                    <td><?php echo $data['voucher_exp'] ?></td>
                    <td>
                        <?php 
                            if($data['status'] == 1){
                                echo "<span style='color:red'>Voucher Used!</span>";
                            }elseif($data['status'] == 2){
                                echo "<span style='color:red'>Voucher Not Valid!</span>";
                            }elseif($data['status'] == 3){
                                echo "<span style='color:blue'>Voucher Expired!</span>";
                            }else{
                                echo "<span style='color:green'>Voucher Available</span>";
                            }
                        ?>
                    </td>
                    <td> <?php 
                            if($data['status'] == 0){
                                echo "<a href='voucher-e.php?id=$id' class='btn btn-outline-primary' name='claim'>Claim</a>";
                            }else{
                                echo "";
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