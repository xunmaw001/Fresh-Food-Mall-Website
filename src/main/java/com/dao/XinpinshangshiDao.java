package com.dao;

import com.entity.XinpinshangshiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XinpinshangshiVO;
import com.entity.view.XinpinshangshiView;


/**
 * 新品上市
 * 
 * @author 
 * @email 
 * @date 2020-11-13 12:42:37
 */
public interface XinpinshangshiDao extends BaseMapper<XinpinshangshiEntity> {
	
	List<XinpinshangshiVO> selectListVO(@Param("ew") Wrapper<XinpinshangshiEntity> wrapper);
	
	XinpinshangshiVO selectVO(@Param("ew") Wrapper<XinpinshangshiEntity> wrapper);
	
	List<XinpinshangshiView> selectListView(@Param("ew") Wrapper<XinpinshangshiEntity> wrapper);

	List<XinpinshangshiView> selectListView(Pagination page,@Param("ew") Wrapper<XinpinshangshiEntity> wrapper);
	
	XinpinshangshiView selectView(@Param("ew") Wrapper<XinpinshangshiEntity> wrapper);
	
}
