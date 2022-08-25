package karate.request;

import com.intuit.karate.junit5.Karate;

public class LoginSuccessful {
    @Karate.Test
    Karate testSample(){

        return Karate.run("classpath:karate/request/loginSuccessful.feature").relativeTo(getClass());
    }
}
