import axios from 'axios'
import {Message,MessageBox} from 'element-ui'
import store from '@/store'
import {getToken} from '@/utils/auth'

// create an axios instance
const service = axios.create({
  baseURL: process.env.BASE_API, // api的base_url
  timeout: 5000 // request timeout
});

// request interceptor
service.interceptors.request.use(config => {
  // Do something before request is sent
  if (store.getters.token) {
    config.headers['token'] = getToken() // 让每个请求携带token-- ['X-Token']为自定义key 请根据实际情况自行修改
  }
  config.method = 'POST';
  if(!config.data){
    config.data = {};
  }
  return config
}, error => {
  // Do something with request error
  console.log(error) // for debug
  Promise.reject(error)
})

// respone interceptor
service.interceptors.response.use(
  response => {
    const res = response.data;
    if (!res.success) {
      if (res.code === 'INVALID_TOKEN') {
          MessageBox.confirm('你已被登出，可以取消继续留在该页面，或者重新登录', '确定登出', {
            confirmButtonText: '重新登录',
            cancelButtonText: '取消',
            type: 'warning'
          }).then(() => {
            store.dispatch('FedLogOut').then(() => {
              location.reload();// 为了重新实例化vue-router对象 避免bug
            });
          })
      } else {
        Message({
          message: res.msg,
          type: 'error',
          duration: 5 * 1000
        });
      }
      return Promise.reject('error');
    } else {
      return response.data;
    }
  },
  error => {
    console.log('err' + error)// for debug
    Message({
      message: error.msg,
      type: 'error',
      duration: 5 * 1000
    });
    return Promise.reject(error)
  });

export default service
