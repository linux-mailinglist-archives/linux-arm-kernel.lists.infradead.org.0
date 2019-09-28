Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9345C0F33
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 03:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JIVFIygT4Rq7fGx6X7lYkf5F/OAOEWdaw84I7JuGzAE=; b=MsHrPTSEGbDZcNvLOBnY5GWnob
	0G4QiCAApq7UHrmfjePleH/vCstbGf5GAdPCgL/KLC4lHoaGEo8XkUMgEtD6+rUydtQjpToQCml5h
	BvR/BfYxMxQWPJdxhsKlSwZ4S2yCegonp9ieHV+jVy/U5ffXqrTxmUz8tr4mPsR5+0rOIr80THNnH
	xKfVMVBnsv1/9SwDi39M/8/GfaAaemSwFSgcS4o1rKSOPGppkSJq0xJPw24tvMDdpe+YUMONn/QHQ
	uYRpr24dtD0FGDjGUTHtCTobxFyOYrLtNXvJeaTPiXEyrytRAbaSYlnRL4P3KIfugZcYDWCNtzISe
	uF6d4/hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE1ah-0001TU-SE; Sat, 28 Sep 2019 01:32:07 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE1aJ-0001Ih-AC
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 01:31:45 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DAD1D61359; Sat, 28 Sep 2019 01:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569634302;
 bh=m/+SNT1ylRadZlQdB8fVjW39Gd/vKBoLUGrjef6eP84=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RI1nEsTNZgzuuIiAOrGLYL/LSzZo5ZrLPjkbmNFJa19OCzMGHHcOmzNKVY1pMs0nW
 N5AhgFKmeNw82wiejvI7iRs0Dzc8GAocncgMZDH/TeN4th64WONFI6Tgb1u+C02BoQ
 Szz76x0YTEX33TnwFjkO2hzh7zcDdA86cm1/oxw4=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jeykumar-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jsanka@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 48A1D61215;
 Sat, 28 Sep 2019 01:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569634300;
 bh=m/+SNT1ylRadZlQdB8fVjW39Gd/vKBoLUGrjef6eP84=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gWltI+e8ODxHtIEtclTtLsrsvPIs5a9B4Gwew/tlufCZvnw6SppeDSq0nMs/tFlje
 UFqToKo/LIIWRdNbhvAbgn6OzKFayULvC1QxqEbhX9fc0hVTCIAcDr2Zy62tdd6QBB
 FV9gw8s2lve5RsiNGyiCQETZyv7Wr/xhnhdi8GHE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 48A1D61215
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jsanka@codeaurora.org
From: Jeykumar Sankaran <jsanka@codeaurora.org>
To: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] drm: add fb max width/height fields to drm_mode_config
Date: Fri, 27 Sep 2019 18:31:24 -0700
Message-Id: <1569634284-14147-2-git-send-email-jsanka@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569634284-14147-1-git-send-email-jsanka@codeaurora.org>
References: <1569634284-14147-1-git-send-email-jsanka@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_183143_421380_8B3EAA6E 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jeykumar Sankaran <jsanka@codeaurora.org>, jcrouse@codeaurora.org,
 seanpaul@chromium.org, robdclark@gmail.com, narmstrong@baylibre.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mode_config max width/height values determine the maximum
resolution the pixel reader can handle. But the same values are
used to restrict the size of the framebuffer creation. Hardware's
with scaling blocks can operate on framebuffers larger/smaller than
that of the pixel reader resolutions by scaling them down/up before
rendering.

This changes adds a separate framebuffer max width/height fields
in drm_mode_config to allow vendors to set if they are different
than that of the default max resolution values.

Vendors setting these fields should fix their mode_set paths too
by filtering and validating the modes against the appropriate max
fields in their mode_valid() implementations.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Jeykumar Sankaran <jsanka@codeaurora.org>
---
 drivers/gpu/drm/drm_framebuffer.c | 15 +++++++++++----
 include/drm/drm_mode_config.h     |  3 +++
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_framebuffer.c b/drivers/gpu/drm/drm_framebuffer.c
index 5756431..2083168 100644
--- a/drivers/gpu/drm/drm_framebuffer.c
+++ b/drivers/gpu/drm/drm_framebuffer.c
@@ -300,14 +300,21 @@ struct drm_framebuffer *
 		return ERR_PTR(-EINVAL);
 	}
 
-	if ((config->min_width > r->width) || (r->width > config->max_width)) {
+	if ((config->min_width > r->width) ||
+	    (!config->max_fb_width && r->width > config->max_width) ||
+	    (config->max_fb_width && r->width > config->max_fb_width)) {
 		DRM_DEBUG_KMS("bad framebuffer width %d, should be >= %d && <= %d\n",
-			  r->width, config->min_width, config->max_width);
+			r->width, config->min_width, config->max_fb_width ?
+			config->max_fb_width : config->max_width);
 		return ERR_PTR(-EINVAL);
 	}
-	if ((config->min_height > r->height) || (r->height > config->max_height)) {
+
+	if ((config->min_height > r->height) ||
+	    (!config->max_fb_height && r->height > config->max_height) ||
+	    (config->max_fb_height && r->height > config->max_fb_height)) {
 		DRM_DEBUG_KMS("bad framebuffer height %d, should be >= %d && <= %d\n",
-			  r->height, config->min_height, config->max_height);
+			r->height, config->min_height, config->max_fb_width ?
+			config->max_fb_height : config->max_height);
 		return ERR_PTR(-EINVAL);
 	}
 
diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
index 3bcbe30..c6394ed 100644
--- a/include/drm/drm_mode_config.h
+++ b/include/drm/drm_mode_config.h
@@ -339,6 +339,8 @@ struct drm_mode_config_funcs {
  * @min_height: minimum fb pixel height on this device
  * @max_width: maximum fb pixel width on this device
  * @max_height: maximum fb pixel height on this device
+ * @max_fb_width: maximum fb buffer width if differs from max_width
+ * @max_fb_height: maximum fb buffer height if differs from  max_height
  * @funcs: core driver provided mode setting functions
  * @fb_base: base address of the framebuffer
  * @poll_enabled: track polling support for this device
@@ -523,6 +525,7 @@ struct drm_mode_config {
 
 	int min_width, min_height;
 	int max_width, max_height;
+	int max_fb_width, max_fb_height;
 	const struct drm_mode_config_funcs *funcs;
 	resource_size_t fb_base;
 
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
