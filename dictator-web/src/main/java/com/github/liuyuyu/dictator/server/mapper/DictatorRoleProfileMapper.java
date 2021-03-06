package com.github.liuyuyu.dictator.server.mapper;

import com.github.liuyuyu.dictator.server.basic.mybatis.SimpleMapper;
import com.github.liuyuyu.dictator.server.model.entity.DictatorRoleProfile;
import com.github.liuyuyu.dictator.server.web.model.dto.DictatorProfilePermissionDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface DictatorRoleProfileMapper extends SimpleMapper<DictatorRoleProfile> {
    int deleteByRoleId(@Param("roleId") Long roleId);

    List<DictatorProfilePermissionDto> findProfilePermissionByRoleIdLIst(@Param("roleIdList") List<Long> roleIdList);

    int countByRoleIdAndAndConfigId(@Param("roleIdList") List<Long> roleIdList, @Param("configId") Long configId);

    int countByRoleIdAndAndProfileId(@Param("roleIdList") List<Long> roleIdList, @Param("profileId") Long profileId);
}