package com.ihrm.system.dao;

import com.ihrm.domain.system.Email;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface EmailDao extends JpaRepository<Email,String>, JpaSpecificationExecutor<Email> {
}
