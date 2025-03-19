package com.dao;

import com.entity.DiscusszhekoushangpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusszhekoushangpinVO;
import com.entity.view.DiscusszhekoushangpinView;


/**
 * 折扣商品评论表
 * 
 * @author 
 * @email 
 * @date 2020-11-13 12:42:37
 */
public interface DiscusszhekoushangpinDao extends BaseMapper<DiscusszhekoushangpinEntity> {
	
	List<DiscusszhekoushangpinVO> selectListVO(@Param("ew") Wrapper<DiscusszhekoushangpinEntity> wrapper);
	
	DiscusszhekoushangpinVO selectVO(@Param("ew") Wrapper<DiscusszhekoushangpinEntity> wrapper);
	
	List<DiscusszhekoushangpinView> selectListView(@Param("ew") Wrapper<DiscusszhekoushangpinEntity> wrapper);

	List<DiscusszhekoushangpinView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusszhekoushangpinEntity> wrapper);
	
	DiscusszhekoushangpinView selectView(@Param("ew") Wrapper<DiscusszhekoushangpinEntity> wrapper);
	
}
