<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inventário - ordens de venda</title>
<link rel="stylesheet" type="text/css" href="../styles.css">
</head>
<body>
  <div class="menu">
	  <div class="menu-left"><a href="/inventario/home">Prova 2</a></div>
	  <div class="menu-right">
	    <ul>
	      <li><a href="/inventario/clientes">Clientes</a></li>
	      <li><a href="/inventario/vendedores">Vendedores</a></li>
	      <li><a href="/inventario/ordensVenda">Ordens de Venda</a></li>
	    </ul>
	  </div>
	</div>
	
	<main class="container">
		<div class="wrapper">
			<h1>Ordens de Venda</h1>
			<a href="/inventario/ordensVenda/new" class="button">nova ordem de venda</a>
		</div>
		
		<table>
	        <thead>
	            <tr>
	              <th>Número da Ordem</th>
				  <th>Valor da Compra</th>
				  <th>Data da Ordem</th>
				  <th>ID do Cliente</th>
				  <th>ID do Vendedor</th>
				  <th colspan="2">Ações</th>
	            </tr>
	        </thead>
	        <tbody>
	        
	        	<c:if test="${list.size() > 0}">
		         	<c:forEach var="ordem" items="${list}">
		                <tr>
		                 	<td><c:out value="${ordem.getOrdNo()}" /></td>
		                 	<td><c:out value="${ordem.getPurchAmt()}" /></td>
		                 	<td><fmt:formatDate value="${ordem.getOrdDate()}" pattern="dd/MM/yyyy" /></td>
		                 	<td><c:out value="${ordem.getCustomerId()}" /></td>
		                 	<td><c:out value="${ordem.getSalesmanId()}" /></td>
			                <td>
		                        <a href="/inventario/ordensVenda/delete?id=<c:out value='${ordem.getOrdNo()}' />">Remover</a>   
						    </td>
						    <td>
						    	<a href="/inventario/ordensVenda/edit?id=<c:out value='${ordem.getOrdNo()}' />">Editar</a>  
					      	</td>
		                </tr>
		            </c:forEach>    
	            </c:if>
	            
	            <c:if test="${list.size() <= 0}">
		            <tr>
		            	<td colspan="7">Sem ordens de venda cadastradas</td>
		            </tr>
	            </c:if>        
	        </tbody>
	    </table>
	</main>
</body>
</html>
