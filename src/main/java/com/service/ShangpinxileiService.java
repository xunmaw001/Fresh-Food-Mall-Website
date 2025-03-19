package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShangpinxileiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShangpinxileiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShangpinxileiView;


/**
 * 商品细类
 *
 * @author 
 * @email 
 * @date 2020-11-13 12:42:37
 */
public interface ShangpinxileiService extends IService<ShangpinxileiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShangpinxileiVO> selectListVO(Wrapper<ShangpinxileiEntity> wrapper);
   	
   	ShangpinxileiVO selectVO(@Param("ew") Wrapper<ShangpinxileiEntity> wrapper);
   	
   	List<ShangpinxileiView> selectListView(Wrapper<ShangpinxileiEntity> wrapper);
   	
   	ShangpinxileiView selectView(@Param("ew") Wrapper<ShangpinxileiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShangpinxileiEntity> wrapper);
   	
}

