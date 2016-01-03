<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header"></li>
            <?php
            foreach($matrix as $key=>$val){
                $isActive = $key==$page?'class="active"':'';
                echo '
                    <li '.$isActive.'>
                        <a href="'.$val['link'].'">
                            <i class="fa fa-'.$val['logo'].'"></i><span>'.$val['name'].'</span>
                        </a>
                    </li>
                ';
            }
            ?>
        </ul>
    </section>
</aside>