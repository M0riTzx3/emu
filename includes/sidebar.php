<?php 
    
    if(!isset($_SESSION['admin_email'])){
        
        echo "<script>window.open('login.php','_self')</script>";
        
    }else{

?>
   
<nav class="navbar navbar-inverse navbar-fixed-top"><!-- navbar navbar-inverse navbar-fixed-top begin -->
    <div class="navbar-header"><!-- navbar-header begin -->
        
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><!-- navbar-toggle begin -->
            
            <span class="sr-only">Toggle Navigation</span>
            
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            
        </button><!-- navbar-toggle finish -->
        
        <a href="index.php?dashboard" class="navbar-brand">Admin Bereich</a>
        
    </div><!-- navbar-header finish -->
    
    <ul class="nav navbar-right top-nav"><!-- nav navbar-right top-nav begin -->
        
        <li class="dropdown"><!-- dropdown begin -->
            
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><!-- dropdown-toggle begin -->
                
                <i class="fa fa-user"></i> <?php echo $admin_name;  ?> <b class="caret"></b>
                
            </a><!-- dropdown-toggle finish -->
            
            <ul class="dropdown-menu"><!-- dropdown-menu begin -->
                <li><!-- li begin -->
                    <a href="index.php?user_profile=<?php echo $admin_id; ?>"><!-- a href begin -->
                        
                        <i class="fa fa-fw fa-user"></i> Profil
                        
                    </a><!-- a href finish -->
                </li><!-- li finish -->
                
                <li><!-- li begin -->
                    <a href="index.php?view_products"><!-- a href begin -->
                        
                        <i class="fa fa-fw fa-envelope"></i> Produkte
                        
                        <span class="badge"><?php echo $count_products; ?></span>
                        
                    </a><!-- a href finish -->
                </li><!-- li finish -->
                
                <li><!-- li begin -->
                    <a href="index.php?view_customers"><!-- a href begin -->
                        
                        <i class="fa fa-fw fa-users"></i> Kunde
                        
                        <span class="badge"><?php echo $count_customers; ?></span>
                        
                    </a><!-- a href finish -->
                </li><!-- li finish -->
                
                <li><!-- li begin -->
                    <a href="index.php?view_cats"><!-- a href begin -->
                        
                        <i class="fa fa-fw fa-gear"></i> Produkt Kategorien
                        
                        <span class="badge"><?php echo $count_p_categories; ?></span>
                        
                    </a><!-- a href finish -->
                </li><!-- li finish -->
                
                <li class="divider"></li>
                
                <li><!-- li begin -->
                    <a href="logout.php"><!-- a href begin -->
                        
                        <i class="fa fa-fw fa-power-off"></i> Abmelden
                        
                    </a><!-- a href finish -->
                </li><!-- li finish -->
                
            </ul><!-- dropdown-menu finish -->
            
        </li><!-- dropdown finish -->
        
    </ul><!-- nav navbar-right top-nav finish -->
    
    <div class="collapse navbar-collapse navbar-ex1-collapse"><!-- collapse navbar-collapse navbar-ex1-collapse begin -->
        <ul class="nav navbar-nav side-nav"><!-- nav navbar-nav side-nav begin -->
            <li><!-- li begin -->
                <a href="index.php?dashboard"><!-- a href begin -->
                        
                        <i class="fa fa-fw fa-dashboard"></i> Verwaltung
                        
                </a><!-- a href finish -->
                
            </li><!-- li finish -->
            
            <li><!-- li begin -->
                <a href="#" data-toggle="collapse" data-target="#products"><!-- a href begin -->
                        
                        <i class="fa fa-fw fa-tag"></i> Produkte
                        <i class="fa fa-fw fa-caret-down"></i>
                        
                </a><!-- a href finish -->
                
                <ul id="products" class="collapse"><!-- collapse begin -->
                    <li><!-- li begin -->
                        <a href="index.php?insert_product"> Produkt einfügen </a>
                    </li><!-- li finish -->
                    <li><!-- li begin -->
                        <a href="index.php?view_products"> Produkt anzeigen </a>
                    </li><!-- li finish -->
                </ul><!-- collapse finish -->
                
            </li><!-- li finish -->
            
            <li><!-- li begin -->
                <a href="#" data-toggle="collapse" data-target="#p_cat"><!-- a href begin -->
                        
                        <i class="fa fa-fw fa-edit"></i> Produkt Kategorien
                        <i class="fa fa-fw fa-caret-down"></i>
                        
                </a><!-- a href finish -->
                
                <ul id="p_cat" class="collapse"><!-- collapse begin -->
                    <li><!-- li begin -->
                        <a href="index.php?insert_p_cat"> Produkt Kategorie einfügen </a>
                    </li><!-- li finish -->
                    <li><!-- li begin -->
                        <a href="index.php?view_p_cats"> Produkt Kategorie anzeigen </a>
                    </li><!-- li finish -->
                </ul><!-- collapse finish -->
                
            </li><!-- li finish -->
            
            <li><!-- li begin -->
                <a href="#" data-toggle="collapse" data-target="#cat"><!-- a href begin -->
                        
                        <i class="fa fa-fw fa-book"></i> Kategorien
                        <i class="fa fa-fw fa-caret-down"></i>
                        
                </a><!-- a href finish -->
                
                <ul id="cat" class="collapse"><!-- collapse begin -->
                    <li><!-- li begin -->
                        <a href="index.php?insert_cat"> Kategorien einfügen </a>
                    </li><!-- li finish -->
                    <li><!-- li begin -->
                        <a href="index.php?view_cats">  Kategorien anzeigen </a>
                    </li><!-- li finish -->
                </ul><!-- collapse finish -->
                
            </li><!-- li finish -->
            
            <li><!-- li begin -->
                <a href="#" data-toggle="collapse" data-target="#slides"><!-- a href begin -->
                        
                        <i class="fa fa-fw fa-gear"></i> Banner
                        <i class="fa fa-fw fa-caret-down"></i>
                        
                </a><!-- a href finish -->
                
                <ul id="slides" class="collapse"><!-- collapse begin -->
                    <li><!-- li begin -->
                        <a href="index.php?insert_slide"> Banner einfügen </a>
                    </li><!-- li finish -->
                    <li><!-- li begin -->
                        <a href="index.php?view_slides"> Banner anzeigen </a>
                    </li><!-- li finish -->
                </ul><!-- collapse finish -->
                
            </li><!-- li finish -->
            
            <li><!-- li begin -->
                <a href="index.php?view_customers"><!-- a href begin -->
                    <i class="fa fa-fw fa-users"></i>  Kunden anzeigen
                </a><!-- a href finish -->
            </li><!-- li finish -->
            
            <li><!-- li begin -->
                <a href="index.php?view_orders"><!-- a href begin -->
                    <i class="fa fa-fw fa-book"></i> Bestellungen anzeigen
                </a><!-- a href finish -->
            </li><!-- li finish -->
            
            <li><!-- li begin -->
                <a href="index.php?view_payments"><!-- a href begin -->
                    <i class="fa fa-fw fa-money"></i> Bezahlungsmethoden anzeigen
                </a><!-- a href finish -->
            </li><!-- li finish -->
            
            <li><!-- li begin -->
                <a href="#" data-toggle="collapse" data-target="#users"><!-- a href begin -->
                        
                        <i class="fa fa-fw fa-users"></i> Benutzer
                        <i class="fa fa-fw fa-caret-down"></i>
                        
                </a><!-- a href finish -->
                
                <ul id="users" class="collapse"><!-- collapse begin -->
                    <li><!-- li begin -->
                        <a href="index.php?insert_user"> Benutzer einfügen </a>
                    </li><!-- li finish -->
                    <li><!-- li begin -->
                        <a href="index.php?view_users"> Benutzer anzeigen </a>
                    </li><!-- li finish -->
                    <li><!-- li begin -->
                        <a href="index.php?user_profile=<?php echo $admin_id; ?>"> Profil anpassen </a>
                    </li><!-- li finish -->
                </ul><!-- collapse finish -->
                
            </li><!-- li finish -->
            
            <li><!-- li begin -->
                <a href="logout.php"><!-- a href begin -->
                    <i class="fa fa-fw fa-power-off"></i> Abmelden
                </a><!-- a href finish -->
            </li><!-- li finish -->
            
        </ul><!-- nav navbar-nav side-nav finish -->
    </div><!-- collapse navbar-collapse navbar-ex1-collapse finish -->
    
</nav><!-- navbar navbar-inverse navbar-fixed-top finish -->


<?php } ?>