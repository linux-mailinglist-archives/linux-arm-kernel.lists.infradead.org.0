Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD594387A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7RrD0Uy2zmqNSazuIpuMRqT5npgiCJ/8tEvQ5NuxFo=; b=uAKVo7Wa1fFIFM
	pvlbttsGrpSR+/IZIFDDxG23an6kQ+Qeysbnxiq+/vM49q1e99UnFBK6qByd/qeZa0ZdC2aQInW5I
	xGOkBckSJXqke0O0GhZPc7L3DUjAG1WDnba7nNrqU9tao5DVcrHUtV/FeRkSabXer5lkZEvBD9EPY
	xXW1qV8d7lArEfDOYzotBRcw74U92I7dVj8M8ByUmHg8jAWItjV7EROOMag3cd9ppvDYGsMvf76Nq
	UloyjDlYL/TFIOKujpFU1Z+FgwRpHmuOBYPftK6ciZP3i8ZpSSJPdVgNQKxUMLFgmOBEsHf9dUk0j
	2bnWwXVEGtfJ56o0pxWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRJE-0006oh-3E; Thu, 13 Jun 2019 15:06:36 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRGJ-00034K-6c
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:03:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QaNyTOoRmFwSjLpLESLHbdGOvEIixP7VeQTJvY6fxEM=; b=xC2q2l+gV1nKrlwrs7xcbqgbbY
 gZOOVjeaIAZTN1QeMQyTwVL5Hq7PoryKRDN0KkEroGTRSf4KPIHTCuH/HBektQZWZkslcRM3SmGK1
 +iH9gVxP2hwbBLdxSo5ViCPs/l6ZhZNnBzXGyNm1uLIEFupohJK906w34GRSGwVTk83dJwbV7XbK8
 HQ+wKypOIPtKPo+E4PkfunOXl7QvdKBxlKcDA02MsRBSLrqTdXkHJy5EXHtjdn1nMyaV1+0jysCYD
 AEeoS655izaF5QE2FcaAqxe/pfC3TQ1y1RikUFbR2Tr/r4tRn7BK6WX/rNT4f3x7RVWDc1iLNKtop
 tbBibVog==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:44854 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFd-0003km-AU; Thu, 13 Jun 2019 16:02:53 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFZ-00008L-36; Thu, 13 Jun 2019 16:02:49 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 13/18] drm/armada: improve Dove clock selection
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbRFZ-00008L-36@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:02:49 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080335_613619_75FA01D5 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Improve the Dove (Armada 510) LCD clock selection and divider
calculation, limiting to the valid divisor values, and reporting an
error if the clock is not achievable within the bounds of HDMI
clocking requirements.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_510.c  | 121 +++++++++++++++++++++++++----------
 drivers/gpu/drm/armada/armada_crtc.c |  78 +++++++++++++++++++++-
 drivers/gpu/drm/armada/armada_crtc.h |  21 +++++-
 3 files changed, 183 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_510.c b/drivers/gpu/drm/armada/armada_510.c
index 370c422f64e3..6f8ad8fb19f1 100644
--- a/drivers/gpu/drm/armada/armada_510.c
+++ b/drivers/gpu/drm/armada/armada_510.c
@@ -14,15 +14,54 @@
 #include "armada_drm.h"
 #include "armada_hw.h"
 
