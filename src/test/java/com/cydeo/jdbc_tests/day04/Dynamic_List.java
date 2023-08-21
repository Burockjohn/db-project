package com.cydeo.jdbc_tests.day04;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class Dynamic_List {

    String dbUrl = "jdbc:oracle:thin:@54.166.75.122:1521:xe";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void test1() throws SQLException {

        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet resultSet = statement.executeQuery("select first_name, last_name, salary from employees where ROWNUM < 11");

        // in order to get column names we need resultSetMetaData
        ResultSetMetaData rsmd = resultSet.getMetaData();

        // creating list for keeping all the rows maps
        List<Map<String, Object>> queryData = new ArrayList<>();

        int colCount = rsmd.getColumnCount();
        while (resultSet.next()) {
            Map<String, Object> row = new LinkedHashMap<>();
            for (int i = 1; i <= colCount; i++) {
                row.put(rsmd.getColumnName(i), resultSet.getString(i));
            }
            queryData.add(row);
        }

        for (Map<String, Object> queryDatum : queryData) {
            System.out.println(queryDatum);
        }


        resultSet.close();
        statement.close();
        connection.close();

    }

}
