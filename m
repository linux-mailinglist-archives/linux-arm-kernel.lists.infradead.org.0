Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 365F59FB71
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pP9mPVi8V9cUT9pon+LyhZopg47ERpvEsMj5sfId/i8=; b=OQmWidUHfJj7TN
	xO00GiKorbUucObMNwcpiyo/Pf8XYN0uOru0otuwFUHPXxHSN1UuGh3geRRb724wRqfsx/5PvxS1u
	c7jfjW7ocwqAOzEaY2GJpL88KCm1LX4UgnZt7eolczJXaoBPHUkMiA7tvPX0ezRgiB2SrVJVz+6sB
	UaIvk9HSGTq9oUn2nQQ2TUherhBgmIIqDXft1NtIWoQkrhMvG5Qv571CFPCbC+I4FmNkQ9pKZ2LVx
	BHDJJOJhjNfl8OK2tHJX5NdcoJIVyNxE8LOVCPeDXERASDIKHl85BSsAqxJWw/jIEQCksPJhTs4cj
	68bqaDRki46HHTO0MTIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sHH-0008JL-KH; Wed, 28 Aug 2019 07:21:59 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2sFQ-0006Di-L0
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:20:06 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7S7K2Wd126743;
 Wed, 28 Aug 2019 02:20:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566976802;
 bh=+t+/Qiw1iCU7XUNdlc5BaxCXhjDYvL050wWa31KgFc0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=pR+wdsTOST4GukDQCINVeAcrz2zTzejQrJd9AQ2G9iO5rwcQB2CFPxQ36jpiT+7WW
 zSOrf5v6nnoAKY3I7gmxI1cB3Z+ebhOTbDB/NHXRCXt1nxrsmSU/pVFsB0epeBHDk5
 eRN2O4lil2W3s25+Z2pc9z5sxIm8LeJzidrvWpZY=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7S7K1ch081901
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 02:20:02 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 02:20:01 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 02:20:01 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7S7JmfH052201;
 Wed, 28 Aug 2019 02:19:59 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <ssantosh@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-omap@vger.kernel.org>, <robh+dt@kernel.org>,
 <p.zabel@pengutronix.de>
Subject: [PATCHv2 05/11] soc: ti: omap-prm: sync func clock status with resets
Date: Wed, 28 Aug 2019 10:19:35 +0300
Message-ID: <20190828071941.32378-6-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828071941.32378-1-t-kristo@ti.com>
References: <20190828071941.32378-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_002004_818046_2C976D8F 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hardware reset signals are tightly coupled with associated clocks, and
basically de-asserting a reset won't succeed properly if the clock is
not enabled, and vice-versa. Also, disabling a clock won't fully succeed
if the associated hardware resets are not asserted. Add status sync
functionality between these two for TI drivers so that the situations
can be handled properly without generating any timeouts.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/soc/ti/omap_prm.c | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
index 38998ce19c71..e876bad8f8d5 100644
--- a/drivers/soc/ti/omap_prm.c
+++ b/drivers/soc/ti/omap_prm.c
@@ -15,6 +15,8 @@
 #include <linux/platform_device.h>
 #include <linux/reset-controller.h>
 #include <linux/delay.h>
+#include <linux/clk.h>
+#include <linux/clk/ti.h>
 
 #include <linux/platform_data/ti-prm.h>
 
@@ -42,7 +44,9 @@ struct omap_reset_data {
 	struct reset_controller_dev rcdev;
 	struct omap_prm *prm;
 	struct clockdomain *clkdm;
+	struct clk *clk;
 	struct device *dev;
+	u32 mask;
 };
 
 #define to_omap_reset_data(p) container_of((p), struct omap_reset_data, rcdev)
@@ -102,6 +106,8 @@ static int omap_reset_assert(struct reset_controller_dev *rcdev,
 	v |= 1 << id;
 	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctrl);
 
+	ti_clk_notify_resets(reset->clk, v == reset->mask);
+
 	return 0;
 }
 
@@ -163,9 +169,19 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 	v &= ~(1 << id);
 	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctrl);
 
+	ti_clk_notify_resets(reset->clk, v == reset->mask);
+
 	if (!has_rstst)
 		goto exit;
 
+	/* If associated clock is disabled, we can't poll completion status */
+	if (reset->clk) {
+		struct clk_hw *hw = __clk_get_hw(reset->clk);
+
+		if (!clk_hw_is_enabled(hw))
+			return ret;
+	}
+
 	/* wait for the status to be set */
 	while (1) {
 		v = readl_relaxed(reset->prm->base + reset->prm->data->rstst);
@@ -199,8 +215,10 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 			       struct omap_prm *prm)
 {
 	struct omap_reset_data *reset;
+	const struct omap_rst_map *map;
 	struct ti_prm_platform_data *pdata = dev_get_platdata(&pdev->dev);
 	char buf[32];
+	u32 v;
 
 	/*
 	 * Check if we have controllable resets. If either rstctrl is non-zero
@@ -215,6 +233,10 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 	    !pdata->clkdm_allow_idle)
 		return -EINVAL;
 
+	map = prm->data->rstmap;
+	if (!map)
+		return -EINVAL;
+
 	reset = devm_kzalloc(&pdev->dev, sizeof(*reset), GFP_KERNEL);
 	if (!reset)
 		return -ENOMEM;
@@ -224,6 +246,10 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 	reset->rcdev.of_node = pdev->dev.of_node;
 	reset->rcdev.nr_resets = OMAP_MAX_RESETS;
 	reset->dev = &pdev->dev;
+	reset->clk = of_clk_get(pdev->dev.of_node, 0);
+
+	if (IS_ERR(reset->clk))
+		reset->clk = NULL;
 
 	reset->prm = prm;
 
@@ -234,6 +260,16 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 	if (!reset->clkdm)
 		return -EINVAL;
 
+	while (map->rst >= 0) {
+		reset->mask |= BIT(map->rst);
+		map++;
+	}
+
+	if (reset->clk) {
+		v = readl_relaxed(reset->prm->base + reset->prm->data->rstctrl);
+		ti_clk_notify_resets(reset->clk, v == reset->mask);
+	}
+
 	return devm_reset_controller_register(&pdev->dev, &reset->rcdev);
 }
 
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
