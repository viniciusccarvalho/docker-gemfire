package org.springframework.gemfire.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

/**
 * Created by vcarvalho on 4/7/15.
 */
@SpringBootApplication
@ImportResource("file:config/cache-context.xml")
public class Application {

    public static void main(String[] args) {
        SpringApplication app = new SpringApplication(Application.class);
        app.run(args);
    }
}
