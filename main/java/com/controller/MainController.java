package com.controller;

import com.model.Account;
import com.model.Material;
import com.model.User;
import com.service.MaterialService;
import com.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by xugenli on 2017/3/8.
 */
@Controller
@Service
public class MainController {

    private static final Logger logger = LoggerFactory.getLogger(MainController.class);

    @Autowired
    private UserService userService;

    @Autowired
    private MaterialService materialService;

    @Autowired
    private User loginUser = null;

    @Autowired
    private List<Material> materials;


    // 跳转登录页
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "login";
    }

    // 验证用户信息
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String cdsid, String password, ModelMap modelMap) {
        //需要在前台写name这边才能获取到cdsid和password
        loginUser.setCdsid(cdsid);
        loginUser.setPassword(password);
        logger.info("start check user info: cdsid-->" + loginUser.getCdsid() + ",password-->" + loginUser.getPassword());
        loginUser = userService.checkUserInfo(loginUser);
        //如果验证正确就跳转 验证失败返回错误界面
        if (loginUser != null) {
            logger.info("用户存在,跳转到材料界面");
            //查询材料列表
            //管理员查询所有材料 非管理员查询与自己相关材料
            if (loginUser.getLevel() == 3) {
                materials = materialService.findAllMaterial();
            } else {
                materials = materialService.findMaterialById(loginUser);
            }

            for (Material a : materials) {
                logger.info(a.getDetailInfo().toString());
            }
            modelMap.addAttribute("materials", materials);
            modelMap.addAttribute("user", loginUser);
            return "material";
        } else {
            //没有查询到用户返回前台提示
            modelMap.addAttribute("message", "3");
            logger.info("用户不存在,跳转到登录界面");
            return "login";
        }


    }


    //查询所有用户的信息
    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public String findAllAccount(ModelMap modelMap) {
        List<Account> allAccount = userService.findAllAccount();
        modelMap.addAttribute("allAccount", allAccount);
        return "userAccount";
    }


    // 根据id查询账户
    //@PathVariable为空的先不深究,判断为空前台先传参代替
    @RequestMapping(value = {"/findAccounts/{beginId}/{endId}"})
    public String findAccounts(@PathVariable("beginId") Integer beginId, @PathVariable("endId") Integer endId, ModelMap ModelMap) {
        List<Account> allAccount = userService.findAccounts(beginId, endId);
        logger.info("------find account------");
        for (Account a : allAccount) {
            logger.info(a.getId() + a.getName() + a.getMoney());
        }
        ModelMap.addAttribute("allAccount", allAccount);
        return "userAccount";
    }

    // 新增账户
    @RequestMapping(value = "/insert")
    //前台传入json字符串，这边可以直接接收，不需要对参数进行获取
    //数据库来进行id的自增长
    //ResponseBody返回字符串，RequestBody来进行对象的转型
    @ResponseBody
    public String insert(@RequestBody Account account, ModelMap modelMap) {
        logger.info("------insert account------");
        logger.info(account.getId() + account.getName() + account.getMoney());
        userService.insertAccount(account);
        List<Account> allAccount = userService.findAllAccount();
        modelMap.addAttribute("allAccount", allAccount);
        return "userAccount";
    }

    //更改账户
    @RequestMapping("/update")
    public String update(@RequestBody Account account, ModelMap modelMap) {
        logger.info("------update account------");
        logger.info(account.getId() + account.getName() + account.getMoney());
        userService.updateAccount(account);
        List<Account> allAccount = userService.findAllAccount();
        modelMap.addAttribute("allAccount", allAccount);
        return "userAccount";
    }


    //删除账户
    @RequestMapping(value = {"/delete/{id}"})
    public String findAccounts(@PathVariable("id") Integer id, ModelMap ModelMap) {
        logger.info("------delete account begin------");
        userService.deleteAccount(id);
        List<Account> allAccount = userService.findAllAccount();
        ModelMap.addAttribute("allAccount", allAccount);
        return "userAccount";
    }

}
