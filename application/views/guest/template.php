<!DOCTYPE html>
<html lang="en">
<head>
    <?php $this->load->view('guest/parts/head');?>
    <?php $this->load->view('guest/parts/script');?>
</head>
<body>
<?php $this->load->view('guest/parts/nav');?>
<?php $this->load->view('guest/inner/'.$innerPage);?>
<?php $this->load->view('guest/parts/footer');?>
</body>
</html>
