<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 01.01.2023
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*, java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>

<%
    File file;
    int maxFileSize = 5000 * 1024;
    int maxMemSize = 5000 * 1024;
    ServletContext context = pageContext.getServletContext();
    String filePath = context.getInitParameter("file-upload");

    String contentType = request.getContentType();

    boolean isMultipart = ServletFileUpload.isMultipartContent(request);

    if (isMultipart) {
        DiskFileItemFactory factory = new DiskFileItemFactory();

        factory.setSizeThreshold(maxMemSize);
        factory.setRepository(new File("C:\\temp"));

        ServletFileUpload upload = new ServletFileUpload(factory);

        upload.setSizeMax(maxFileSize);

        try {
            List<FileItem> fileItems = upload.parseRequest(request);

            Iterator<FileItem> iterator = fileItems.iterator();

            out.println("<html>");
            out.println("<head>");
            out.println("<title>JSP File upload</title>");
            out.println("</head>");
            out.println("<body>");

            while(iterator.hasNext()) {
                FileItem item = iterator.next();

                if(!item.isFormField()) {
                    String fieldName = item.getFieldName();
                    String fileName = item.getName();
                    boolean isInMemory = item.isInMemory();
                    long sizeInBytes = item.getSize();

                    if(fileName.lastIndexOf("\\") >= 0) {
                        file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\")));
                    } else {
                        file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\") + 1));
                    }

                    item.write(file);

                    out.println("Uploaded Filename: " + filePath + fileName + "<br>");
                    out.println("Uploaded File Field Name: " + fieldName + "<br>");
                    out.println("Uploaded File Content Type: " + contentType + "<br>");
                    out.println("Is Uploaded File In Memory: " + isInMemory + "<br>");
                    out.println("Uploaded File Size In Bytes: " + sizeInBytes + "<br>");
                }
            }

            out.println("</body>");
            out.println("</html>");
        } catch (Exception e) {
            System.out.println(e);
        }

    } else {
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet upload</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<p>No file uploaded</p>");
        out.println("</body>");
        out.println("</html>");
    }
%>
