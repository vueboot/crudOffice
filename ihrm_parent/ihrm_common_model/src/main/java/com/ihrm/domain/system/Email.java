package com.ihrm.domain.system;

import lombok.*;
import org.apache.shiro.io.Serializer;
import org.springframework.boot.autoconfigure.domain.EntityScan;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Table(name = "email_msg")
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Getter
@Setter
@Data
public class Email implements Serializable {

    /**
     * 学号
     */
    @Id
    private String studentId;

    /**
     * 名字
     */
    private String username;

    /**
     * 申请实验室
     */
    private String dept;

    /**
     * 申请缘由
     */
    private String msg;


}
