Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD05121F9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 01:23:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKP8lJ+x1rCAIo+OJTzjCIjf0qoRPaun+WCwjiAisWc=; b=rv5+lfDMlLub68
	klRWMx9escRy88MHfQkaqn0JFIhKtMHd2HMhYznXKcH/3A8ae3paEtgKAcpc6OyE/NapBquFkG9Vz
	HgOrGxtX5HhR/txr2yH3PEo8IH6uQ3k92V9QvL6mvM1xEWXzohFJ8roKiPJgabQcmcXDPRKF8mxgX
	Cg7j8bZqAyM0hMVRhnAtvkJpIE6tTfhYFG0AvpPyHD6XaSemPLRKV+jT3dTAIVgzt12b4w2bSIiPc
	k1AIXzYd01FJ0tQgv90Khbpp0JHZpxkPpmNUJ26JlAf7HyEmDMuhNWVLXX6OpSpHJXBHBj3bSuee3
	keZ0rfOx1gLew8inVYGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0de-0004rh-AO; Tue, 17 Dec 2019 00:22:58 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0an-0001Iq-IG
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 00:20:03 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 7B2EF8272;
 Tue, 17 Dec 2019 00:20:40 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 10/14] dmaengine: ti: omap-dma: Pass sdma auxdata to driver
 and use it
Date: Mon, 16 Dec 2019 16:19:21 -0800
Message-Id: <20191217001925.44558-11-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217001925.44558-1-tony@atomide.com>
References: <20191217001925.44558-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_162001_708207_2CD38704 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Vinod Koul <vinod.koul@intel.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We can now start passing sdma auxdata to the dmaengine driver to start
removing the platform based sdma init.

Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>
Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/common.h       |  3 +++
 arch/arm/mach-omap2/dma.c          |  2 +-
 arch/arm/mach-omap2/pdata-quirks.c |  1 +
 drivers/dma/ti/omap-dma.c          | 14 +++++++++-----
 4 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-omap2/common.h b/arch/arm/mach-omap2/common.h
--- a/arch/arm/mach-omap2/common.h
+++ b/arch/arm/mach-omap2/common.h
@@ -345,9 +345,12 @@ static inline int dra7xx_pciess_reset(struct omap_hwmod *oh)
 }
 #endif
 
+struct omap_system_dma_plat_info;
+
 void pdata_quirks_init(const struct of_device_id *);
 void omap_auxdata_legacy_init(struct device *dev);
 void omap_pcs_legacy_init(int irq, void (*rearm)(void));
+extern struct omap_system_dma_plat_info dma_plat_info;
 
 struct omap_sdrc_params;
 extern void omap_sdrc_init(struct omap_sdrc_params *sdrc_cs0,
diff --git a/arch/arm/mach-omap2/dma.c b/arch/arm/mach-omap2/dma.c
--- a/arch/arm/mach-omap2/dma.c
+++ b/arch/arm/mach-omap2/dma.c
@@ -217,7 +217,7 @@ static struct omap_dma_dev_attr dma_attr = {
 	.lch_count = 32,
 };
 
-static struct omap_system_dma_plat_info dma_plat_info __initdata = {
+struct omap_system_dma_plat_info dma_plat_info = {
 	.reg_map	= reg_map,
 	.channel_stride	= 0x60,
 	.dma_attr	= &dma_attr,
diff --git a/arch/arm/mach-omap2/pdata-quirks.c b/arch/arm/mach-omap2/pdata-quirks.c
--- a/arch/arm/mach-omap2/pdata-quirks.c
+++ b/arch/arm/mach-omap2/pdata-quirks.c
@@ -514,6 +514,7 @@ static struct of_dev_auxdata omap_auxdata_lookup[] = {
 	/* Common auxdata */
 	OF_DEV_AUXDATA("ti,sysc", 0, NULL, &ti_sysc_pdata),
 	OF_DEV_AUXDATA("pinctrl-single", 0, NULL, &pcs_pdata),
+	OF_DEV_AUXDATA("ti,omap-sdma", 0, NULL, &dma_plat_info),
 	{ /* sentinel */ },
 };
 
diff --git a/drivers/dma/ti/omap-dma.c b/drivers/dma/ti/omap-dma.c
--- a/drivers/dma/ti/omap-dma.c
+++ b/drivers/dma/ti/omap-dma.c
@@ -1585,14 +1585,18 @@ static int omap_dma_probe(struct platform_device *pdev)
 		return PTR_ERR(od->base);
 
 	conf = of_device_get_match_data(&pdev->dev);
-	if (conf)
+	if (conf) {
 		od->cfg = conf;
-	else
+		od->plat = dev_get_platdata(&pdev->dev);
+		if (!od->plat)
+			dev_warn(&pdev->dev, "no sdma auxdata needed?\n");
+	} else {
 		od->cfg = &default_cfg;
 
-	od->plat = omap_get_plat_info();
-	if (!od->plat)
-		return -EPROBE_DEFER;
+		od->plat = omap_get_plat_info();
+		if (!od->plat)
+			return -EPROBE_DEFER;
+	}
 
 	od->reg_map = od->plat->reg_map;
 
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
