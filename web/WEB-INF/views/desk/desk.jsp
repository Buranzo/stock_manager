<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>Desk of StockManager by ShtykovPB aka Buranzo</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/io.khasang.stockmanager.dao.desk.css">
        <script src="js/availableStateProject.js">
        </script>
    </head>
    <body>
        <h1 id="welcomeText" class="welcomeText">Desk</h1>

        <!--VIEW PROJECTS-->
        <table class="tablePage">
            <tr>
                <td class="tablePage"> 
                    <form action="/io.khasang.stockmanager.dao.desk/addProject" method="GET">
                        <table>
                            <th  colspan = '2' class="titleTable"><b>add Project</b></th>
                            <tr>
                                <td>Project name</td>
                                <td>
                                    <input class="input" type="text" name="projectName">
                                </td>
                            </tr>
                            <tr>
                                <td>Type</td>
                                <td>
                                    <input class="input" type="text" name="type">
                                </td>
                            </tr>
                            <tr>
                                <td>Start date</td>
                                <td>
                                    <input class="input" type="date" name="startDate">
                                </td>
                            </tr>
                            <tr>
                                <td>Finish date</td>
                                <td>
                                    <input class="input" type="date" name="finishDate">
                                </td>
                            </tr>
                            <tr>
                                <td>Total amount</td>
                                <td>
                                    <input class="input" type="text" name="totalAmount">
                                </td>
                            </tr>
                            <tr>
                                <td>Vip</td>
                                <td>
                                    <select class="input" name="vip">
                                        <option>No</option>
                                        <option>Yes</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>User id</td>
                                <td>
                                    <select class="input" name="userId">
                                        <option>select user id</option>
                                        <c:forEach items="${users}" var="user">
                                            <option><c:out value="${user.id}" /></option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>state</td>
                                <td>
                                    <select class="input" name="state">
                                        <option>process</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"><input type="submit" value="addProject" ></td>
                            </tr>
                        </table>
                        <br>
                    </form>
                </td>

                <!--ADD PROJECT BLOCK-->

                <td class="tablePage">
                    <table>
                        <th  colspan = '11' class="titleTable"><b>Projects</b></th>
                        <tr>
                            <td class="titleTable">id</td>
                            <td class="titleTable">projectName</td>
                            <td class="titleTable">type</td>
                            <td class="titleTable">startDate</td>
                            <td class="titleTable">finishDate</td>
                            <td class="titleTable">totalAmount</td>
                            <td class="titleTable">vip</td>
                            <td class="titleTable">state</td>
                            <td class="titleTable">userId</td>
                            <td class="titleTable">update</td>
                            <td class="titleTable">delete</td>
                        </tr>
                        <tr>
                            <c:forEach items="${projects}" var="project">
                            <form name="stateProjectForm" action="/io.khasang.stockmanager.dao.desk/updateStateProject" method="GET">
                                <td><input class="input" type="text" name="id" value=<c:out value="${project.id}" /> size="5"></td>
                                <td><input class="input" type="text" name="projectName" value=<c:out value="${project.projectName}" /> size="10"></td>
                                <td><input class="input" type="text" name="type" value=<c:out value="${project.type}" /> size="10"></td>
                                <td><input class="input" type="text" name="startDate" value=<c:out value="${project.startDate}" /> size="10"></td>
                                <td><input class="input" type="text" name="finishDate" value=<c:out value="${project.finishDate}" /> size="10"></td>
                                <td><input class="input" type="text" name="totalAmount" value=<c:out value="${project.totalAmount}" /> size="5"></td>
                                <td><input class="input" type="text" name="vip" value=<c:out value="${project.vip}" /> size="3"></td>
                                <td>
                                    <select class="input" id="state" name="state">
                                        <option><c:out value="${project.state}" /></option>
                                    </select>
                                </td>
                                <td><input class="input" type="text" name="userId" value=<c:out value="${project.userId}" /> size="5"></td>
                                <td>
                                    <input type="submit" value="update" >
                                </td>
                            </form>
                            <form action="/io.khasang.stockmanager.dao.desk/deleteProject/${project.id}" method="GET">
                                <td>             
                                    <input type="submit" value="delete" >  
                                </td>
                            </form>
                </tr>
            </c:forEach>
        </table>
    </td>
</tr>

<!--SEPARATOR-->
<tr><td  class="tablePage" colspan="2"><hr></td></tr>

<!--VIEW PROJECTS_PRODUCTS -->

<tr>
    <td class="tablePage">
        <form action="/io.khasang.stockmanager.dao.desk/addProjectProduct" method="GET">
            <table>
                <th  colspan = '2' class="titleTable"><b>add ProjectProduct</b></th>
                <tr>
                    <td>Project id</td>
                    <td>
                        <select class="input" name="projectId">
                            <option>select project id</option>
                            <c:forEach items="${projects}" var="project">
                                <option><c:out value="${project.id}" /></option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <td>Quantity</td>
                <td>
                    <input class="input" type="text" name="quantity">
                </td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td>
                        <input class="input" type="text" name="price">
                    </td>
                </tr>
                <tr>
                    <td>Amount</td>
                    <td>
                        <input class="input" type="text" name="amount">
                    </td>
                </tr>
                <tr>
                    <td>Purchase date</td>
                    <td>
                        <input class="input" type="date" name="purchaseDate">
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="addProjectProduct" ></td>
                </tr>
            </table>
        </form>
    </td>

    <!-- ADD PROJECT PRODUCT BLOCK-->
    <td class="tablePage">
        <table>
            <th  colspan = '7' class="titleTable"><b>ProjectsProducts</b></th>
            <tr>
                <td class="titleTable">id</td>
                <td class="titleTable">projectId</td>
                <td class="titleTable">quantity</td>
                <td class="titleTable">price</td>
                <td class="titleTable">amount</td>
                <td class="titleTable">purchaseDate</td>
                <td class="titleTable">delete</td>
            </tr>

            <tr>
                <c:forEach items="${projectsProducts}" var="projectProducts">
                    <td><input class="input" type="text" name="id" value=<c:out value="${projectProducts.id}" /> size="5"></td>
                    <td><input class="input" type="text" name="projectId" value=<c:out value="${projectProducts.projectId}" /> size="5"></td>
                    <td><input class="input" type="text" name="quantity" value=<c:out value="${projectProducts.quantity}" /> size="5"></td>
                    <td><input class="input" type="text" name="price" value=<c:out value="${projectProducts.price}" /> size="5"></td>
                    <td><input class="input" type="text" name="amount" value=<c:out value="${projectProducts.amount}" /> size="5"></td>
                    <td><input class="input" type="text" name="purchaseDate" value=<c:out value="${projectProducts.purchaseDate}" /> size="10"></td>
                <form action="/io.khasang.stockmanager.dao.desk/deleteProjectProduct/${projectProducts.id}" method="GET">
                    <td>             
                        <input type="submit" value="delete" >  
                    </td>
                </form>
    </tr>
</c:forEach>
</table>
</td>
</tr>
</table>

</body>
</html>
