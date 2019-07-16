<?php session_start(); 
include('koneksi.php');
  $query= "SELECT * FROM report";
  $dt_query = $koneksi->query($query); 
?>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css">
</head>
<body>
    <center>
        <h2>REPORT PENJUALAN</h2>
    
        <?php 
        include 'koneksi.php';
        ?>
 
        <div style="width: 600px;margin: 0px auto;">
            <canvas id="myChart"></canvas>
        </div>
     
        <br/>
        <br/>

    </center>
    <table id="example" class="display responsive" width="100%">
        <thead>
            <tr>
                <th class="all">ID Penjualan</th>
                <th class="min-phone-l">Outlet</th>
                <th class="min-tablet">Pemasukan</th>
                <th class="min-tablet">Pengeluaran</th>
                <th class="min-tablet">Laba Bersih : </th>
                <th class="desktop">Tanggal Transaksi</th>   
            </tr>
        </thead>
        <tbody>
            <?php         
                while ($report = $dt_query->fetch_array()) { 
            ?>
                <tr>          
                    <td><?php echo $report['id_penjualan']; ?></td>
                    <td><?php echo $report['outlet']; ?></td>  
                    <td><?php echo $report['pemasukan']; ?></td>  
                    <td><?php echo $report['pengeluaran']; ?></td>
                    <td><?php echo $report['total']; ?></td>    
                    <td><?php echo $report['tanggal']; ?></td>   
                </tr> 
            <?php 
              } 
            ?> 
        </tbody>                 
    </table>
    <script type="text/javascript" src="chartjs/Chart.js"></script>
    <script src= "https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src= "https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
        $('#example').DataTable( {
           responsive: true
            
        } );
    } );
    </script>
    <script>
        var ctx = document.getElementById("myChart").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ["Uniqlo", "Giyomi", "Hawce Caffe", " Stuja Caffe", "AursCakery"],
                datasets: [{
                    label: '',
                    data: [
                    <?php 
                    $jumlah_uniqlo = mysqli_query($koneksi,"select SUM(total) as total from report where outlet='Uniqlo'");
                    foreach ($jumlah_uniqlo as $key) {
                        echo $key['total'];
                    }
                    ?>, 
                    <?php 
                    $jumlah_giyomi = mysqli_query($koneksi,"select SUM(total) as total from report where outlet='Giyomi'");
                    foreach ($jumlah_giyomi as $key) {
                        echo $key['total'];
                    }
                    ?>,
                    <?php 
                    $jumlah_hawceCaffe = mysqli_query($koneksi,"select SUM(total) as total from report where outlet='Hawce Caffe'");
                    foreach ($jumlah_hawceCaffe as $key) {
                        echo $key['total'];
                    }
                    ?>, 
                    <?php 
                    $jumlah_stujaCaffe = mysqli_query($koneksi,"select SUM(total) as total from report where outlet='Stuja Caffe'");
                    foreach ($jumlah_stujaCaffe as $key) {
                        echo $key['total'];
                    }
                    ?>, 
                    <?php 
                    $jumlah_aursCakery = mysqli_query($koneksi,"select SUM(total) as total from report where outlet='AursCakery'");
                    foreach ($jumlah_aursCakery as $key) {
                        echo $key['total'];
                    }
                    ?>, 
                    ],
                    backgroundColor: [
                    "rgba(59, 100, 222, 1)",
                      "rgba(203, 222, 225, 1)",
                      "rgba(102, 50, 179, 1)",
                      "rgba(201, 29, 29, 1)",
                      "rgba(81, 230, 153, 1)",
                      "rgba(246, 34, 19, 1)"
                    ],
                    
                    borderWidth: 1
                }]
            },
            
        });
    </script>
    </body>
</html>