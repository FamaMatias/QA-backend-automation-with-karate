package karate.request;

import com.intuit.karate.junit5.Karate;
public class Client {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:Karate/Request/client.feature").relativeTo(getClass());
    }


}
