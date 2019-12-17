Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48ECB121F99
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 01:22:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yyex4CUgWTCrnYr6+5rV+RxzZs4qonyO6vCpRV9Nac=; b=GTpgpMnXJE+lFJ
	Fu2mVOfHMjuvB8CS2yL4NG8WnNFgSc9ZLDfahEsynFUR3OVRDIn0AdBzgg3gKLW7ClO6EDvWALQeS
	4Tskkn5jrFRuPQW9fCzNQDNkClNbkSAgOguaWhaqsBQloz/cKpBr+hpLSaTJZuLruijest/TwN3Q/
	DSMV7oS7DFjFLdyLJTjuaHSHPCKiST+g+WC2UxJjCiWitTAF5d2F4ZGZvq83VhMxhxHlXIffTi869
	QdNeFe/P8kkLrpjgw41K39SnJ+soHhWu8+LgppQ0U/ia7UBN1ShN5Ev1hoIJv2EVOCqYjXKJfPccF
	cOewDLywmGcaK78TEH+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0cs-00046I-AC; Tue, 17 Dec 2019 00:22:10 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0ai-0001H0-I2
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 00:19:58 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 90B0E8490;
 Tue, 17 Dec 2019 00:20:34 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 07/14] ARM: OMAP2+: Configure dma_plat_info directly and drop
 dma_dev_attr
Date: Mon, 16 Dec 2019 16:19:18 -0800
Message-Id: <20191217001925.44558-8-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217001925.44558-1-tony@atomide.com>
References: <20191217001925.44558-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_161956_686001_F5FDE5E1 
X-CRM114-Status: GOOD (  12.92  )
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

Let's prepare things for passing dma_plat_info to the dmaengine driver in
device tree auxdata. To do that, we want to configure dma_plat_info
directly. And we can also drop the related dma_dev_attr data.

Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>
Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/dma.c                  | 31 +++++++++++++---------
 arch/arm/mach-omap2/omap_hwmod_2420_data.c |  8 ------
 arch/arm/mach-omap2/omap_hwmod_2430_data.c |  8 ------
 arch/arm/mach-omap2/omap_hwmod_3xxx_data.c |  8 ------
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c |  8 ------
 arch/arm/mach-omap2/omap_hwmod_54xx_data.c |  8 ------
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c  |  8 ------
 7 files changed, 18 insertions(+), 61 deletions(-)

diff --git a/arch/arm/mach-omap2/dma.c b/arch/arm/mach-omap2/dma.c
--- a/arch/arm/mach-omap2/dma.c
+++ b/arch/arm/mach-omap2/dma.c
@@ -211,9 +211,16 @@ static const struct dma_slave_map omap24xx_sdma_dt_map[] = {
 	{ "musb-hdrc.1.auto", "dmareq5", SDMA_FILTER_PARAM(64) }, /* OMAP2420 only */
 };
 
