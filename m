Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFAB1CCC0B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 17:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MJlXbMeNvLlJdbHOYcsuMXbCb/1o89NozSChfdwlXfU=; b=e7d5lceqf+UlPw
	IhoAy0LbgYDR57YJJ3WVxUXoWbntuk4CYOxlxRYDZ/Tml7qjC7Irjxf+cyAr3gwmA9t7pHWURT1Uq
	0dmn55UgMpuAtoD7lwsTw/Ywfg/1TBGR550scCszDYb10j1gccQ6dCrI5J6IOTBwRfJL0kNjDhP9u
	xDBIUjwRCiH9d7UhK0q/qPPB0GQkNk6oU65oDkuAuu0170jeEImsp2CeRpxtiTN92040+UQrhtvJj
	T6ax2SV6qnAwCztC/uxXIWEz2pS6BroP/+kXLoiGgECCa1KRqpbriW3OEPvaAKwDZEgBTVFZuYR44
	UnoYZSVXggNrNCMKITeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXoCK-0005UB-Fi; Sun, 10 May 2020 15:49:00 +0000
Received: from smtp09.smtpout.orange.fr ([80.12.242.131]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXoCA-0005Rw-B8
 for linux-arm-kernel@lists.infradead.org; Sun, 10 May 2020 15:48:54 +0000
Received: from localhost.localdomain ([92.148.185.155]) by mwinf5d69 with ME
 id d3oc220073MbWjg033ocWy; Sun, 10 May 2020 17:48:44 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 10 May 2020 17:48:44 +0200
X-ME-IP: 92.148.185.155
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: inki.dae@samsung.com, jy0922.shim@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, airlied@linux.ie, daniel@ffwll.ch,
 kgene@kernel.org, krzk@kernel.org
Subject: [PATCH] drm/exynos: dsi: Remove bridge node reference in error
 handling path in probe function
Date: Sun, 10 May 2020 17:48:33 +0200
Message-Id: <20200510154833.238320-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_084850_869027_1C18C596 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.131 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'exynos_dsi_parse_dt()' takes a reference to 'dsi->in_bridge_node'.
This must be released in the error handling path.

This patch is similar to commit 70505c2ef94b ("drm/exynos: dsi: Remove bridge node reference in removal")
which fixed the issue in the remove function.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
A Fixes tag could be required, but I've not been able to figure out which
one to use.

I think that moving 'exynos_dsi_parse_dt()' in the probe could simplify
the error handling in the probe function. However, I don't know this code
well enough to play this game. So better safe than sorry.
So I've kept the logic in place and added goto everywhere. :(
---
 drivers/gpu/drm/exynos/exynos_drm_dsi.c | 28 ++++++++++++++++++-------
 1 file changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_dsi.c b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
index 902938d2568f..2aa74c3dc733 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_dsi.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
@@ -1770,14 +1770,17 @@ static int exynos_dsi_probe(struct platform_device *pdev)
 	if (ret) {
 		if (ret != -EPROBE_DEFER)
 			dev_info(dev, "failed to get regulators: %d\n", ret);
-		return ret;
+		goto err_put_in_bridge_node;
 	}
 
 	dsi->clks = devm_kcalloc(dev,
 			dsi->driver_data->num_clks, sizeof(*dsi->clks),
 			GFP_KERNEL);
-	if (!dsi->clks)
-		return -ENOMEM;
+	if (!dsi->clks) {
+		ret = -ENOMEM;
+		goto err_put_in_bridge_node;
+	}
+
 
 	for (i = 0; i < dsi->driver_data->num_clks; i++) {
 		dsi->clks[i] = devm_clk_get(dev, clk_names[i]);
@@ -1791,7 +1794,8 @@ static int exynos_dsi_probe(struct platform_device *pdev)
 
 			dev_info(dev, "failed to get the clock: %s\n",
 					clk_names[i]);
-			return PTR_ERR(dsi->clks[i]);
+			ret = PTR_ERR(dsi->clks[i]);
+			goto err_put_in_bridge_node;
 		}
 	}
 
@@ -1799,19 +1803,22 @@ static int exynos_dsi_probe(struct platform_device *pdev)
 	dsi->reg_base = devm_ioremap_resource(dev, res);
 	if (IS_ERR(dsi->reg_base)) {
 		dev_err(dev, "failed to remap io region\n");
-		return PTR_ERR(dsi->reg_base);
+		ret = PTR_ERR(dsi->reg_base);
+		goto err_put_in_bridge_node;
 	}
 
 	dsi->phy = devm_phy_get(dev, "dsim");
 	if (IS_ERR(dsi->phy)) {
 		dev_info(dev, "failed to get dsim phy\n");
-		return PTR_ERR(dsi->phy);
+		ret = PTR_ERR(dsi->phy);
+		goto err_put_in_bridge_node;
 	}
 
 	dsi->irq = platform_get_irq(pdev, 0);
 	if (dsi->irq < 0) {
 		dev_err(dev, "failed to request dsi irq resource\n");
-		return dsi->irq;
+		ret = dsi->irq;
+		goto err_put_in_bridge_node;
 	}
 
 	irq_set_status_flags(dsi->irq, IRQ_NOAUTOEN);
@@ -1820,7 +1827,7 @@ static int exynos_dsi_probe(struct platform_device *pdev)
 					dev_name(dev), dsi);
 	if (ret) {
 		dev_err(dev, "failed to request dsi irq\n");
-		return ret;
+		goto err_put_in_bridge_node;
 	}
 
 	platform_set_drvdata(pdev, &dsi->encoder);
@@ -1828,6 +1835,11 @@ static int exynos_dsi_probe(struct platform_device *pdev)
 	pm_runtime_enable(dev);
 
 	return component_add(dev, &exynos_dsi_component_ops);
+
+err_put_in_bridge_node:
+	of_node_put(dsi->in_bridge_node);
+
+	return ret;
 }
 
 static int exynos_dsi_remove(struct platform_device *pdev)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
