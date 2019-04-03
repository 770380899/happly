package org.seckill.web.param;

import java.io.Serializable;
import java.util.List;

/**
 * @author Created by CJS on 2018/3/9
 */
public class ListParam implements Serializable{

    private List<String> list;

    private String haha;

    public String getHaha() {
        return haha;
    }

    public void setHaha(String haha) {
        this.haha = haha;
    }

    public List<String> getList() {
        return list;
    }

    public void setList(List<String> list) {
        this.list = list;
    }
}
