<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Freelancer - Start Bootstrap Theme</title>

    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="view/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="view/css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#page-top">SGA</a>
            </div>
<br/><br/><br/>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                   
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
      
    </header>

    

    <br>

    <!-- Contact Section -->
    <section id="Fornecedor">
    <br/><br/><br/>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Cadastro de Fornecedor</h2>
                   <br> 
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                 <form action="incluirFornecedor" method="post">
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>RAZÃO SOCIAL</label>
                                <input type="text" class="form-control" placeholder="razao social" name="razaoSocial"  required data-validation-required-message="Porfavor insira a razao social.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                         <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>CNPJ</label>
                                <input type="tel" class="form-control" placeholder="cnpj" name="cnpj" required data-validation-required-message="Porfavor insira o cnpj.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                         
                       
                       <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>REPRESENTANTE</label>
                                <input type="tel" class="form-control" placeholder="representate" name="representante"  required data-validation-required-message="Porfavor insira o telefone.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                       <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>TELEFONE</label>
                                <input type="text" class="form-control" placeholder="endereco" name="telefone" required data-validation-required-message="Porfavor insira o telefone.">
                                <p class="help-block text-danger"></p>
                            </div>
                           
                          	   <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>ENDEREÇO</label>
                                <input type="text" class="form-control" placeholder="endereco" name="endereco" required data-validation-required-message="Porfavor insira o endereco.">
                                <p class="help-block text-danger"></p>
                            </div>
                       
                        <div id="success"></div>
                         <br><br>  
                        <br>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button type="submit" class="btn btn-success btn-lg">Cadastrar Fornecedor</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="menu"> <button  class="btn btn-success btn-lg">Voltar</button></a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                   
                    
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                      SGA - Sistema gerenciador auto peças
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll visible-xs visible-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    

    <!-- jQuery -->
    <script src="view/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="view/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="view/js/classie.js"></script>
    <script src="view/js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="view/js/jqBootstrapValidation.js"></script>
    <script src="view/js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="view/js/freelancer.js"></script>

</body>

</html>
