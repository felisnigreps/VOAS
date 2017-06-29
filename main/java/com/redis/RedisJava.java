package com.redis;

import redis.clients.jedis.Jedis;

/**
 * Created by xugenli on 2017/6/13.
 */
public class RedisJava {
    public static void main(String[] args) {
        Jedis jedis = new Jedis("localhost");
        System.out.println("connect to server successfully");
        System.out.println("Server is running:"+jedis.ping());
    }




}
