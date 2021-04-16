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
            <h2>Register New Student</h2>
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
                          
                    <br>
                    <div class="row">
                       
                        <div class="col-sm-4">
                            <form method="POST" action="#">
                                <div alight="left">
                                    <label class="r12" form-label>Student Name</label>
                                    <input type="text" class="form-control" placeholder="Student Name" name="sname" id="sname" required="required">
                                </div>

                                <div alight="left">
                                    <label class="r12" form-label>Course</label>
                                    <input type="text" class="form-control" placeholder="Course" name="course" id="course" required="required">
                                </div>

                                <div alight="left">
                                    <label class="r12" form-label>Fee</label>
                                    <input type="text" class="form-control" placeholder="Fee" name="fee" id="fee" required="required">
                                </div>
                                <br>

                                <div alight="right">

                                    <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                                    <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                                </div>


                            </form>
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
