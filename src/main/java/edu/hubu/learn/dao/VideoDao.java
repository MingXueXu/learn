package edu.hubu.learn.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.hubu.learn.entity.Video;

public interface VideoDao extends JpaRepository<Video, Long> {

}