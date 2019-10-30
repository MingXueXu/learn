package edu.hubu.learn.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.hubu.learn.entity.Result;
import edu.hubu.learn.entity.User;
import edu.hubu.learn.service.UserService;

@RestController

@RequestMapping("/rest/user")
public class UserRestController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Object getById(@PathVariable("id") long id) {
        return userService.getUser(id);
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public Object getAll() {
        return userService.getUsers();
    }

    @RequestMapping(method = RequestMethod.POST)
    public Object addUser(@RequestBody User user) {
        userService.addUser(user);
        return user;
    }

    @RequestMapping(method = RequestMethod.PUT)
    public Object modifyUser(@RequestBody User user) {
        userService.modifyUser(user);
        return user;
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public Object deleteUser(@PathVariable("id") long id) {
        try {
            userService.deleteUser(id);
        } catch (Exception e) {
            return new Result(false, e);
        }
        return new Result(true, null);
    }

    @RequestMapping(value = "/search/{key}", method = RequestMethod.GET)
    public Object searchUser(String key) {
        return userService.searchUsers(key);
    }
}