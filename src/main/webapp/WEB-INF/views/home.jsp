<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<link rel="stylesheet"
	href="<c:url value="./resources/bootstrap.min.css"/>" />
	<link rel="stylesheet"
		href="<c:url value="./resources/bootstrap-theme.min.css"/>" />
	
	<script src="./resources/jquery.min.js"></script>
	<script src="./resources/docs.min.js"></script>
	<script src="./resources/bootstrap.min.js"></script>
	
	<script>
		window.onload = function() {
			if ("${MsgEmail}" != ""){
				$("#btnMSG").click();
			}
		};
	</script>
	
	<title>Recrutamento</title>
</head>
<body>
	<div class="page-header">
		<h2 class="h2">
			<b>Cadastro de candidato</b>
		</h2>
	</div>
	
	<div id="Formulario" class="container">
		<form:form action="index" method="POST" commandName="cmdCandidato">
			<div class="form-group">
				<form:label path="nome">Nome</form:label>
				<form:input path="nome" cssClass="form-control"/>
				<form:errors path="nome" cssClass="alert alert-danger" element="div"/>
			</div>
			
			<div class="form-group">
				<form:label path="email">E-mail</form:label>
				<form:input path="email" cssClass="form-control"/>
				<form:errors path="email" cssClass="alert alert-danger" element="div"/>
			</div>
			
			<br>
			<div class="form-group">
				<h3 class="h3">Conhecimentos</h3>
			</div>
			<br>
			
			<div class="form-group">
				<form:label path="ConheceHtml">HTML</form:label>
				<form:select path="ConheceHtml" cssClass="form-control" >
					<form:option  value="0">0</form:option>
					<form:option  value="1">1</form:option>
					<form:option  value="2">2</form:option>
					<form:option  value="3">3</form:option>
					<form:option  value="4">4</form:option>
					<form:option  value="5">5</form:option>
					<form:option  value="6">6</form:option>
					<form:option  value="7">7</form:option>
					<form:option  value="8">8</form:option>
					<form:option  value="9">9</form:option>
					<form:option  value="10">10</form:option>
				</form:select>
				<form:errors path="ConheceHtml" cssClass="alert alert-danger" element="div"/>
			</div>
			
			<div class="form-group">
				<form:label path="ConheceCss">CSS</form:label>
				<form:select path="ConheceCss" cssClass="form-control" >
					<form:option  value="0">0</form:option>
					<form:option  value="1">1</form:option>
					<form:option  value="2">2</form:option>
					<form:option  value="3">3</form:option>
					<form:option  value="4">4</form:option>
					<form:option  value="5">5</form:option>
					<form:option  value="6">6</form:option>
					<form:option  value="7">7</form:option>
					<form:option  value="8">8</form:option>
					<form:option  value="9">9</form:option>
					<form:option  value="10">10</form:option>
				</form:select>
				<form:errors path="ConheceCss" cssClass="alert alert-danger" element="div"/>
			</div>
			
			<div class="form-group">
				<form:label path="ConheceJS">Java Script</form:label>
				<form:select path="ConheceJS" cssClass="form-control" >
					<form:option  value="0">0</form:option>
					<form:option  value="1">1</form:option>
					<form:option  value="2">2</form:option>
					<form:option  value="3">3</form:option>
					<form:option  value="4">4</form:option>
					<form:option  value="5">5</form:option>
					<form:option  value="6">6</form:option>
					<form:option  value="7">7</form:option>
					<form:option  value="8">8</form:option>
					<form:option  value="9">9</form:option>
					<form:option  value="10">10</form:option>
				</form:select>
				<form:errors path="ConheceJS" cssClass="alert alert-danger" element="div"/>
			</div>
			
			<div class="form-group">
				<form:label path="ConhecePython">Python</form:label>
				<form:select path="ConhecePython" cssClass="form-control" >
					<form:option  value="0">0</form:option>
					<form:option  value="1">1</form:option>
					<form:option  value="2">2</form:option>
					<form:option  value="3">3</form:option>
					<form:option  value="4">4</form:option>
					<form:option  value="5">5</form:option>
					<form:option  value="6">6</form:option>
					<form:option  value="7">7</form:option>
					<form:option  value="8">8</form:option>
					<form:option  value="9">9</form:option>
					<form:option  value="10">10</form:option>
				</form:select>
				<form:errors path="ConhecePython" cssClass="alert alert-danger" element="div"/>
			</div>
				
			<div class="form-group">
				<form:label path="ConheceDjango">Django</form:label>
				<form:select path="ConheceDjango" cssClass="form-control" >
					<form:option  value="0">0</form:option>
					<form:option  value="1">1</form:option>
					<form:option  value="2">2</form:option>
					<form:option  value="3">3</form:option>
					<form:option  value="4">4</form:option>
					<form:option  value="5">5</form:option>
					<form:option  value="6">6</form:option>
					<form:option  value="7">7</form:option>
					<form:option  value="8">8</form:option>
					<form:option  value="9">9</form:option>
					<form:option  value="10">10</form:option>
				</form:select>
				<form:errors path="ConheceDjango" cssClass="alert alert-danger" element="div"/>
			</div>
			
			<div class="form-group">
				<form:label path="ConheceDevIOS">Desenvolvimento iOS</form:label>
				<form:select path="ConheceDevIOS" cssClass="form-control" >
					<form:option  value="0">0</form:option>
					<form:option  value="1">1</form:option>
					<form:option  value="2">2</form:option>
					<form:option  value="3">3</form:option>
					<form:option  value="4">4</form:option>
					<form:option  value="5">5</form:option>
					<form:option  value="6">6</form:option>
					<form:option  value="7">7</form:option>
					<form:option  value="8">8</form:option>
					<form:option  value="9">9</form:option>
					<form:option  value="10">10</form:option>
				</form:select>
				<form:errors path="ConheceDevIOS" cssClass="alert alert-danger" element="div"/>
			</div>
			
			<div class="form-group">
				<form:label path="ConheceDevAndroid">Desenvolvimento Android</form:label>
				<form:select path="ConheceDevAndroid" cssClass="form-control" >
					<form:option  value="0">0</form:option>
					<form:option  value="1">1</form:option>
					<form:option  value="2">2</form:option>
					<form:option  value="3">3</form:option>
					<form:option  value="4">4</form:option>
					<form:option  value="5">5</form:option>
					<form:option  value="6">6</form:option>
					<form:option  value="7">7</form:option>
					<form:option  value="8">8</form:option>
					<form:option  value="9">9</form:option>
					<form:option  value="10">10</form:option>
				</form:select>
				<form:errors path="ConheceDevAndroid" cssClass="alert alert-danger" element="div"/>
			</div>
						
			<div class="form-group">
				<input type="submit" class="btn btn-success" value="Concluir">
			</div>
			
			<div class="container">
				<button id="btnMSG" type="button" class="btn" data-toggle="modal" data-target="#msgModal" style="display: none;">Mensagem</button>
			
				<div class="modal fade" id="msgModal" role="dialog">
				    <div class="modal-dialog modal-lg">
				      <div class="modal-content">
				        <div class="modal-header">
				          <button type="button" class="close" data-dismiss="modal">&times;</button>
				          <h4 class="modal-title">Aviso</h4>
				        </div>
				        <div class="modal-body">
				          <p>${MsgEmail}</p>
				        </div>
				        <div class="modal-footer">
				          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				        </div>
				      </div>
				    </div>
				</div>
			</div>
			
		</form:form>
	</div>
</body>
</html>
