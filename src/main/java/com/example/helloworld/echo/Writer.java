package com.example.helloworld.echo;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class Writer {
	private String Writer;

Writer() {
    try{
        File file = new File("C:\\work\\test.csv");

        if (checkBeforeWritefile(file)){
          BufferedWriter bw = new BufferedWriter(new FileWriter(file));

          bw.write("こんにちは");
          bw.newLine();


          bw.close();
        }else{
          System.out.println("ファイルに書き込めません");
        }
      }catch(IOException e){
        System.out.println(e);
      }
    }

    private static boolean checkBeforeWritefile(File file){
      if (file.exists()){
        if (file.isFile() && file.canWrite()){
          return true;
        }
      }

      return false;
    }
}
