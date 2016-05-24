package com.cliffdurden.spring.javaconfig.helloworld.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class DBBackupCommandRunner {

    public String backup() {
        StringBuilder sb = new StringBuilder();
        try {
            //Process p = Runtime.getRuntime().exec("/Library/PostgreSQL/9.4/bin/pg_dump stockmanager");
            Process p = Runtime.getRuntime().exec("/Users/cliff/dev/study/khasang/stock_manager/pg_dump.sh");
            BufferedReader stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));
            BufferedReader stdError = new BufferedReader(new InputStreamReader(p.getErrorStream()));
            String s = null;
            while ((s = stdInput.readLine()) != null) {
                sb.append(s);
            }
            while ((s = stdError.readLine()) != null) {
                sb.append(s);
            }
        } catch (IOException e) {
            System.out.println("exception happened - here's what I know: ");
            e.printStackTrace();
            sb.append("ERROR:");
            sb.append(e.getMessage());
        }
        return sb.toString();
    }

}
