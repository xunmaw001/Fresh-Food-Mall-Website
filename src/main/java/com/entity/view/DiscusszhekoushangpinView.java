package com.entity.view;

import com.entity.DiscusszhekoushangpinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 折扣商品评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-11-13 12:42:37
 */
@TableName("discusszhekoushangpin")
public class DiscusszhekoushangpinView  extends DiscusszhekoushangpinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscusszhekoushangpinView(){
	}
 
 	public DiscusszhekoushangpinView(DiscusszhekoushangpinEntity discusszhekoushangpinEntity){
 	try {
			BeanUtils.copyProperties(this, discusszhekoushangpinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
