<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
out.println("<!DOCTYPE html>");
out.println("<html lang=\"en\">");
out.println("");
out.println("<head>");
out.println("    <meta charset=\"UTF-8\">");
out.println("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
out.println("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css\" rel=\"stylesheet\"");
out.println("        integrity=\"sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1\" crossorigin=\"anonymous\">");
out.println("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js\"");
out.println("        integrity=\"sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW\"");
out.println("        crossorigin=\"anonymous\"></script>");
out.println("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\"");
out.println("        integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">");
out.println("");
out.println("    <!-- <style>");
out.println("        @import url('https://fonts.googleapis.com/css2?family=Mukta+Vaani:wght@500&display=swap');");
out.println("    </style> -->");
out.println("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">");
out.println("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">");
out.println("    <link href=\"https://fonts.googleapis.com/css2?family=Mukta+Vaani:wght@500&display=swap\" rel=\"stylesheet\">");
out.println("    <link rel=\"stylesheet\" href=\"CSS/style.css\">");
out.println("  ");
out.println("    <title>My-Book</title>");
out.println("</head>");
out.println("");
out.println("<body>");
out.println("    <div class=\"topnav\" id=\"myTopnav\">");
out.println("        <div class=\"logo\"> <a href=\"home.jsp\"><img class=\"mylogo\" src=\"img/book.png\"></a></div>");
out.println("        <div class=\"home\"><a class=\"homeicon\" href=\"home.jsp\">Home</a></div>");
out.println("        <div class=\"shop\"><a href=\"shop.jsp\" class=\"shopicon\">Shop</a></div>");
out.println("        <div class=\"aboutus\"><a href=\"aboutus.jsp\" class=\"about\">About-us</a></div>");
out.println("        <div class=\"contact\"><a href=\"contact.jsp\" class=\"contactus\">Contact-us</a></div>");
out.println("        <div class=\"search-container\">");
out.println("            <form action=\"#\">");
out.println("                <input type=\"text\" placeholder=\"Search..\" name=\"search\">");
out.println("                <button type=\"submit\"><i class=\"fa fa-search\"></i></button>");
out.println("            </form>");
out.println("        </div>");
out.println("        <div class=\"acc\"><a href=\"account.jsp\" class=\"account\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i></a>");
out.println("        </div>");
out.println("        <div class=\"cart\"><a href=\"#\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i></a></div>");
out.println("    </div>");
out.println("</body>");
out.println("");
out.println("</html>");
%>