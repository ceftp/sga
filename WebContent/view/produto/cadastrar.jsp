<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sga Sistema gerenciador auto pe√ßas</title>

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
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Cadastro de Produto</h2>
                   <br> 
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form action="incluirProduto" method="post"	enctype="multipart/form-data">
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>NOME</label>
                                <input type="text" class="form-control" placeholder="Name" name="nome" id="name" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        		
								<div style="text-align: center; color: red;"> ${mensagem} </div>
                         <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>MARCA</label>
                                <input type="text" class="form-control" placeholder="Marca" name="marca" id="" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>CODIGO</label>
                                <input type="tel" class="form-control" placeholder="Codigo" name="codigo" id="" required data-validation-required-message="Please enter your codigo.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                       <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>PRE«O DE CUSTO</label>
                                <input type="tel" class="form-control" placeholder="PreÁo de Custo" name="precoCusto" id="" required data-validation-required-message="Please enter your preco de custo.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                         <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>PRE«O DE VENDA</label>
                                <input type="tel" class="form-control" placeholder="PreÁo de Venda" id="" name="precoVenda" required data-validation-required-message="Please enter your phone preco da venda.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                          <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>QUANTIDADE</label>
                                <input type="number" class="form-control" placeholder="Quantidade" id="" name="quantidade" required data-validation-required-message="Please enter your phone quantidade.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                             <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>IMAGEM</label>
                                <input type="file" src="" alt="Submit" class="form-control" placeholder="Imagem" name="file" id="" required data-validation-required-message="Please enter your image.">
                                <p class="help-block text-danger"></p>
                            </div>
                               <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>DATA DA COMPRA</label>
                                <input type="text" class="form-control" placeholder="Data comprar" id="" name="dataCompra" required data-validation-required-message="Please enter your phone quantidade.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button type="submit" class="btn btn-success btn-lg">Cadastrar Produto</button>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="menu"> <button  class="btn btn-success btn-lg">Voltar</button></a>
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
                        Copyright &copy; Your Website 2014
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
