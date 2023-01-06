<?php 
  
  include "conn.php";
  
  $claim = $_GET['id'];
  $decode = base64_decode(urldecode($claim));

  $stat = 1;
  $sql = $koneksi->query("UPDATE voucher SET status='$stat' WHERE id_voucher = '$decode'");
  if ($sql) {
    ?>
    <script type="text/javascript">
    alert('Voucher Berhasil Di Claim');
    window.location.href="voucher.php";
    </script>

    <?php
    }
  
?>