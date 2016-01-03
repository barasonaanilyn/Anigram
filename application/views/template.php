<!DOCTYPE html>
<html>
<head>
    <?php $this->load->view('parts/head');?>
    <?php $this->load->view('parts/script');?>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
    <?php $this->load->view('parts/header');?>
    <?php $this->load->view('parts/sidebar');?>
    <div class="content-wrapper">
        <?php $this->load->view('parts/titlebar');?>
        <section class="content">
            <?php $this->load->view('inner/'.$innerView);?>
        </section>
    </div>
</div>
</body>
</html>
