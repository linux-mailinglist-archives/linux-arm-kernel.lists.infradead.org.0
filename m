Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5794C158A69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 08:29:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LWi4h7a9fOH1hXOXqnfRrhSZffSmxViwzLBpB6oc2as=; b=hGk+yd6xvOSfRh
	XObOmO3m8+FgPkqTG1a4OO5JhEED/kpk0bTmbAzqrlMTG6TnqpAKLx0jad1y50KFEYk5Xya2zfb9A
	zezmy8jXbS2ysNEG4sD9HujnFq/41EW2bxzJxnZO1l+NEx11Jq8eOmaAS2VSS+XvDLBa6DwOi7Vz5
	3Qa2aQO4z/e7teLoEJZYNArq2eSXWjzASTAWr9cVt0KyxJXOxb9j4GXwmVbP8BF9OPqB8Q9VgXvAo
	2V7XLFggh8v0qzWQvLluaon6yhr/oBVLOQWDMQ/B7RcYDIJxQ9LxZvermtFn2ocZm2mE/gi+FvUX7
	3trKrLnBR0w3kUGqrpVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1PzM-0002Cx-PD; Tue, 11 Feb 2020 07:29:44 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Pyl-0001ie-9N
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 07:29:09 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 855A55CA;
 Tue, 11 Feb 2020 02:29:01 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Tue, 11 Feb 2020 02:29:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=2XAzinolYfeXzXbbLu5Jf1/tN3
 a6jZF/BQkbt3wshz0=; b=VkPf1VuvLgWPnZUZw6fX9LXSuDM9h+0Pt1b8hzsmRd
 GZZb5mTMCqeax3Ow+tRMtpQnr6/6pnsdYq4Hc/2Sq3//RAkety/bzDhYL0lZQLz5
 OW5Pq5t3NLFYh9FJndlfu9bJKRGmqJ8vRBZZisncXe1O0qxZLUmeXoWrpInsr0tK
 e5oRlJTRw83G4+c7cDse0q9Ae1pFQhJ2ft0+yt/Scgf0YL0Tn1Zzca3eXvO71rTC
 6MZGxiRFVBZ0ctGrOt9djhzLaHuCCFGxrAa8DMWUNhjslyeDRivf4RIJ4igjeTT/
 3UHCFZ1D9RS/xfQRw0BdjP03O1kadeL948agO/ays8Ow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=2XAzinolYfeXzXbbL
 u5Jf1/tN3a6jZF/BQkbt3wshz0=; b=qbHkvXgEe0KcB+QSs2nj7VG5eJ5tyPHWi
 JWdyTt+3hLCstxAqKgUdXrHA7APggTjdpPi1PnNxluZM8OB1bZC+fZ6aPv5bu6K1
 uoqPa4eVfw5fhlsjKPWyEhLx/tOiQLEJ4QH9fVr5zJtIj9atIJAwWp67/e7aHh4n
 KFdW5b2l07rWvnXJHY9TCqnZH2iOQhoh5ti/GEi5EzT4SkiqLsnYLV8tVU7R3LMa
 wSJw81pvGM+4TixAO3l8PNR8vS7f6nvmd2SravACpxlJtGGyIhEHAFaY+b940saq
 cWB3rYhBDtmrpgrFU342uiGKO/jrDGFlUKBrGNzC/DBs4/oqEFlFw==
X-ME-Sender: <xms:u1dCXmNGxulksOtPjq7ptNU-t0wdnoWA3WIK4_dXcBSgw-mowbt8Qw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedvgddutdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgvlhcu
 jfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkphepje
 dtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
 pehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:u1dCXpPfEQsTN8KeDot1R3zoTqbY3LyJQfJRe2gg7sT_bZuzp7RCgA>
 <xmx:u1dCXoQwqRzffF3krcN6pcSD132qpXBRObH9cB0UiMfGE149YhCEXQ>
 <xmx:u1dCXrBJT3YkMotWYc_MSPRZjRuYGf5Cf60UiRkBaStkGW_LVRT6Vw>
 <xmx:vVdCXtFJbQrffTeuoif7Lg7EwI8DMgBHtEGzU2pW0IYPBivNUaT4AA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2C13030606E9;
 Tue, 11 Feb 2020 02:28:59 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org
Subject: [PATCH 1/4] drm/sun4i: dsi: Remove unused drv from driver context
Date: Tue, 11 Feb 2020 01:28:55 -0600
Message-Id: <20200211072858.30784-1-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_232907_364109_6FE1650A 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This member is never used, so remove it.

Fixes: 133add5b5ad4 ("drm/sun4i: Add Allwinner A31 MIPI-DSI controller support")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 4 ----
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h | 1 -
 2 files changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index c958ca9bae63..c07290541fff 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -27,7 +27,6 @@
 #include <drm/drm_probe_helper.h>
 
 #include "sun4i_crtc.h"
-#include "sun4i_drv.h"
 #include "sun4i_tcon.h"
 #include "sun6i_mipi_dsi.h"
 
@@ -1022,15 +1021,12 @@ static int sun6i_dsi_bind(struct device *dev, struct device *master,
 			 void *data)
 {
 	struct drm_device *drm = data;
-	struct sun4i_drv *drv = drm->dev_private;
 	struct sun6i_dsi *dsi = dev_get_drvdata(dev);
 	int ret;
 
 	if (!dsi->panel)
 		return -EPROBE_DEFER;
 
-	dsi->drv = drv;
-
 	drm_encoder_helper_add(&dsi->encoder,
 			       &sun6i_dsi_enc_helper_funcs);
 	ret = drm_encoder_init(drm,
diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
index 3f4846f581ef..61e88ea6044d 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
@@ -28,7 +28,6 @@ struct sun6i_dsi {
 	struct phy		*dphy;
 
 	struct device		*dev;
-	struct sun4i_drv	*drv;
 	struct mipi_dsi_device	*device;
 	struct drm_panel	*panel;
 };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
