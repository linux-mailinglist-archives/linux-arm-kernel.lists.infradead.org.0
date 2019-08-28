Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B18539FB70
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:21:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0FcPPcGXvwZTxAwpbavsyeos61npkhXY19F0RfL7dSI=; b=ROTdjTe14W1Oni
	iqmB6DVxwSch4KSAtksIKdf5rUEvIfy8mCeYGKMfDzgstlj/Hdy9Zg2HVgisgrEiIRob88rDNKKky
	Xe9xgoav/Ig1dl3dCquHETAzcV5MRSuvhRQ0z5gMQXSveA8HGNklWkG70PfocofCCoGgOyr4QDr/y
	Hy3UBU73ebcrBJ8rxFIA0tiTo/eNI5WHbcKSpKok70mZsHmmWgIrD6zyJPUnUJFuyLKjg5oVIi8iJ
	Y47LaLws+j099mBTmSDlCFoOW4nvZhExmaknMwD1azVETs0pLOq3+9uoWXkdvGlEidscoal9QCDQf
	4qmvV325d8CPhIJMLjzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sH2-00087L-Bf; Wed, 28 Aug 2019 07:21:44 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2sFO-0005zw-72
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:20:04 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7S7Jxwa112292;
 Wed, 28 Aug 2019 02:19:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566976799;
 bh=MaJKqEmPi2ARgN2dmtUrxd+FuRc6LkB83YP9HuVdTr8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=TKgJcyumN+Uh48ci5bfK/qWgiynhCaRHxNXvrefoTDyGRNN4Bp01ddpml62kxyZFt
 6ycXiTl9BSFNjZSdAHx/W/o6kAYn7EkAFJdrOp9zbUfgNbxqIK83qWT2cO+O7KLeM0
 D7+sn99CefCR7PoeW19GC2oD6bOz8zfvSBNpqHDY=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7S7Jxoe082890
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 02:19:59 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 02:19:59 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 02:19:59 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7S7JmfG052201;
 Wed, 28 Aug 2019 02:19:57 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <ssantosh@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-omap@vger.kernel.org>, <robh+dt@kernel.org>,
 <p.zabel@pengutronix.de>
Subject: [PATCHv2 04/11] soc: ti: omap-prm: add support for denying idle for
 reset clockdomain
Date: Wed, 28 Aug 2019 10:19:34 +0300
Message-ID: <20190828071941.32378-5-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828071941.32378-1-t-kristo@ti.com>
References: <20190828071941.32378-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_002002_370246_4A8B8CB5 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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

TI SoCs hardware reset signals require the parent clockdomain to be
in force wakeup mode while de-asserting the reset, otherwise it may
never complete. To support this, add pdata hooks to control the
clockdomain directly.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/soc/ti/omap_prm.c            | 34 +++++++++++++++++++++++++---
 include/linux/platform_data/ti-prm.h | 21 +++++++++++++++++
 2 files changed, 52 insertions(+), 3 deletions(-)
 create mode 100644 include/linux/platform_data/ti-prm.h

diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
index afeb70761b27..38998ce19c71 100644
--- a/drivers/soc/ti/omap_prm.c
+++ b/drivers/soc/ti/omap_prm.c
@@ -16,6 +16,8 @@
 #include <linux/reset-controller.h>
 #include <linux/delay.h>
 
