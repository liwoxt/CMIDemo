<%@page import="java.io.*"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.lang.Thread"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.google.gson.Gson"%>
<%@page contentType="html/text" pageEncoding="UTF-8"%>
<%
    String mcc = request.getParameter("mcc");
    BufferedReader reader = new BufferedReader(
    new FileReader("/Volumes/DataDisk/processed/201610010000." + mcc + ".heatmap"));
    StringBuilder sb = new StringBuilder();
    String line;
    while((line = reader.readLine())!= null){
        if(sb.length() != 0)
            sb.append(",");
        sb.append(line);
    }
    out.println(sb.toString());
%>