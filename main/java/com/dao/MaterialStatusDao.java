package com.dao;

import com.model.Status;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by xugenli on 2017/7/3.
 */
@Repository
public interface MaterialStatusDao {
    List<Status> findAllStatus();
}
