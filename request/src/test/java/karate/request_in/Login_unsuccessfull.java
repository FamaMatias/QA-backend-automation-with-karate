package karate.request_in;

import com.intuit.karate.junit5.Karate;

public class Login_unsuccessfull {
    @Karate.Test
    Karate testSample(){

        return Karate.run("classpath:karate/request_in/login_unsuccessful.feature").relativeTo(getClass());
    }
}
