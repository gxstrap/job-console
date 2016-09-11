package com.job.common.utils;

import java.util.Calendar;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.ServletContextAware;

/**
 * 将version版本号写入application中，给css,js引用时用
 */
@Component
public class VersionContext implements ServletContextAware {

    private static final Logger log = LoggerFactory.getLogger(VersionContext.class);

    @Override
    public void setServletContext(ServletContext context) {
        String datetime = DateUtil.dateToString(Calendar.getInstance().getTime(), DateUtil.fm_yyyyMMddHHmmssSSS);
        log.info("# version={}", datetime);
        context.setAttribute("version_css", datetime);
        context.setAttribute("version_js", datetime);
        // context.getContextPath().setAttribute("ctxPath", datetime);
        // context.getContextPath().setAttribute("ctxPath", datetime);
    }

}
