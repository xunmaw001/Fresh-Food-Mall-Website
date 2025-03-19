package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XinpinshangshiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XinpinshangshiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XinpinshangshiView;


/**
 * 新品上市
 *
 * @author 
 * @email 
 * @date 2020-11-13 12:42:37
 */
public interface XinpinshangshiService extends IService<XinpinshangshiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XinpinshangshiVO> selectListVO(Wrapper<XinpinshangshiEntity> wrapper);
   	
   	XinpinshangshiVO selectVO(@Param("ew") Wrapper<XinpinshangshiEntity> wrapper);
   	
   	List<XinpinshangshiView> selectListView(Wrapper<XinpinshangshiEntity> wrapper);
   	
   	XinpinshangshiView selectView(@Param("ew") Wrapper<XinpinshangshiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XinpinshangshiEntity> wrapper);
   	
}

