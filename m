Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C435A36A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DNkSJvBgw8t/JYXS4lY2l8Jt3SLm6d9pegRfECZNLyA=; b=WNOsKOIlq+B9JG
	mG13YdHpQrKmAiM2rMdv9e6wGzs0VqHC6QrFfBG0GXpploaDCCmYTW+cO20rlUzFCoJAD7az/WdfA
	DV6LNUDJA6m+GttN2hK3+jt8CQtyItAitNzoFt5Gb2wed9/Wj8etD7f44kNipva63razbz+eOzEzp
	gnpyPA9vSWqqq4PNcRHgcsZNMKkppzI73RiCGEpNSc5QuY+2mG7uP7H4MEGWKm/ZPvwXr/CbAPAjg
	Wm6GFBkS/DuWsJ9d4dPJtfcXea1gXaByHvfJKYX4CQRzrU4RsvzwZAUtoKt4mhqMMV56NZPhv8tdU
	mfjrdivv3IdO0KCM3ZBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3fsK-0000Nd-I5; Fri, 30 Aug 2019 12:19:32 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3frU-00082z-LN
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:18:42 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7UCIcWt119952;
 Fri, 30 Aug 2019 07:18:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567167518;
 bh=p4CR2/bpO2SmuYHCrI6BzoLr7Plewq/qhb2FSuKAUmU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=mJXWfTq7FafNSvwWBj2Uy+zbV4DUeNH1pVL1N+0giyX4TV34c0sFLF87EHWxWScsQ
 EGQ/dt4hJ67aP7994yUhxh3iRK6r93yBH8l2vRoE8vBZYscKlS1FZhvo4sYJbLggqv
 YFA/DWUIOLUbLtyIQJJbrCnD6oSiBK10tu/T49JY=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7UCIcO9004587
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 07:18:38 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 07:18:37 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 07:18:37 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7UCIP6L083824;
 Fri, 30 Aug 2019 07:18:36 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <ssantosh@kernel.org>, <linux-omap@vger.kernel.org>, <tony@atomide.com>,
 <s-anna@ti.com>, <p.zabel@pengutronix.de>
Subject: [PATCHv3 05/10] soc: ti: omap-prm: sync func clock status with resets
Date: Fri, 30 Aug 2019 15:18:11 +0300
Message-ID: <20190830121816.30034-6-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830121816.30034-1-t-kristo@ti.com>
References: <20190830121816.30034-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_051840_793883_54FDD06A 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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
 drivers/soc/ti/omap_prm.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
index 0b6a300f935b..7c8fdc5e6c50 100644
--- a/drivers/soc/ti/omap_prm.c
+++ b/drivers/soc/ti/omap_prm.c
@@ -15,6 +15,8 @@
 #include <linux/platform_device.h>
 #include <linux/reset-controller.h>
 #include <linux/delay.h>
+#include <linux/clk.h>
+#include <linux/clk/ti.h>
 
 #include <linux/platform_data/ti-prm.h>
 
@@ -44,6 +46,7 @@ struct omap_reset_data {
 	u32 mask;
 	spinlock_t lock;
 	struct clockdomain *clkdm;
+	struct clk *clk;
 	struct device *dev;
 };
 
@@ -128,6 +131,8 @@ static int omap_reset_assert(struct reset_controller_dev *rcdev,
 	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctrl);
 	spin_unlock_irqrestore(&reset->lock, flags);
 
+	ti_clk_notify_resets(reset->clk, v == reset->mask);
+
 	return 0;
 }
 
@@ -164,9 +169,19 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctrl);
 	spin_unlock_irqrestore(&reset->lock, flags);
 
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
 	ret = readl_relaxed_poll_timeout(reset->prm->base +
 					 reset->prm->data->rstst,
@@ -207,6 +222,7 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 	const struct omap_rst_map *map;
 	struct ti_prm_platform_data *pdata = dev_get_platdata(&pdev->dev);
 	char buf[32];
+	u32 v;
 
 	/*
 	 * Check if we have controllable resets. If either rstctrl is non-zero
@@ -237,6 +253,13 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 	reset->rcdev.of_reset_n_cells = 1;
 	reset->dev = &pdev->dev;
 	spin_lock_init(&reset->lock);
+	reset->clk = of_clk_get(pdev->dev.of_node, 0);
+
+	if (PTR_ERR(reset->clk) == -ENOENT)
+		reset->clk = NULL;
+
+	if (IS_ERR(reset->clk))
+		return PTR_ERR(reset->clk);
 
 	reset->prm = prm;
 
@@ -254,6 +277,11 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 		map++;
 	}
 
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
