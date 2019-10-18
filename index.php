<?php
//define('PASTAPROJETO', 'AulaBanco');
define('PASTAPROJETO', 'PhpBackEnd');

/* Função criada para retornar o tipo de requisição */
function checkRequest() {
	$method = $_SERVER['REQUEST_METHOD'];
	switch ($method) {
	  case 'PUT':
	  	$answer = "update";
	    break;
	  case 'POST':	  
	  	$answer = "post";
	    break;
	  case 'GET':
	  	$answer = "get";
	    break;
	  case 'DELETE':
	  	$answer = "delete";
	    break;	
	  default:
	    handle_error($method);  
	    break;
	}
	return $answer;
}

$request = $_SERVER['REQUEST_URI']; // IDENTIFICA A URI DA REQUISIÇÃO

$answer = checkRequest();

switch ($request) {
    case '/'.PASTAPROJETO.'/' :
        require __DIR__ . '/api/api.php';
        break;
    case '' :
        require __DIR__ . '/api/api.php';
        break;
    case '/'.PASTAPROJETO.'/pessoas' :
        require __DIR__ . '/api/'.$answer.'_pessoa.php';
        break;
    case '/'.PASTAPROJETO.'/conteudo' :
        require __DIR__ . '/api/'.$answer.'_conteudo.php';
        break;
    
    default:
        //require __DIR__ . '/api/404.php';
        break;
}