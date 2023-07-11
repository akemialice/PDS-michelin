package br.com.michelin;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class MichelinApplication {

	public String PORT = System.getenv("PORT");
	public static void main(String[] args) {SpringApplication.run(MichelinApplication.class, args);}

}
