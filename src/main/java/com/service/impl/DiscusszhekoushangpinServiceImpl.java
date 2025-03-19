package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DiscusszhekoushangpinDao;
import com.entity.DiscusszhekoushangpinEntity;
import com.service.DiscusszhekoushangpinService;
import com.entity.vo.DiscusszhekoushangpinVO;
import com.entity.view.DiscusszhekoushangpinView;

@Service("discusszhekoushangpinService")
public class DiscusszhekoushangpinServiceImpl extends ServiceImpl<DiscusszhekoushangpinDao, DiscusszhekoushangpinEntity> implements DiscusszhekoushangpinService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusszhekoushangpinEntity> page = this.selectPage(
                new Query<DiscusszhekoushangpinEntity>(params).getPage(),
                new EntityWrapper<DiscusszhekoushangpinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusszhekoushangpinEntity> wrapper) {
		  Page<DiscusszhekoushangpinView> page =new Query<DiscusszhekoushangpinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusszhekoushangpinVO> selectListVO(Wrapper<DiscusszhekoushangpinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusszhekoushangpinVO selectVO(Wrapper<DiscusszhekoushangpinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusszhekoushangpinView> selectListView(Wrapper<DiscusszhekoushangpinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusszhekoushangpinView selectView(Wrapper<DiscusszhekoushangpinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
