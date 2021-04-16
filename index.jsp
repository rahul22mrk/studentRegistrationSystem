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
            <h2>Registration System - CRUD OPERATION </h2>
        </div>

        <ul>

            <li><a href="index.jsp">Home</a></li>
            <li><a href="display.jsp">Display</a></li>
            <li>
                <a href="registration.jsp">Registration</a>
            </li>
               <li>
                <a href="https://github.com/rahul22nrp/studentRegistration">Source Code</a>
            </li>
            
        </ul>
    </nav>
                    
                    
                    <section class="Hero">
                                <div class="r13"><h1>Welcome in this page!!!</h1>
                                    <p>
                            This is a simple Web Page- here you have apply 4 operation
                                    <h2>1.Insert/Create the Data in Database</h2>
                                     <h2>2.Display/Read the Data from Database</h2>
                                     <h2>3. Update the Data in Database</h2>
                                     <h2>4. Delete the Data in Database</h2>
                            </p>
                                </div>
                        <div class="r14">   <p>if you want to Register then click here <a href="registration.jsp">Registration</a>
                            
                            
                            <p>Here You Insert The Student Details in Database...<p>
                            <h2>1. Insert The Name Of Student</h2>
                             <h2>2. Insert The Course Of Student</h2>
                              <h2>3. Insert The Fee Of Particular Course</h2>
                            
                            </div>
                        <div class="r15"><p>if you want to check the student Data ,Modify,Delete then click here <a href="display.jsp">Display</a></p>
                            <p>
                                Here You See the Student Details which you already insert in your Database...
                            <h2>1.Student Name</h2>
                              <h2>2.Course Name</h2>
                                <h2>3.Fee Of Course</h2>
                                  <h2>4. Update the Details</h2>
                                <h2>5.Delete the Row</h2>
                            </p>
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
