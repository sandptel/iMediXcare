<%@page language="java" import="imedix.rcDisplayData,imedix.dataobj,imedix.cook,imedix.myDate,java.util.*" %>
<%@ include file="..//includes/chkcook.jsp" %>
<%
	rcDisplayData rcDd = new rcDisplayData(request.getRealPath("/"));
	cook cookx = new cook();
	String pid = cookx.getCookieValue("patid", request.getCookies());
	String dat = myDate.getCurrentDate("dmy",false);
	String patdis = cookx.getCookieValue("patdis", request.getCookies());
	String tempstr = rcDd.getBirthHistoryRecord(pid);
%>
<html>
	<head>
    <title>Birth History</title>
	</head>
<body>
    <form id="past_history" runat="server">
    <div><%=tempstr %></div>
    </form>
</body>
</html>

