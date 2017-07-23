package org.fkit.ebuy.mapper;



import org.apache.ibatis.annotations.Param;


import org.apache.ibatis.annotations.Select;
import org.fkit.ebuy.domain.Admin;

/**
 * UserMapper接口
 * */
public interface AdminMapper {

	@Select("select * from admin where adminloginname = #{adminloginname} and adminpassword = #{adminpassword}")
	Admin findWithAdminLoginnameAndAdminPassword(@Param("adminloginname")String adminloginname,
			@Param("adminpassword") String adminpassword);
}