+static struct omap_dma_dev_attr dma_attr = {
+	.dev_caps = RESERVE_CHANNEL | DMA_LINKED_LCH | GLOBAL_PRIORITY |
+		    IS_CSSA_32 | IS_CDSA_32,
+	.lch_count = 32,
+};
+
 static struct omap_system_dma_plat_info dma_plat_info __initdata = {
 	.reg_map	= reg_map,
 	.channel_stride	= 0x60,
+	.dma_attr	= &dma_attr,
 	.show_dma_caps	= omap2_show_dma_caps,
 	.clear_dma	= omap2_clear_dma,
 	.dma_write	= dma_write,
@@ -230,22 +237,25 @@ static struct platform_device_info omap_dma_dev_info __initdata = {
 static int __init omap2_system_dma_init_dev(struct omap_hwmod *oh, void *unused)
 {
 	struct platform_device			*pdev;
-	struct omap_system_dma_plat_info	p;
-	struct omap_dma_dev_attr		*d;
 	struct resource				*mem;
 	char					*name = "omap_dma_system";
 
-	p = dma_plat_info;
-	p.dma_attr = (struct omap_dma_dev_attr *)oh->dev_attr;
-	p.errata = configure_dma_errata();
+	dma_plat_info.errata = configure_dma_errata();
 
 	if (soc_is_omap24xx()) {
 		/* DMA slave map for drivers not yet converted to DT */
-		p.slave_map = omap24xx_sdma_dt_map;
-		p.slavecnt = ARRAY_SIZE(omap24xx_sdma_dt_map);
+		dma_plat_info.slave_map = omap24xx_sdma_dt_map;
+		dma_plat_info.slavecnt = ARRAY_SIZE(omap24xx_sdma_dt_map);
 	}
 
-	pdev = omap_device_build(name, 0, oh, &p, sizeof(p));
+	if (!soc_is_omap242x())
+		dma_attr.dev_caps |= IS_RW_PRIORITY;
+
+	if (soc_is_omap34xx() && (omap_type() != OMAP2_DEVICE_TYPE_GP))
+		dma_attr.dev_caps |= HS_CHANNELS_RESERVED;
+
+	pdev = omap_device_build(name, 0, oh, &dma_plat_info,
+				 sizeof(dma_plat_info));
 	if (IS_ERR(pdev)) {
 		pr_err("%s: Can't build omap_device for %s:%s.\n",
 			__func__, name, oh->name);
@@ -267,11 +277,6 @@ static int __init omap2_system_dma_init_dev(struct omap_hwmod *oh, void *unused)
 		return -ENOMEM;
 	}
 
-	d = oh->dev_attr;
-
-	if (cpu_is_omap34xx() && (omap_type() != OMAP2_DEVICE_TYPE_GP))
-		d->dev_caps |= HS_CHANNELS_RESERVED;
-
 	/* Check the capabilities register for descriptor loading feature */
 	if (soc_is_omap24xx() || soc_is_omap34xx() || soc_is_am35xx())
 		dma_common_ch_end = CCFN;
diff --git a/arch/arm/mach-omap2/omap_hwmod_2420_data.c b/arch/arm/mach-omap2/omap_hwmod_2420_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_2420_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_2420_data.c
@@ -126,18 +126,10 @@ static struct omap_hwmod omap2420_i2c2_hwmod = {
 	.flags		= HWMOD_16BIT_REG,
 };
 
-/* dma attributes */
-static struct omap_dma_dev_attr dma_dev_attr = {
-	.dev_caps  = RESERVE_CHANNEL | DMA_LINKED_LCH | GLOBAL_PRIORITY |
-						IS_CSSA_32 | IS_CDSA_32,
-	.lch_count = 32,
-};
-
 static struct omap_hwmod omap2420_dma_system_hwmod = {
 	.name		= "dma",
 	.class		= &omap2xxx_dma_hwmod_class,
 	.main_clk	= "core_l3_ck",
-	.dev_attr	= &dma_dev_attr,
 	.flags		= HWMOD_NO_IDLEST,
 };
 
diff --git a/arch/arm/mach-omap2/omap_hwmod_2430_data.c b/arch/arm/mach-omap2/omap_hwmod_2430_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_2430_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_2430_data.c
@@ -121,18 +121,10 @@ static struct omap_hwmod omap2430_gpio5_hwmod = {
 	.class		= &omap2xxx_gpio_hwmod_class,
 };
 
-/* dma attributes */
-static struct omap_dma_dev_attr dma_dev_attr = {
-	.dev_caps  = RESERVE_CHANNEL | DMA_LINKED_LCH | GLOBAL_PRIORITY |
-				IS_CSSA_32 | IS_CDSA_32 | IS_RW_PRIORITY,
-	.lch_count = 32,
-};
-
 static struct omap_hwmod omap2430_dma_system_hwmod = {
 	.name		= "dma",
 	.class		= &omap2xxx_dma_hwmod_class,
 	.main_clk	= "core_l3_ck",
-	.dev_attr	= &dma_dev_attr,
 	.flags		= HWMOD_NO_IDLEST,
 };
 
diff --git a/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c b/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c
@@ -833,13 +833,6 @@ static struct omap_hwmod omap3xxx_gpio6_hwmod = {
 	.class		= &omap3xxx_gpio_hwmod_class,
 };
 
-/* dma attributes */
-static struct omap_dma_dev_attr dma_dev_attr = {
-	.dev_caps  = RESERVE_CHANNEL | DMA_LINKED_LCH | GLOBAL_PRIORITY |
-				IS_CSSA_32 | IS_CDSA_32 | IS_RW_PRIORITY,
-	.lch_count = 32,
-};
-
 static struct omap_hwmod_class_sysconfig omap3xxx_dma_sysc = {
 	.rev_offs	= 0x0000,
 	.sysc_offs	= 0x002c,
@@ -870,7 +863,6 @@ static struct omap_hwmod omap3xxx_dma_system_hwmod = {
 			.idlest_idle_bit	= OMAP3430_ST_SDMA_SHIFT,
 		},
 	},
-	.dev_attr	= &dma_dev_attr,
 	.flags		= HWMOD_NO_IDLEST,
 };
 
diff --git a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
@@ -422,13 +422,6 @@ static struct omap_hwmod_class omap44xx_dma_hwmod_class = {
 	.sysc	= &omap44xx_dma_sysc,
 };
 
-/* dma dev_attr */
-static struct omap_dma_dev_attr dma_dev_attr = {
-	.dev_caps	= RESERVE_CHANNEL | DMA_LINKED_LCH | GLOBAL_PRIORITY |
-			  IS_CSSA_32 | IS_CDSA_32 | IS_RW_PRIORITY,
-	.lch_count	= 32,
-};
-
 /* dma_system */
 static struct omap_hwmod omap44xx_dma_system_hwmod = {
 	.name		= "dma_system",
@@ -441,7 +434,6 @@ static struct omap_hwmod omap44xx_dma_system_hwmod = {
 			.context_offs = OMAP4_RM_SDMA_SDMA_CONTEXT_OFFSET,
 		},
 	},
-	.dev_attr	= &dma_dev_attr,
 };
 
 /*
diff --git a/arch/arm/mach-omap2/omap_hwmod_54xx_data.c b/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
@@ -256,13 +256,6 @@ static struct omap_hwmod_class omap54xx_dma_hwmod_class = {
 	.sysc	= &omap54xx_dma_sysc,
 };
 
-/* dma dev_attr */
-static struct omap_dma_dev_attr dma_dev_attr = {
-	.dev_caps	= RESERVE_CHANNEL | DMA_LINKED_LCH | GLOBAL_PRIORITY |
-			  IS_CSSA_32 | IS_CDSA_32 | IS_RW_PRIORITY,
-	.lch_count	= 32,
-};
-
 /* dma_system */
 static struct omap_hwmod omap54xx_dma_system_hwmod = {
 	.name		= "dma_system",
@@ -275,7 +268,6 @@ static struct omap_hwmod omap54xx_dma_system_hwmod = {
 			.context_offs = OMAP54XX_RM_DMA_DMA_SYSTEM_CONTEXT_OFFSET,
 		},
 	},
-	.dev_attr	= &dma_dev_attr,
 };
 
 /*
diff --git a/arch/arm/mach-omap2/omap_hwmod_7xx_data.c b/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
@@ -411,13 +411,6 @@ static struct omap_hwmod_class dra7xx_dma_hwmod_class = {
 	.sysc	= &dra7xx_dma_sysc,
 };
 
-/* dma dev_attr */
-static struct omap_dma_dev_attr dma_dev_attr = {
-	.dev_caps	= RESERVE_CHANNEL | DMA_LINKED_LCH | GLOBAL_PRIORITY |
-			  IS_CSSA_32 | IS_CDSA_32 | IS_RW_PRIORITY,
-	.lch_count	= 32,
-};
-
 /* dma_system */
 static struct omap_hwmod dra7xx_dma_system_hwmod = {
 	.name		= "dma_system",
@@ -430,7 +423,6 @@ static struct omap_hwmod dra7xx_dma_system_hwmod = {
 			.context_offs = DRA7XX_RM_DMA_DMA_SYSTEM_CONTEXT_OFFSET,
 		},
 	},
-	.dev_attr	= &dma_dev_attr,
 };
 
 /*
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
