package com.cydeo.jdbc_tests.day05;

import com.cydeo.db.utilities.DBUtils;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class DBUtilPractice {

    @Test
    public void test1() {

        //create connection
        DBUtils.createConnection();
        String query = "SELECT first_name,last_name,salary,job_id\n" +
                "from employees\n" +
                "where rownum <6";

        List<Map<String, Object>> queryData = DBUtils.getQueryResultMap(query);

        //print the result
        for (Map<String, Object> row : queryData) {
            System.out.println(row.toString());
        }
        //close the connection
        DBUtils.destroy();

    }


    @Test
    public void test2() {
        //create connection
        DBUtils.createConnection();
        String query = "SELECT first_name,last_name,salary,job_id\n" +
                "from employees\n" +
                "where rownum <2";

        Map<String, Object> rowMap = DBUtils.getRowMap(query);

        System.out.println(rowMap.toString());

        //close the connection
        DBUtils.destroy();

    }

    @Test
    public void test3() {
        //create connection
        DBUtils.createConnection();
        String query = "select FIRST_NAME, LAST_NAME, SALARY\n" +
                "from EMPLOYEES";

        System.out.println(DBUtils.getCellValue(query, 16, 2));

    }

}
