package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussxinpinshangshiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussxinpinshangshiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussxinpinshangshiView;


/**
 * 新品上市评论表
 *
 * @author 
 * @email 
 * @date 2020-11-13 12:42:37
 */
public interface DiscussxinpinshangshiService extends IService<DiscussxinpinshangshiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussxinpinshangshiVO> selectListVO(Wrapper<DiscussxinpinshangshiEntity> wrapper);
   	
   	DiscussxinpinshangshiVO selectVO(@Param("ew") Wrapper<DiscussxinpinshangshiEntity> wrapper);
   	
   	List<DiscussxinpinshangshiView> selectListView(Wrapper<DiscussxinpinshangshiEntity> wrapper);
   	
   	DiscussxinpinshangshiView selectView(@Param("ew") Wrapper<DiscussxinpinshangshiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussxinpinshangshiEntity> wrapper);
   	
}

