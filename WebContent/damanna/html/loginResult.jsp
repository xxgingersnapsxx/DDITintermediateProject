<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int seq = (Integer)request.getAttribute("seq");
if(seq == 1){
%>   
   {
      "sw"   : "ok",
      "seq"   : "<%=seq %>"
   }
<%   
}else{
%>   
   {
      "sw"   : "no"
   }
<%   
}
%>
