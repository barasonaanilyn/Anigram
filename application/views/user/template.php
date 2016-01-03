<!DOCTYPE html>
<html>
<head>
    <?php $vData['matrix']=$this->matrix->get();?>
    <?php $this->load->view('user/parts/head',$vData);?>
    <?php $this->load->view('user/parts/script');?>
</head>
<body class="hold-transition skin-black sidebar-mini">
<div class="wrapper">
    <?php $this->load->view('user/parts/header',$vData);?>
    <?php $this->load->view('user/parts/sidebar',$vData);?>
    <div class="content-wrapper">
        <?php $this->load->view('user/parts/titlebar',$vData);?>
        <section class="content">
            <?php $this->load->view('user/inner/'.$innerView);?>
        </section>
    </div>
</div>
</body>
</html>
