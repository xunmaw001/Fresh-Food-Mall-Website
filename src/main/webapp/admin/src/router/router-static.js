import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
import adminexam from '@/views/modules/shijuanliebiao/exam'
    import news from '@/views/modules/news/list'
    import shangpinpingjia from '@/views/modules/shangpinpingjia/list'
    import kefuguanli from '@/views/modules/kefuguanli/list'
    import zhekoushangpin from '@/views/modules/zhekoushangpin/list'
    import shangpinxinxi from '@/views/modules/shangpinxinxi/list'
    import yifahuodingdan from '@/views/modules/yifahuodingdan/list'
    import yiwanchengdingdan from '@/views/modules/yiwanchengdingdan/list'
    import storeup from '@/views/modules/storeup/list'
    import weizhifudingdan from '@/views/modules/weizhifudingdan/list'
    import yiquxiaodingdan from '@/views/modules/yiquxiaodingdan/list'
    import yizhifudingdan from '@/views/modules/yizhifudingdan/list'
    import xinpinshangshi from '@/views/modules/xinpinshangshi/list'
    import yonghu from '@/views/modules/yonghu/list'
    import shangpinfenlei from '@/views/modules/shangpinfenlei/list'
    import shangpinxilei from '@/views/modules/shangpinxilei/list'
    import yituikuandingdan from '@/views/modules/yituikuandingdan/list'
    import shangpinleixing from '@/views/modules/shangpinleixing/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
        path: '/news',
        name: '新闻资讯',
        component: news
      }
          ,{
        path: '/shangpinpingjia',
        name: '商品评价',
        component: shangpinpingjia
      }
          ,{
        path: '/kefuguanli',
        name: '客服管理',
        component: kefuguanli
      }
          ,{
        path: '/zhekoushangpin',
        name: '折扣商品',
        component: zhekoushangpin
      }
          ,{
        path: '/shangpinxinxi',
        name: '商品信息',
        component: shangpinxinxi
      }
          ,{
        path: '/yifahuodingdan',
        name: '已发货订单',
        component: yifahuodingdan
      }
          ,{
        path: '/yiwanchengdingdan',
        name: '已完成订单',
        component: yiwanchengdingdan
      }
          ,{
        path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
          ,{
        path: '/weizhifudingdan',
        name: '未支付订单',
        component: weizhifudingdan
      }
          ,{
        path: '/yiquxiaodingdan',
        name: '已取消订单',
        component: yiquxiaodingdan
      }
          ,{
        path: '/yizhifudingdan',
        name: '已支付订单',
        component: yizhifudingdan
      }
          ,{
        path: '/xinpinshangshi',
        name: '新品上市',
        component: xinpinshangshi
      }
          ,{
        path: '/yonghu',
        name: '用户',
        component: yonghu
      }
          ,{
        path: '/shangpinfenlei',
        name: '商品分类',
        component: shangpinfenlei
      }
          ,{
        path: '/shangpinxilei',
        name: '商品细类',
        component: shangpinxilei
      }
          ,{
        path: '/yituikuandingdan',
        name: '已退款订单',
        component: yituikuandingdan
      }
          ,{
        path: '/shangpinleixing',
        name: '商品类型',
        component: shangpinleixing
      }
          ,{
        path: '/config',
        name: '轮播图管理',
        component: config
      }
        ]
  },
  {
    path: '/adminexam',
    name: 'adminexam',
    component: adminexam,
    meta: {icon:'', title:'adminexam'}
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
