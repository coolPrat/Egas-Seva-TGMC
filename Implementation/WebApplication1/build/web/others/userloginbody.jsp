<%-- 
    Document   : userloginbody
    Created on : Feb 25, 2012, 12:27:38 PM
    Author     : Somesh Mishra
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
 <s:if test="#session.user!=null">
         <s:if test="#session.user.logintype=='distributor'">
             <META HTTP-EQUIV="Refresh" CONTENT="0;URL=/egas/distributor/dishome.jsp"/>
         </s:if>
</s:if>
             <fieldset>
<h1 align="center" style="color: slategrey"><u>User Login:</u></h1>

 <b><font style="color: indianred; font-size: 21px;">
            <table align="center">
                <tr><s:label name="errormsg"/></tr>
            </table></font></b>

<table align="center">
    <tr><td>
            <s:form action="UserLogin" namespace="/others">
    
                <s:hidden name="user.logintype" value="user" cssStyle="color:red"/>
  
<table>
<tr>
    <td><b>UserName:</b></td>
    <td><s:textfield name="user.username" /></td>
</tr>
<tr>
    <td><b>Password:</b></td>
    <td><s:password name="user.password" /></td>
</tr>
<tr>
    <td><a href="<s:url action="ForgotPasswordPage" namespace="/others"/>">Forgot Password</a></td>
    <td><s:submit value="Login"/></td>
</tr>
</table>
</s:form>
 </td></tr>
</table>
             </fieldset>