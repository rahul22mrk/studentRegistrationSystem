<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
        <% 
 
    if(request.getParameter("submit")!=null)
    {
        String name = request.getParameter("sname");
        String course = request.getParameter("course");
        String fee = request.getParameter("fee");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/schooll","root","");
        pst = con.prepareStatement("insert into records2(stname,course,fee)values(?,?,?)");
        pst.setString(1, name);
        pst.setString(2, course);
        pst.setString(3, fee);
        pst.executeUpdate();  
        
        %>
            <script>
                alert("Record Adddeddddd");
            </script>
            <%             
    }
   %>
                <!DOCTYPE html>
                <html>

                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <title>JSP Page</title>
                    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
                    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
                    <link rel="stylesheet" href="style.css">;
                </head>

                <body>
                    <nav>
        <div class="logo">
            <h2>Display-Edit-Delete Student Data </h2>
        </div>

        <ul>

            <li><a href="index.jsp">Home</a></li>
            <li><a href="registration.jsp">Registration</a></li>
            <li>
                <a href="display.jsp">Display</a>
            </li>
               <li>
                <a href="https://github.com/rahul22nrp/studentRegistration">Source Code</a>
            </li>
            
        </ul>
    </nav>
                    
                    
                    <section class="Hero1">
                          
                    <br>
                   
                        <div class="col-sm-8">
                           
                            <div class="panel-body">
                                <table id="tbl-student" class="table table-responsive table-bordered" cellpadding="0" width="100%">

                                    <thead>
                                        <tr>
                                            <th class="r12">Student Name</th>
                                            <th class="r12">Course</th>
                                            <th class="r12">Fee</th>
                                            <th class="r12">Edit</th>
                                            <th class="r12">Delete</th>
                                        </tr>

                                    </thead>

                                    <%
                            
                            Connection con;
                            PreparedStatement pst;
                            ResultSet rs;
        
                             Class.forName("com.mysql.jdbc.Driver");
                             con = DriverManager.getConnection("jdbc:mysql://localhost/schooll","root","");
                              pst = con.prepareStatement("insert into records2(stname,course,fee)values(?,?,?)");
                              
                             String query="select * from records2";
                             Statement st= con.createStatement();
                             rs=st.executeQuery(query);
                             while(rs.next())
                             {
                             String id=rs.getString("id1");
                   
                        %>
                                        <tr>
                                            <td class="r12">
                                                <%=rs.getString("stname")%>
                                            </td>
                                            <td class="r12">
                                                <%=rs.getString("course")%>
                                            </td>
                                            <td class="r12">
                                                <%=rs.getString("fee")%>
                                            </td>
                                            <td class="r12"><a href="update.jsp?id=<%=id %>"><h4>Edit</h4></a></td>
                                            <td class="r12"><a href="delete.jsp?id=<%=id %>"><h4>Delete</h4></a></td>

                                        </tr>

                                        <%
                                }
                            %>
                                </table>

                            </div>


                        </div>
                    </div>
                        
                    </section>           
                 
                                
                                
                                 <footer>
        <div class="left ">
            <h2>Registration System -CRUD Operation </h2>
        </div>
        <div class="right ">
            <p>
                Created by :
                <a href="https://github.com/rahul22nrp">Rahul Gupta</a>
            </p>
        </div>
    </footer>
                                
                </body>

                </html>
