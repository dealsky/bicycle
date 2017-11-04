package com.bicycle.service;

import com.bicycle.dao.entity.ModuleSite;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface SiteService {
    List<ModuleSite> getAllSite();
    List<ModuleSite> getSiteByArea(String siteArea);
    List<String> getAllSiteArea();
    PageInfo<ModuleSite> getPageSiteByArea(Integer pageNum, Integer pageSize, String siteArea);
    List<ModuleSite> getSiteByNumber(long siteNumber);
    void updateSite(ModuleSite moduleSite);
    ModuleSite getSiteById(long siteId);
}