+#include <linux/platform_data/ti-prm.h>
+
 struct omap_rst_map {
 	s8 rst;
 	s8 st;
@@ -24,6 +26,7 @@ struct omap_rst_map {
 struct omap_prm_data {
 	u32 base;
 	const char *name;
+	const char *clkdm_name;
 	u16 rstctrl;
 	u16 rstst;
 	const struct omap_rst_map *rstmap;
@@ -38,6 +41,8 @@ struct omap_prm {
 struct omap_reset_data {
 	struct reset_controller_dev rcdev;
 	struct omap_prm *prm;
+	struct clockdomain *clkdm;
+	struct device *dev;
 };
 
 #define to_omap_reset_data(p) container_of((p), struct omap_reset_data, rcdev)
@@ -128,6 +133,8 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 	int st_bit;
 	bool has_rstst;
 	int timeout = 0;
+	struct ti_prm_platform_data *pdata = dev_get_platdata(reset->dev);
+	int ret = 0;
 
 	if (!_is_valid_reset(reset, id))
 		return -EINVAL;
@@ -149,13 +156,15 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 		writel_relaxed(v, reset->prm->base + reset->prm->data->rstst);
 	}
 
+	pdata->clkdm_deny_idle(reset->clkdm);
+
 	/* de-assert the reset control line */
 	v = readl_relaxed(reset->prm->base + reset->prm->data->rstctrl);
 	v &= ~(1 << id);
 	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctrl);
 
 	if (!has_rstst)
-		return 0;
+		goto exit;
 
 	/* wait for the status to be set */
 	while (1) {
@@ -167,13 +176,17 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 		if (timeout > OMAP_RESET_MAX_WAIT) {
 			pr_err("%s: timedout waiting for %s:%lu\n", __func__,
 			       dev_name(rcdev->dev), id);
-			return -EBUSY;
+			ret = -EBUSY;
+			goto exit;
 		}
 
 		udelay(1);
 	}
 
-	return 0;
+exit:
+	pdata->clkdm_allow_idle(reset->clkdm);
+
+	return ret;
 }
 
 static const struct reset_control_ops omap_reset_ops = {
@@ -186,6 +199,8 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 			       struct omap_prm *prm)
 {
 	struct omap_reset_data *reset;
+	struct ti_prm_platform_data *pdata = dev_get_platdata(&pdev->dev);
+	char buf[32];
 
 	/*
 	 * Check if we have controllable resets. If either rstctrl is non-zero
@@ -195,6 +210,11 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 	if (!prm->data->rstctrl && !(prm->data->flags & OMAP_PRM_HAS_RSTCTRL))
 		return 0;
 
+	/* Check if we have the pdata callbacks in place */
+	if (!pdata->clkdm_lookup || !pdata->clkdm_deny_idle ||
+	    !pdata->clkdm_allow_idle)
+		return -EINVAL;
+
 	reset = devm_kzalloc(&pdev->dev, sizeof(*reset), GFP_KERNEL);
 	if (!reset)
 		return -ENOMEM;
@@ -203,9 +223,17 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 	reset->rcdev.ops = &omap_reset_ops;
 	reset->rcdev.of_node = pdev->dev.of_node;
 	reset->rcdev.nr_resets = OMAP_MAX_RESETS;
+	reset->dev = &pdev->dev;
 
 	reset->prm = prm;
 
+	sprintf(buf, "%s_clkdm", prm->data->clkdm_name ? prm->data->clkdm_name :
+		prm->data->name);
+
+	reset->clkdm = pdata->clkdm_lookup(buf);
+	if (!reset->clkdm)
+		return -EINVAL;
+
 	return devm_reset_controller_register(&pdev->dev, &reset->rcdev);
 }
 
diff --git a/include/linux/platform_data/ti-prm.h b/include/linux/platform_data/ti-prm.h
new file mode 100644
index 000000000000..28154c3226c2
--- /dev/null
+++ b/include/linux/platform_data/ti-prm.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * TI PRM (Power & Reset Manager) platform data
+ *
+ * Copyright (C) 2019 Texas Instruments, Inc.
+ *
+ * Tero Kristo <t-kristo@ti.com>
+ */
+
+#ifndef _LINUX_PLATFORM_DATA_TI_PRM_H
+#define _LINUX_PLATFORM_DATA_TI_PRM_H
+
+struct clockdomain;
+
+struct ti_prm_platform_data {
+	void (*clkdm_deny_idle)(struct clockdomain *clkdm);
+	void (*clkdm_allow_idle)(struct clockdomain *clkdm);
+	struct clockdomain * (*clkdm_lookup)(const char *name);
+};
+
+#endif /* _LINUX_PLATFORM_DATA_TI_PRM_H */
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
