package mapper;

import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int selctIdByUsername(@Param("username") String username);

    String selectPasswordByUsername(@Param("username") String username);
}
