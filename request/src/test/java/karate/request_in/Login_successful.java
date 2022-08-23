package karate.request_in;

import com.intuit.karate.junit5.Karate;

public class Login_successful {
    @Karate.Test
    Karate testSample(){

        return Karate.run("classpath:karate/request_in/login_successful.feature").relativeTo(getClass());
    }
}
