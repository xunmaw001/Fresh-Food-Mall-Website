package com.entity.view;

import com.entity.DiscussxinpinshangshiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 新品上市评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-11-13 12:42:37
 */
@TableName("discussxinpinshangshi")
public class DiscussxinpinshangshiView  extends DiscussxinpinshangshiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussxinpinshangshiView(){
	}
 
 	public DiscussxinpinshangshiView(DiscussxinpinshangshiEntity discussxinpinshangshiEntity){
 	try {
			BeanUtils.copyProperties(this, discussxinpinshangshiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
