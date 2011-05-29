<%-- 
    Document   : CustomerNew
    Created on : Dec 8, 2009, 12:44:29 PM
    Author     : kl209342
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>JSP Page</title>
            <script language="JavaScript">
                function setCustomerId()
                {
                    document.forms[0].elements[1].value = "123456";
                }
                function updateCustomerId()
                {
                    //alert("UpdateCustomer called");
                    window.opener.setCustomerId(document.forms[0].elements[1].value);
                        //document.forms[0].elements[1].value = "Hello There!";
                }
            </script>
        </head>
        <body onunload="updateCustomerId();">
            <h1><h:outputText value="Enter new Customer ID!"/></h1>
            <h:form>
                <h:inputText id="customerId"/>
            </h:form>
        </body>
        <script language="JavaScript">
            setCustomerId();
        </script>
    </html>
</f:view>
