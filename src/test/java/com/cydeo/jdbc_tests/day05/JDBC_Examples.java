package com.cydeo.jdbc_tests.day05;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class JDBC_Examples {

    String dbUrl = "jdbc:oracle:thin:@54.166.75.122:1521:xe";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void test1() throws SQLException {

        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select * from departments");

        //move to first row
//        resultSet.next();

//        System.out.println(resultSet.getString(2));

        //display departments table in 10 - Administration - 200 - 1700 format
        while (resultSet.next()) {
            System.out.println((resultSet.getInt(1) + " - " + resultSet.getString(2) + " - "
                    + resultSet.getString(3) + " - " + resultSet.getInt(4)));
        }

        //---------------------------------------------------\\

        resultSet = statement.executeQuery("select * from regions");
        while (resultSet.next()) {
            System.out.println((resultSet.getInt(1) + " - " + resultSet.getString(2)));
        }


        resultSet.close();
        statement.close();
        connection.close();

    }

    @Test
    public void test2() throws SQLException {

        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet resultSet = statement.executeQuery("select * from departments");

        //how to find how many rows we have for the query
        resultSet.last();
        System.out.println(resultSet.getRow());

        //print all second column information
        resultSet.beforeFirst();
        while (resultSet.next()) {
            System.out.println(resultSet.getString(2));
        }


        resultSet.close();
        statement.close();
        connection.close();

    }

    @Test
    public void test3() throws SQLException {

        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet resultSet = statement.executeQuery("select * from departments");

        // get the database related inside the database metadata object
        DatabaseMetaData dbMetaData = connection.getMetaData();
        System.out.println("dbMetaData.getUserName() = " + dbMetaData.getUserName());
        System.out.println("dbMetaData.getDatabaseProductName() = " + dbMetaData.getDatabaseProductName());
        System.out.println("dbMetaData.getDatabaseProductVersion() = " + dbMetaData.getDatabaseProductVersion());
        System.out.println("dbMetaData.getDriverName() = " + dbMetaData.getDriverName());
        System.out.println("dbMetaData.getDriverVersion() = " + dbMetaData.getDriverVersion());

        // get the resultSetMetaData
        ResultSetMetaData rsMetaData = resultSet.getMetaData();

        // how many columns we have
        int colCount = rsMetaData.getColumnCount();
        System.out.println("colCount = " + colCount);

        // getting column names
        System.out.println(rsMetaData.getColumnName(1));
        System.out.println(rsMetaData.getColumnName(2));

        // rsMetaData.getColumnName(i) --> gets column name
        // rsMetaData.getColumnCount() --> total number of columns
        // print all the column names dynamically
        for (int i = 1; i <= colCount; i++) {
            System.out.println(rsMetaData.getColumnName(i));
        }

        resultSet.close();
        statement.close();
        connection.close();

    }


}
