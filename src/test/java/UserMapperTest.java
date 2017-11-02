import mapper.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/applicationContext.xml"})
public class UserMapperTest {
    @Resource
    private UserMapper userMapper;

    @Test
    public void selectPasswordByUsername() throws Exception {
        String username = "Lilith";
        String password = userMapper.selectPasswordByUsername(username);
        if (password != null) {
            System.out.println(password);
        } else {
            System.out.println("NULL");
        }
    }

    @Test
    public void selctIdByUsername() throws Exception {
        String username = "Lilith";
        int id = userMapper.selctIdByUsername(username);
        System.out.println("id:" + id);
    }
}