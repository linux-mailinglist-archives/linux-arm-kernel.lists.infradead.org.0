Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E99B1E9A2B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 21:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MeJjPSdXEjEWEkwPIkp3vVt3tN5cQaZGeYi643jKf9U=; b=MUIN+TWL8e2GOd
	3FaS8XRzHw28i4pl4OY7OydjdjN0mWtURU9aANc95E1O+3ZK/TUn3J+Inz+fuv9N9yoUWjKLJV9Iw
	9Yz3+XJIHW6wAwSIFgB6Y+awsu6NTMaIpApkSkqZA+GjOZt64T0rjp2YCaFVDUrV72W7KONtjREcP
	rgheSeDZ4hGgXs30BjT5YB2ZS0qOghjoBfLzciZ0vXefco8RSMaRoea6KZWoDDG+NTaYNR82GhGu/
	fL5hhEu6DjNz7zZsDyyvDkN9tP0V2iiTaREZIOUopMaUFWOUaqOrEEg2SOcSymT7NmeXTVGUbDr3w
	gXRhVW03YwJ4hnM3aIpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfTp2-00039H-3U; Sun, 31 May 2020 19:40:40 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfToY-0002t9-7v
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 19:40:12 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 111738126;
 Sun, 31 May 2020 19:40:58 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 1/5] drm/omap: Fix suspend resume regression after platform
 data removal
Date: Sun, 31 May 2020 12:39:37 -0700
Message-Id: <20200531193941.13179-2-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200531193941.13179-1-tony@atomide.com>
References: <20200531193941.13179-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_124010_327935_5CFE1453 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When booting without legacy platform data, we no longer have omap_device
calling PM runtime suspend for us on suspend. This causes the driver
context not be saved as we have no suspend and resume functions defined.

Let's fix the issue by switching over to use UNIVERSAL_DEV_PM_OPS as it
will call the existing PM runtime suspend functions on suspend.

Fixes: cef766300353 ("drm/omap: Prepare DSS for probing without legacy platform data")
Reported-by: Faiz Abbas <faiz_abbas@ti.com>
Cc: dri-devel@lists.freedesktop.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/gpu/drm/omapdrm/dss/dispc.c      | 6 ++----
 drivers/gpu/drm/omapdrm/dss/dsi.c        | 6 ++----
 drivers/gpu/drm/omapdrm/dss/dss.c        | 6 ++----
 drivers/gpu/drm/omapdrm/dss/venc.c       | 6 ++----
 drivers/gpu/drm/omapdrm/omap_dmm_tiler.c | 4 +---
 5 files changed, 9 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/omapdrm/dss/dispc.c b/drivers/gpu/drm/omapdrm/dss/dispc.c
--- a/drivers/gpu/drm/omapdrm/dss/dispc.c
+++ b/drivers/gpu/drm/omapdrm/dss/dispc.c
@@ -4933,10 +4933,8 @@ static int dispc_runtime_resume(struct device *dev)
 	return 0;
 }
 
-static const struct dev_pm_ops dispc_pm_ops = {
-	.runtime_suspend = dispc_runtime_suspend,
-	.runtime_resume = dispc_runtime_resume,
-};
+static UNIVERSAL_DEV_PM_OPS(dispc_pm_ops, dispc_runtime_suspend,
+			    dispc_runtime_resume, NULL);
 
 struct platform_driver omap_dispchw_driver = {
 	.probe		= dispc_probe,
diff --git a/drivers/gpu/drm/omapdrm/dss/dsi.c b/drivers/gpu/drm/omapdrm/dss/dsi.c
--- a/drivers/gpu/drm/omapdrm/dss/dsi.c
+++ b/drivers/gpu/drm/omapdrm/dss/dsi.c
@@ -5464,10 +5464,8 @@ static int dsi_runtime_resume(struct device *dev)
 	return 0;
 }
 
-static const struct dev_pm_ops dsi_pm_ops = {
-	.runtime_suspend = dsi_runtime_suspend,
-	.runtime_resume = dsi_runtime_resume,
-};
+static UNIVERSAL_DEV_PM_OPS(dsi_pm_ops, dsi_runtime_suspend,
+			    dsi_runtime_resume, NULL);
 
 struct platform_driver omap_dsihw_driver = {
 	.probe		= dsi_probe,
diff --git a/drivers/gpu/drm/omapdrm/dss/dss.c b/drivers/gpu/drm/omapdrm/dss/dss.c
--- a/drivers/gpu/drm/omapdrm/dss/dss.c
+++ b/drivers/gpu/drm/omapdrm/dss/dss.c
@@ -1611,10 +1611,8 @@ static int dss_runtime_resume(struct device *dev)
 	return 0;
 }
 
-static const struct dev_pm_ops dss_pm_ops = {
-	.runtime_suspend = dss_runtime_suspend,
-	.runtime_resume = dss_runtime_resume,
-};
+static UNIVERSAL_DEV_PM_OPS(dss_pm_ops, dss_runtime_suspend,
+			    dss_runtime_resume, NULL);
 
 struct platform_driver omap_dsshw_driver = {
 	.probe		= dss_probe,
diff --git a/drivers/gpu/drm/omapdrm/dss/venc.c b/drivers/gpu/drm/omapdrm/dss/venc.c
--- a/drivers/gpu/drm/omapdrm/dss/venc.c
+++ b/drivers/gpu/drm/omapdrm/dss/venc.c
@@ -942,10 +942,8 @@ static int venc_runtime_resume(struct device *dev)
 	return 0;
 }
 
-static const struct dev_pm_ops venc_pm_ops = {
-	.runtime_suspend = venc_runtime_suspend,
-	.runtime_resume = venc_runtime_resume,
-};
+static UNIVERSAL_DEV_PM_OPS(venc_pm_ops, venc_runtime_suspend,
+			    venc_runtime_resume, NULL);
 
 static const struct of_device_id venc_of_match[] = {
 	{ .compatible = "ti,omap2-venc", },
diff --git a/drivers/gpu/drm/omapdrm/omap_dmm_tiler.c b/drivers/gpu/drm/omapdrm/omap_dmm_tiler.c
--- a/drivers/gpu/drm/omapdrm/omap_dmm_tiler.c
+++ b/drivers/gpu/drm/omapdrm/omap_dmm_tiler.c
@@ -1169,7 +1169,6 @@ int tiler_map_show(struct seq_file *s, void *arg)
 }
 #endif
 
-#ifdef CONFIG_PM_SLEEP
 static int omap_dmm_resume(struct device *dev)
 {
 	struct tcm_area area;
@@ -1193,9 +1192,8 @@ static int omap_dmm_resume(struct device *dev)
 
 	return 0;
 }
-#endif
 
-static SIMPLE_DEV_PM_OPS(omap_dmm_pm_ops, NULL, omap_dmm_resume);
+static UNIVERSAL_DEV_PM_OPS(omap_dmm_pm_ops, NULL, omap_dmm_resume, NULL);
 
 #if defined(CONFIG_OF)
 static const struct dmm_platform_data dmm_omap4_platform_data = {
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
