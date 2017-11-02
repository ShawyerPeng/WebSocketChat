package service;

public interface UserService {
    boolean isPassword(String username, String password);

    int getId(String username);
}
