package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusszhekoushangpinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusszhekoushangpinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusszhekoushangpinView;


/**
 * 折扣商品评论表
 *
 * @author 
 * @email 
 * @date 2020-11-13 12:42:37
 */
public interface DiscusszhekoushangpinService extends IService<DiscusszhekoushangpinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusszhekoushangpinVO> selectListVO(Wrapper<DiscusszhekoushangpinEntity> wrapper);
   	
   	DiscusszhekoushangpinVO selectVO(@Param("ew") Wrapper<DiscusszhekoushangpinEntity> wrapper);
   	
   	List<DiscusszhekoushangpinView> selectListView(Wrapper<DiscusszhekoushangpinEntity> wrapper);
   	
   	DiscusszhekoushangpinView selectView(@Param("ew") Wrapper<DiscusszhekoushangpinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusszhekoushangpinEntity> wrapper);
   	
}

