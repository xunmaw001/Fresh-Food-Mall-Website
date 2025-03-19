package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZhekoushangpinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZhekoushangpinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZhekoushangpinView;


/**
 * 折扣商品
 *
 * @author 
 * @email 
 * @date 2020-11-13 12:42:37
 */
public interface ZhekoushangpinService extends IService<ZhekoushangpinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZhekoushangpinVO> selectListVO(Wrapper<ZhekoushangpinEntity> wrapper);
   	
   	ZhekoushangpinVO selectVO(@Param("ew") Wrapper<ZhekoushangpinEntity> wrapper);
   	
   	List<ZhekoushangpinView> selectListView(Wrapper<ZhekoushangpinEntity> wrapper);
   	
   	ZhekoushangpinView selectView(@Param("ew") Wrapper<ZhekoushangpinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZhekoushangpinEntity> wrapper);
   	
}

