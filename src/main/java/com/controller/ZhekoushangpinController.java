package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.ZhekoushangpinEntity;
import com.entity.view.ZhekoushangpinView;

import com.service.ZhekoushangpinService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 折扣商品
 * 后端接口
 * @author 
 * @email 
 * @date 2020-11-13 12:42:37
 */
@RestController
@RequestMapping("/zhekoushangpin")
public class ZhekoushangpinController {
    @Autowired
    private ZhekoushangpinService zhekoushangpinService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ZhekoushangpinEntity zhekoushangpin, HttpServletRequest request){

        EntityWrapper<ZhekoushangpinEntity> ew = new EntityWrapper<ZhekoushangpinEntity>();
		PageUtils page = zhekoushangpinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zhekoushangpin), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ZhekoushangpinEntity zhekoushangpin, HttpServletRequest request){
        EntityWrapper<ZhekoushangpinEntity> ew = new EntityWrapper<ZhekoushangpinEntity>();
		PageUtils page = zhekoushangpinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zhekoushangpin), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ZhekoushangpinEntity zhekoushangpin){
       	EntityWrapper<ZhekoushangpinEntity> ew = new EntityWrapper<ZhekoushangpinEntity>();
      	ew.allEq(MPUtil.allEQMapPre( zhekoushangpin, "zhekoushangpin")); 
        return R.ok().put("data", zhekoushangpinService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ZhekoushangpinEntity zhekoushangpin){
        EntityWrapper< ZhekoushangpinEntity> ew = new EntityWrapper< ZhekoushangpinEntity>();
 		ew.allEq(MPUtil.allEQMapPre( zhekoushangpin, "zhekoushangpin")); 
		ZhekoushangpinView zhekoushangpinView =  zhekoushangpinService.selectView(ew);
		return R.ok("查询折扣商品成功").put("data", zhekoushangpinView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        ZhekoushangpinEntity zhekoushangpin = zhekoushangpinService.selectById(id);
        return R.ok().put("data", zhekoushangpin);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        ZhekoushangpinEntity zhekoushangpin = zhekoushangpinService.selectById(id);
        return R.ok().put("data", zhekoushangpin);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ZhekoushangpinEntity zhekoushangpin, HttpServletRequest request){
    	zhekoushangpin.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(zhekoushangpin);

        zhekoushangpinService.insert(zhekoushangpin);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ZhekoushangpinEntity zhekoushangpin, HttpServletRequest request){
    	zhekoushangpin.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(zhekoushangpin);

        zhekoushangpinService.insert(zhekoushangpin);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody ZhekoushangpinEntity zhekoushangpin, HttpServletRequest request){
        //ValidatorUtils.validateEntity(zhekoushangpin);
        zhekoushangpinService.updateById(zhekoushangpin);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        zhekoushangpinService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<ZhekoushangpinEntity> wrapper = new EntityWrapper<ZhekoushangpinEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = zhekoushangpinService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
