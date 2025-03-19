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


import com.dao.ZhekoushangpinDao;
import com.entity.ZhekoushangpinEntity;
import com.service.ZhekoushangpinService;
import com.entity.vo.ZhekoushangpinVO;
import com.entity.view.ZhekoushangpinView;

@Service("zhekoushangpinService")
public class ZhekoushangpinServiceImpl extends ServiceImpl<ZhekoushangpinDao, ZhekoushangpinEntity> implements ZhekoushangpinService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZhekoushangpinEntity> page = this.selectPage(
                new Query<ZhekoushangpinEntity>(params).getPage(),
                new EntityWrapper<ZhekoushangpinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZhekoushangpinEntity> wrapper) {
		  Page<ZhekoushangpinView> page =new Query<ZhekoushangpinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZhekoushangpinVO> selectListVO(Wrapper<ZhekoushangpinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZhekoushangpinVO selectVO(Wrapper<ZhekoushangpinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZhekoushangpinView> selectListView(Wrapper<ZhekoushangpinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZhekoushangpinView selectView(Wrapper<ZhekoushangpinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
