package com.service.impl;

import com.dao.MaterialDao;
import com.model.Material;
import com.model.User;
import com.service.MaterialService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by xugenli on 2017/5/17.
 */
@Service
public class MaterialServiceImpl implements MaterialService {

    @Resource
    private MaterialDao materialDao;

    @Override
    public List<Material> findAllMaterial() {
        return materialDao.findAllMaterial();
    }

    @Override
    public List<Material> findMaterialByCdsid(User user) {
        return materialDao.findMaterialByCdsid(user);
    }

    @Override
    public Material findMaterialById(int id) {
        return materialDao.findMaterialById(id);
    }
}
