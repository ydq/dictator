import request from '@/utils/request'

export function listAll(data){
  return request({
    url:"/resource/list",
    data
  });
}