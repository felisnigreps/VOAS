package com.redis;

import redis.clients.jedis.Jedis;

import java.util.List;

/**
 * Created by xugenli on 2017/6/13.
 */
public class RedisStringJava {
    public static void main(String[] args) {
        Jedis jedis = new Jedis("localhost");
        // set string
        jedis.set("exciting","self-promotion");
        System.out.println("what could be more exciting than " +jedis.get("exciting")+"?");
        //set list
        jedis.rpush("life","music","love","breezy","coffee","beer","smoke");
        // use ltrim hold values between start and end, use "ltrim Minik 1 0" to remove all the values in the list

        List<String> minik = jedis.lrange("life",0,-1);
        for(String value:minik){
            System.out.println(value);
        }

    }
}