+struct armada510_variant_data {
+	struct clk *clks[4];
+	struct clk *sel_clk;
+};
+
 static int armada510_crtc_init(struct armada_crtc *dcrtc, struct device *dev)
 {
+	struct armada510_variant_data *v;
 	struct clk *clk;
-
-	clk = devm_clk_get(dev, "ext_ref_clk1");
-	if (IS_ERR(clk))
-		return PTR_ERR(clk) == -ENOENT ? -EPROBE_DEFER : PTR_ERR(clk);
-
-	dcrtc->extclk[0] = clk;
+	int idx;
+
+	v = devm_kzalloc(dev, sizeof(*v), GFP_KERNEL);
+	if (!v)
+		return -ENOMEM;
+
+	dcrtc->variant_data = v;
+
+	if (dev->of_node) {
+		struct property *prop;
+		const char *s;
+
+		of_property_for_each_string(dev->of_node, "clock-names", prop,
+					    s) {
+			if (!strcmp(s, "ext_ref_clk0"))
+				idx = 0;
+			else if (!strcmp(s, "ext_ref_clk1"))
+				idx = 1;
+			else if (!strcmp(s, "plldivider"))
+				idx = 2;
+			else if (!strcmp(s, "axibus"))
+				idx = 3;
+			else
+				continue;
+
+			clk = devm_clk_get(dev, s);
+			if (IS_ERR(clk))
+				return PTR_ERR(clk) == -ENOENT ? -EPROBE_DEFER :
+					PTR_ERR(clk);
+			v->clks[idx] = clk;
+		}
+	} else {
+		clk = devm_clk_get(dev, "ext_ref_clk1");
+		if (IS_ERR(clk))
+			return PTR_ERR(clk) == -ENOENT ? -EPROBE_DEFER :
+				PTR_ERR(clk);
+
+		v->clks[1] = clk;
+	}
 
 	/*
 	 * Lower the watermark so to eliminate jitter at higher bandwidths.
@@ -39,65 +78,77 @@ static int armada510_crtc_init(struct armada_crtc *dcrtc, struct device *dev)
 	return 0;
 }
 
+static const u32 armada510_clk_sels[] = {
+	SCLK_510_EXTCLK0,
+	SCLK_510_EXTCLK1,
+	SCLK_510_PLL,
+	SCLK_510_AXI,
+};
+
+static const struct armada_clocking_params armada510_clocking = {
+	/* HDMI requires -0.6%..+0.5% */
+	.permillage_min = 994,
+	.permillage_max = 1005,
+	.settable = BIT(0) | BIT(1),
+	.div_max = SCLK_510_INT_DIV_MASK,
+};
+
 /*
  * Armada510 specific SCLK register selection.
  * This gets called with sclk = NULL to test whether the mode is
  * supportable, and again with sclk != NULL to set the clocks up for
  * that.  The former can return an error, but the latter is expected
  * not to.
- *
- * We currently are pretty rudimentary here, always selecting
- * EXT_REF_CLK_1 for LCD0 and erroring LCD1.  This needs improvement!
  */
 static int armada510_crtc_compute_clock(struct armada_crtc *dcrtc,
 	const struct drm_display_mode *mode, uint32_t *sclk)
 {
-	struct clk *clk = dcrtc->extclk[0];
-	int ret;
+	struct armada510_variant_data *v = dcrtc->variant_data;
+	unsigned long desired_khz = mode->crtc_clock;
+	struct armada_clk_result res;
+	int ret, idx;
 
-	if (dcrtc->num == 1)
-		return -EINVAL;
+	idx = armada_crtc_select_clock(dcrtc, &res, &armada510_clocking,
+				       v->clks, ARRAY_SIZE(v->clks),
+				       desired_khz);
+	if (idx < 0)
+		return idx;
 
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	if (dcrtc->clk != clk) {
-		ret = clk_prepare_enable(clk);
-		if (ret)
-			return ret;
-		dcrtc->clk = clk;
-	}
+	ret = clk_prepare_enable(res.clk);
+	if (ret)
+		return ret;
 
 	if (sclk) {
-		uint32_t rate, ref, div;
+		clk_set_rate(res.clk, res.desired_clk_hz);
 
-		rate = mode->clock * 1000;
-		ref = clk_round_rate(clk, rate);
-		div = DIV_ROUND_UP(ref, rate);
-		if (div < 1)
-			div = 1;
+		*sclk = res.div | armada510_clk_sels[idx];
 
-		clk_set_rate(clk, ref);
-		*sclk = div | SCLK_510_EXTCLK1;
+		/* We are now using this clock */
+		v->sel_clk = res.clk;
+		swap(dcrtc->clk, res.clk);
 	}
 
+	clk_disable_unprepare(res.clk);
+
 	return 0;
 }
 
 static void armada510_crtc_disable(struct armada_crtc *dcrtc)
 {
-	if (!IS_ERR(dcrtc->clk)) {
+	if (dcrtc->clk) {
 		clk_disable_unprepare(dcrtc->clk);
-		dcrtc->clk = ERR_PTR(-EINVAL);
+		dcrtc->clk = NULL;
 	}
 }
 
 static void armada510_crtc_enable(struct armada_crtc *dcrtc,
 	const struct drm_display_mode *mode)
 {
-	if (IS_ERR(dcrtc->clk)) {
-		dcrtc->clk = dcrtc->extclk[0];
-		WARN_ON(clk_prepare_enable(dcrtc->clk));
+	struct armada510_variant_data *v = dcrtc->variant_data;
+
+	if (!dcrtc->clk && v->sel_clk) {
+		if (!WARN_ON(clk_prepare_enable(v->sel_clk)))
+			dcrtc->clk = v->sel_clk;
 	}
 }
 
diff --git a/drivers/gpu/drm/armada/armada_crtc.c b/drivers/gpu/drm/armada/armada_crtc.c
index edce74f60198..949acc82406b 100644
--- a/drivers/gpu/drm/armada/armada_crtc.c
+++ b/drivers/gpu/drm/armada/armada_crtc.c
@@ -801,6 +801,83 @@ static const struct drm_crtc_funcs armada_crtc_funcs = {
 	.disable_vblank	= armada_drm_crtc_disable_vblank,
 };
 
+int armada_crtc_select_clock(struct armada_crtc *dcrtc,
+			     struct armada_clk_result *res,
+			     const struct armada_clocking_params *params,
+			     struct clk *clks[], size_t num_clks,
+			     unsigned long desired_khz)
+{
+	unsigned long desired_hz = desired_khz * 1000;
+	unsigned long desired_clk_hz;	// requested clk input
+	unsigned long real_clk_hz;	// actual clk input
+	unsigned long real_hz;		// actual pixel clk
+	unsigned long permillage;
+	struct clk *clk;
+	u32 div;
+	int i;
+
+	DRM_DEBUG_KMS("[CRTC:%u:%s] desired clock=%luHz\n",
+		      dcrtc->crtc.base.id, dcrtc->crtc.name, desired_hz);
+
+	for (i = 0; i < num_clks; i++) {
+		clk = clks[i];
+		if (!clk)
+			continue;
+
+		if (params->settable & BIT(i)) {
+			real_clk_hz = clk_round_rate(clk, desired_hz);
+			desired_clk_hz = desired_hz;
+		} else {
+			real_clk_hz = clk_get_rate(clk);
+			desired_clk_hz = real_clk_hz;
+		}
+
+		/* If the clock can do exactly the desired rate, we're done */
+		if (real_clk_hz == desired_hz) {
+			real_hz = real_clk_hz;
+			div = 1;
+			break;
+		}
+
+		/* Calculate the divider - if invalid, we can't do this rate */
+		div = DIV_ROUND_CLOSEST(real_clk_hz, desired_hz);
+		if (div == 0 || div > params->div_max)
+			continue;
+
+		/* Calculate the actual rate - HDMI requires -0.6%..+0.5% */
+		real_hz = DIV_ROUND_CLOSEST(real_clk_hz, div);
+
+		DRM_DEBUG_KMS("[CRTC:%u:%s] clk=%u %luHz div=%u real=%luHz\n",
+			dcrtc->crtc.base.id, dcrtc->crtc.name,
+			i, real_clk_hz, div, real_hz);
+
+		/* Avoid repeated division */
+		if (real_hz < desired_hz) {
+			permillage = real_hz / desired_khz;
+			if (permillage < params->permillage_min)
+				continue;
+		} else {
+			permillage = DIV_ROUND_UP(real_hz, desired_khz);
+			if (permillage > params->permillage_max)
+				continue;
+		}
+		break;
+	}
+
+	if (i == 4)
+		return -ERANGE;
+
+	DRM_DEBUG_KMS("[CRTC:%u:%s] selected clk=%u %luHz div=%u real=%luHz\n",
+		dcrtc->crtc.base.id, dcrtc->crtc.name,
+		i, real_clk_hz, div, real_hz);
+
+	res->desired_clk_hz = desired_clk_hz;
+	res->clk = clk;
+	res->div = div;
+
+	return i;
+}
+
 static int armada_drm_crtc_create(struct drm_device *drm, struct device *dev,
 	struct resource *res, int irq, const struct armada_variant *variant,
 	struct device_node *port)
@@ -827,7 +904,6 @@ static int armada_drm_crtc_create(struct drm_device *drm, struct device *dev,
 	dcrtc->variant = variant;
 	dcrtc->base = base;
 	dcrtc->num = drm->mode_config.num_crtc;
-	dcrtc->clk = ERR_PTR(-EINVAL);
 	dcrtc->cfg_dumb_ctrl = DUMB24_RGB888_0;
 	dcrtc->spu_iopad_ctrl = CFG_VSCALE_LN_EN | CFG_IOPAD_DUMB24;
 	spin_lock_init(&dcrtc->irq_lock);
diff --git a/drivers/gpu/drm/armada/armada_crtc.h b/drivers/gpu/drm/armada/armada_crtc.h
index 08761ff01739..fb4aa48da60c 100644
--- a/drivers/gpu/drm/armada/armada_crtc.h
+++ b/drivers/gpu/drm/armada/armada_crtc.h
@@ -39,10 +39,10 @@ struct armada_variant;
 struct armada_crtc {
 	struct drm_crtc		crtc;
 	const struct armada_variant *variant;
+	void			*variant_data;
 	unsigned		num;
 	void __iomem		*base;
 	struct clk		*clk;
-	struct clk		*extclk[2];
 	struct {
 		uint32_t	spu_v_h_total;
 		uint32_t	spu_v_porch;
@@ -75,6 +75,25 @@ struct armada_crtc {
 
 void armada_drm_crtc_update_regs(struct armada_crtc *, struct armada_regs *);
 
+struct armada_clocking_params {
+	unsigned long permillage_min;
+	unsigned long permillage_max;
+	u32 settable;
+	u32 div_max;
+};
+
+struct armada_clk_result {
+	unsigned long desired_clk_hz;
+	struct clk *clk;
+	u32 div;
+};
+
+int armada_crtc_select_clock(struct armada_crtc *dcrtc,
+			     struct armada_clk_result *res,
+			     const struct armada_clocking_params *params,
+			     struct clk *clks[], size_t num_clks,
+			     unsigned long desired_khz);
+
 extern struct platform_driver armada_lcd_platform_driver;
 
 #endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
