package com.service;

import com.model.Material;
import com.model.User;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by xugenli on 2017/5/17.
 */
@Service
public interface MaterialService {
    List<Material> findAllMaterial();

    List<Material> findMaterialByCdsid(User user);

    Material findMaterialById(int id);

}
