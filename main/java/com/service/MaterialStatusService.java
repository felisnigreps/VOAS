package com.service;

import com.model.Status;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by xugenli on 2017/7/3.
 */
@Service
public interface MaterialStatusService {
    List<Status> findAllStatus();
}
