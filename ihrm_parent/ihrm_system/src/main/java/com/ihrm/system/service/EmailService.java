package com.ihrm.system.service;

import com.ihrm.common.entity.Result;
import com.ihrm.common.entity.ResultCode;
import com.ihrm.domain.system.Email;
import com.ihrm.domain.system.User;
import com.ihrm.system.dao.EmailDao;
import com.ihrm.system.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class EmailService {

    /**
     * 点击是与否之后直接调用deleteByEmail的方法
     * 删除申请信息
     * 同意过审就save到pe_user，不同意就不save
     *
     * menu的可见性与level绑定，当申请成功之后，自动更改为user，后续可以手动更改等级
     *
     * 任何注册的人都会被添加到user表，补充相关信息，但是无法获得权限
     * 当老师的审批通过之后，就可以将enable_state的状态改为1
     */
    @Autowired
    private EmailDao emailDao;

    @Autowired
    private UserDao userDao;


    public List<Email> findAll() {
        return emailDao.findAll();
    }

    public void deleteByUsername(String username) {
        emailDao.deleteById(username);
    }

    public void saveToStudentTable(User user){
        user.setEnableState(1);
        userDao.save(user);
    }

    public Email findByStudentId (String studentId) {
        try {
            Email email = emailDao.findById(studentId).get();
            return email;
        } catch (Exception e) {
            return null;
        }
    }

    public void add(Map<String,String> map,Email email) {
        email.setStudentId(map.get("studentId"));
        email.setDept(map.get("dept"));
        email.setMsg(map.get("msg"));
        email.setUsername(map.get("username"));
    }

}
