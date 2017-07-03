package com.service.impl;

import com.dao.MaterialStatusDao;
import com.model.Status;
import com.service.MaterialStatusService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by xugenli on 2017/7/3.
 */
@Service
public class MaterialStatusServiceImpl implements MaterialStatusService {
    @Resource
    private MaterialStatusDao materialStatusDao;

    @Override
    public List<Status> findAllStatus() {
        return materialStatusDao.findAllStatus();
    }
}
