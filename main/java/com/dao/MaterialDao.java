package com.dao;

import com.model.Material;
import com.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by xugenli on 2017/5/17.
 */
@Repository
public interface MaterialDao {
    List<Material> findAllMaterial();

    List<Material> findMaterialById(User user);


}
