Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 283C217DDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 18:10:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1jYWU+hFcV44habWR5XddnBsnIlduBqLuWo83qMJ4U8=; b=YYJJ/BKPULUpgf
	1hh5jStV+3EFESquoXDsZpKDTMAVUyI0EnL9eUyIglp/UzeWmiaWT5Z1EVHuXIxu/GyQdLR1SAyai
	CXoc8uZSczf2YVms5RdOYJ87eMpuxKHUWyWKfncN4AnD5XgMBlSAgyPA07/TBsq+dX5b5NFAErbeR
	cSgYcoEkvt3UNtWwrvmLQqCL9fYFooq1ffWTawB7288/Xcg1KeGzeGeCv/OAYuFkHkFWxzv4st/Nv
	rUZwLn5CpmkOw/m/6SokwWw7YmwlJ6H0cFVw2AxQY3z2/aPNT48xZG2OJjjsM50ha9g04DglO8bet
	WrfjHOj/h4W4OmsFmGtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOP9e-00039i-3b; Wed, 08 May 2019 16:10:50 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOP8d-00010g-4X
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 16:09:54 +0000
Received: by mail-qt1-x844.google.com with SMTP id y42so4372516qtk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 09:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zRNTbKqT4JCfOSK6xrkUmA02JfSOD9QQELwl7WDvtpU=;
 b=SfmynSg1AWxXf5d82GnEIvAHjeX1xH/Fb+F7Moe9A/+pxMp24GZorMQ5g0XNcMK8Cm
 Gbhushqoo70XYPrnF+P/GHPL3Vdkr+y7M8sJvlzEFou8P7APvcpdZG9mJMO0u5dttHEw
 3rL2nQwHour5/S9FaIR0hI1Umt1ohM+MkqyL4n6p7EBNuW8V3WIzWxVYBE9LbSBEs4Ax
 ar45aXOK3GN/0W4hYac1bNPAQy0uP819fcgjjvUWXj65rd1R+phgA+TlZvKN1fc+4lwi
 jgidmqLUXWCzUulWoSl9KCJtev6297tYX+MTVDAVfE5Yvz4ZD8xrRkKzcU/AmORcNzpq
 nvGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zRNTbKqT4JCfOSK6xrkUmA02JfSOD9QQELwl7WDvtpU=;
 b=aJGDhReiEkAOjtt0c2wz2magZJnxxfq/OUxqEwMXZlwITXihsncUs66FfTr2PhS56p
 NlHjz5Rtdg8iQ580Fy2GZeJqIG3NowT38qPjgpozYREFoQ2BsXe8QN9r/gkWPuKfJFyN
 ObygQOy8360QaEI9szotRtDNSeVLkifdKW41q8HxhpxzDQYINqup3WIcQADdRgD+n7rq
 GlCEEWMNaJS25Zjdp+0fbWOqgChvypVy/n5kYbi+7ZhDdnAPUsM1o72P5PjRA3LhiW6L
 nUpjwgP4mtVd/bdSl4lSEpqiJmWn9yffZ7Wbr3GY21ycCACTJwZIHU8IbXrNOkN5cVwk
 i74w==
X-Gm-Message-State: APjAAAU2o3afCwKEmK+qHTti9Git7PZHYQcEgJgux7CWtUT82Jlo5OIU
 epvnnUQdwF/r6kGQSxpdOoJbJg==
X-Google-Smtp-Source: APXvYqy3tayWKc8duRQ+bmjeFbIIdoifi1bY3aQ16j3Eu10XqXuqG/BNha0+Qge2up4EtO7LgVBghA==
X-Received: by 2002:ac8:36ce:: with SMTP id b14mr10657578qtc.190.1557331786216; 
 Wed, 08 May 2019 09:09:46 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id s50sm10936877qts.39.2019.05.08.09.09.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 09:09:45 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v4 11/11] drm/rockchip: Use drm_atomic_helper_commit_tail_rpm
Date: Wed,  8 May 2019 12:09:16 -0400
Message-Id: <20190508160920.144739-12-sean@poorly.run>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190508160920.144739-1-sean@poorly.run>
References: <20190508160920.144739-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_090947_704391_C3C91585 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Zain Wang <wzz@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Now that we use the drm psr helpers, we no longer need to hand-roll our
atomic_commit_tail implementation. So use the helper

Changes in v2:
- None
Changes in v3:
- None
Changes in v4:
- None

Link to v1: https://patchwork.freedesktop.org/patch/msgid/20190228210939.83386-6-sean@poorly.run
Link to v2: https://patchwork.freedesktop.org/patch/msgid/20190326204509.96515-5-sean@poorly.run
Link to v3: https://patchwork.freedesktop.org/patch/msgid/20190502194956.218441-11-sean@poorly.run

Cc: Zain Wang <wzz@rock-chips.com>
Cc: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 21 +--------------------
 1 file changed, 1 insertion(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
index 214064d599ee..1c63d9e833bc 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
@@ -117,27 +117,8 @@ rockchip_user_fb_create(struct drm_device *dev, struct drm_file *file_priv,
 	return ERR_PTR(ret);
 }
 
-static void
-rockchip_atomic_helper_commit_tail_rpm(struct drm_atomic_state *old_state)
-{
-	struct drm_device *dev = old_state->dev;
-
-	drm_atomic_helper_commit_modeset_disables(dev, old_state);
-
-	drm_atomic_helper_commit_modeset_enables(dev, old_state);
-
-	drm_atomic_helper_commit_planes(dev, old_state,
-					DRM_PLANE_COMMIT_ACTIVE_ONLY);
-
-	drm_atomic_helper_commit_hw_done(old_state);
-
-	drm_atomic_helper_wait_for_vblanks(dev, old_state);
-
-	drm_atomic_helper_cleanup_planes(dev, old_state);
-}
-
 static const struct drm_mode_config_helper_funcs rockchip_mode_config_helpers = {
-	.atomic_commit_tail = rockchip_atomic_helper_commit_tail_rpm,
+	.atomic_commit_tail = drm_atomic_helper_commit_tail_rpm,
 };
 
 static const struct drm_mode_config_funcs rockchip_drm_mode_config_funcs = {
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
