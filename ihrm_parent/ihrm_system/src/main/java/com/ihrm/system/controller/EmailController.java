package com.ihrm.system.controller;

import com.ihrm.common.entity.Result;
import com.ihrm.common.entity.ResultCode;
import com.ihrm.domain.system.Email;
import com.ihrm.domain.system.User;
import com.ihrm.system.dao.EmailDao;
import com.ihrm.system.service.EmailService;
import com.ihrm.system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping(value="/sys")
public class EmailController {

    @Autowired
    private EmailService emailService;

    @Autowired
    private UserService userService;

    /**
     * 删除学生并且不将enState改为1
     * @return
     */
    @GetMapping(value = "/error/{studentId}")
    public Result deleteAndSaveError(@PathVariable(value = "studentId") String studentId) {
        emailService.deleteByUsername(studentId);
        return new Result(ResultCode.SUCCESS);
    }

    /**
     * 是喊出学生并且将enState改为1
     */
    @GetMapping(value = "/agree/{studentId}")
    public Result deleteAndSaveTrue(@PathVariable(value = "studentId") String studentId, User user) {
        user.setEnableState(1);
        emailService.deleteByUsername(studentId);
        return new Result(ResultCode.SUCCESS);
    }

    @GetMapping(value = "/email")
    public Result findAll() {
        List<Email> list = emailService.findAll();
        return new Result(ResultCode.SUCCESS, list);
    }

}
