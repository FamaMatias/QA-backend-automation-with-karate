package karate.request;

import com.intuit.karate.junit5.Karate;

public class LoginUnsuccessful {
    @Karate.Test
    Karate testSample(){

        return Karate.run("classpath:karate/request/loginUnsuccessful/loginUnsuccessful.feature").relativeTo(getClass());
    }
}
