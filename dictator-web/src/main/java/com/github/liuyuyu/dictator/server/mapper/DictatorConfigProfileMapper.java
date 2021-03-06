package com.github.liuyuyu.dictator.server.mapper;

import com.github.liuyuyu.dictator.server.basic.mybatis.SimpleMapper;
import com.github.liuyuyu.dictator.server.model.entity.DictatorConfigProfile;
import com.google.common.collect.Maps;
import lombok.NonNull;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;import tk.mybatis.mapper.weekend.Weekend;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@Mapper
public interface DictatorConfigProfileMapper extends SimpleMapper<DictatorConfigProfile> {
    default Map<Long, String> findProfileNameByIdList(@NonNull List<Long> profileIdList) {
        if (profileIdList.isEmpty()) {
            return Maps.newHashMap();
        }
        Weekend<DictatorConfigProfile> weekend = Weekend.of(DictatorConfigProfile.class);
        weekend.weekendCriteria()
                .andIn(DictatorConfigProfile::getId, profileIdList);
        return this.findAll(weekend).stream()
                .collect(Collectors.toMap(DictatorConfigProfile::getId, DictatorConfigProfile::getProfileName));
    }

    default Optional<DictatorConfigProfile> findByCodeAndEnable(@NonNull String profileCode) {
        Weekend<DictatorConfigProfile> weekend = Weekend.of(DictatorConfigProfile.class);
        weekend.weekendCriteria()
                .andEqualTo(DictatorConfigProfile::getEnable,true)
                .andEqualTo(DictatorConfigProfile::getProfileCode, profileCode);
        return this.findOne(weekend);
    }

    default Map<Long, DictatorConfigProfile> findMapByIdList(@NonNull List<Long> profileIdList) {
        Weekend<DictatorConfigProfile> weekend = Weekend.of(DictatorConfigProfile.class);
        weekend.weekendCriteria()
                .andIn(DictatorConfigProfile::getId, profileIdList);
        return this.findAll(weekend).stream()
                .collect(Collectors.toMap(DictatorConfigProfile::getId, e -> e));
    }

    List<Long> findByRoleIdList(@Param("roleIdList") List<Long> roleIdList);
}