package org.seckill.exception;

import org.seckill.enums.SeckillStatEnum;

/**
 * 秒杀相关的所有业务异常
 * @author Karson
 */
public class SeckillException extends RuntimeException {

    public SeckillException(String message) {
        super(message);
    }

    public SeckillException(String message, Throwable cause) {
        super(message, cause);
    }
}
