package com.cydeo.jdbc_tests.day04;

import java.sql.*;

public class TestConnection {

    public static void main(String[] args) throws SQLException {

        String dbUrl = "jdbc:oracle:thin:@54.166.75.122:1521:xe";
        String dbUsername = "hr";
        String dbPassword = "hr";

        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select * from regions");

        // once you set up connection default pointer looks for "0"
        // next() --> move pointer to first row
        resultSet.next();

        //getting information with column name
        System.out.println(resultSet.getString("region_name"));
        //getting information with column index(starts from 1)
        System.out.println(resultSet.getString(2));

        // 1 - Europe
        // 2 - Americas
        //System.out.println((resultSet.getInt(1) + " - " + resultSet.getString(2)));
        // move to second row
        //resultSet.next();
        //System.out.println((resultSet.getInt(1) + " - " + resultSet.getString(2)));


        // 1 - Europe
        // 2 - Americas
        // 3 - Asia
        // 4 - Middle East and Africa
        while (resultSet.next()) {
            System.out.println((resultSet.getInt(1) + " - " + resultSet.getString(2)));
        }



        // close connection
        resultSet.close();
        statement.close();
        connection.close();

    }

}
