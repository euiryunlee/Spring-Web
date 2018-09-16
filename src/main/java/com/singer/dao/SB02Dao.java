package com.singer.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.singer.vo.SB02Vo;

@Repository("sb02Dao")
public class SB02Dao {
	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "com.singer.mappers.SB02";

	public int insertSB02Vo(SB02Vo sb02Vo) throws Exception {
		return sqlSession.insert(namespace + ".insert", sb02Vo);
	}

	public int likeSB02Vo(SB02Vo sb02Vo) throws Exception {
		return sqlSession.update(namespace + ".like", sb02Vo);
	}

	public List<SB02Vo> selectSB02Vo(SB02Vo sb02Vo) throws Exception {
		return sqlSession.selectList(namespace + ".select", sb02Vo);
	}

	public int updateSB02Vo(SB02Vo sb02Vo) throws Exception {
		return sqlSession.update(namespace + ".update", sb02Vo);
	}

	public int deleteSB02Vo(SB02Vo sb02Vo) throws Exception {
		return sqlSession.delete(namespace + ".delete", sb02Vo);
	}

	public int delete_seqSB02Vo(SB02Vo sb02Vo) throws Exception {
		return sqlSession.delete(namespace + ".delete_seq01", sb02Vo);
	}

}