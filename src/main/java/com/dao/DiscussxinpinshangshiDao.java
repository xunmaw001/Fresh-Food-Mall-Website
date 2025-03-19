package com.dao;

import com.entity.DiscussxinpinshangshiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussxinpinshangshiVO;
import com.entity.view.DiscussxinpinshangshiView;


/**
 * 新品上市评论表
 * 
 * @author 
 * @email 
 * @date 2020-11-13 12:42:37
 */
public interface DiscussxinpinshangshiDao extends BaseMapper<DiscussxinpinshangshiEntity> {
	
	List<DiscussxinpinshangshiVO> selectListVO(@Param("ew") Wrapper<DiscussxinpinshangshiEntity> wrapper);
	
	DiscussxinpinshangshiVO selectVO(@Param("ew") Wrapper<DiscussxinpinshangshiEntity> wrapper);
	
	List<DiscussxinpinshangshiView> selectListView(@Param("ew") Wrapper<DiscussxinpinshangshiEntity> wrapper);

	List<DiscussxinpinshangshiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussxinpinshangshiEntity> wrapper);
	
	DiscussxinpinshangshiView selectView(@Param("ew") Wrapper<DiscussxinpinshangshiEntity> wrapper);
	
}
