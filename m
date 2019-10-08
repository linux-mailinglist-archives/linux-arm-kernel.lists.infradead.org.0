Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E447DCFAAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDvtSpHRA8vcCduAT85DTxaM816gXaS5TikMfBnJonI=; b=tC+xt4s6otR+a/
	8IT+kniW5RSsMLZr3u/KtgmYrXTsHoq50Il0kiZISUr3lkzh03D3BEjY4WJP6GgC9cQiMGMUmmIVo
	uMuMGXVCEATX607D8w9/l7p50rXukqTQHQB+FoMKo/y/pOIfqTf/+luwWcyDjnMuBaeeymPWml4Wn
	LWpYBVi3UZfV1H2a61HmjxSpvjrYXZIJrrWPvVoEyuPTWQ7/kY4ElzXayMxVHCUDZMH8fPDaYTh1V
	Gg69THTEa2T311UInVe0vdWt8hzHawYIytwYFjUxT9MKrIEse0bkObIPdIiUubsyxRWRjcoOhZrXO
	RCnRiOkXqM5QFS3djPvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHp3I-0006N9-Cv; Tue, 08 Oct 2019 12:57:20 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHp1z-0005Ia-CU
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:56:01 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x98CtvRK068248;
 Tue, 8 Oct 2019 07:55:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570539357;
 bh=0tln0NRFdBItHIltiQcebxGnUnAgfgYhStbd62D0/jM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=j3B7Mmrc2hm6LY+Jg1ZdhZ8GstURcnTriZXoOLFEzkWhiju3n49A5orRlffcSbzDj
 gPcTHPj9O0PuqNwXcWTPenfFAuCVrfL0YJV9QugsYVwNSQdMYNVw21OjeEGn5Q1rO7
 QpgEMs3nMOuDiSRT5I242SDpq4EzJ8bRCJwq3Nq0=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x98Ctv4C010029
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 8 Oct 2019 07:55:57 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 8 Oct
 2019 07:55:56 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 8 Oct 2019 07:55:56 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x98Ctk5B046741;
 Tue, 8 Oct 2019 07:55:55 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <ssantosh@kernel.org>
Subject: [PATCHv8 4/9] soc: ti: omap-prm: add support for denying idle for
 reset clockdomain
Date: Tue, 8 Oct 2019 15:55:39 +0300
Message-ID: <20191008125544.20679-5-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191008125544.20679-1-t-kristo@ti.com>
References: <20191008125544.20679-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_055559_520501_2F75DC11 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tony@atomide.com, devicetree@vger.kernel.org, p.zabel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
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
 drivers/soc/ti/omap_prm.c            | 36 ++++++++++++++++++++++++++--
 include/linux/platform_data/ti-prm.h | 21 ++++++++++++++++
 2 files changed, 55 insertions(+), 2 deletions(-)
 create mode 100644 include/linux/platform_data/ti-prm.h

diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
index 96fa2aad9b93..3d9393ff67e3 100644
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
@@ -40,6 +43,8 @@ struct omap_reset_data {
 	struct omap_prm *prm;
 	u32 mask;
 	spinlock_t lock;
+	struct clockdomain *clkdm;
+	struct device *dev;
 };
 
 #define to_omap_reset_data(p) container_of((p), struct omap_reset_data, rcdev)
@@ -49,6 +54,7 @@ struct omap_reset_data {
 
 #define OMAP_PRM_HAS_RSTCTRL	BIT(0)
 #define OMAP_PRM_HAS_RSTST	BIT(1)
+#define OMAP_PRM_HAS_NO_CLKDM	BIT(2)
 
 #define OMAP_PRM_HAS_RESETS	(OMAP_PRM_HAS_RSTCTRL | OMAP_PRM_HAS_RSTST)
 
@@ -133,6 +139,8 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 	int st_bit;
 	bool has_rstst;
 	unsigned long flags;
+	struct ti_prm_platform_data *pdata = dev_get_platdata(reset->dev);
+	int ret = 0;
 
 	has_rstst = reset->prm->data->rstst ||
 		(reset->prm->data->flags & OMAP_PRM_HAS_RSTST);
@@ -146,6 +154,9 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 		writel_relaxed(v, reset->prm->base + reset->prm->data->rstst);
 	}
 
+	if (reset->clkdm)
+		pdata->clkdm_deny_idle(reset->clkdm);
+
 	/* de-assert the reset control line */
 	spin_lock_irqsave(&reset->lock, flags);
 	v = readl_relaxed(reset->prm->base + reset->prm->data->rstctrl);
@@ -154,7 +165,7 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 	spin_unlock_irqrestore(&reset->lock, flags);
 
 	if (!has_rstst)
-		return 0;
+		goto exit;
 
 	/* wait for the status to be set */
 	ret = readl_relaxed_poll_timeout(reset->prm->base +
@@ -165,7 +176,11 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 		pr_err("%s: timedout waiting for %s:%lu\n", __func__,
 		       reset->prm->data->name, id);
 
-	return 0;
+exit:
+	if (reset->clkdm)
+		pdata->clkdm_allow_idle(reset->clkdm);
+
+	return ret;
 }
 
 static const struct reset_control_ops omap_reset_ops = {
@@ -190,6 +205,8 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 {
 	struct omap_reset_data *reset;
 	const struct omap_rst_map *map;
+	struct ti_prm_platform_data *pdata = dev_get_platdata(&pdev->dev);
+	char buf[32];
 
 	/*
 	 * Check if we have controllable resets. If either rstctrl is non-zero
@@ -199,6 +216,11 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 	if (!prm->data->rstctrl && !(prm->data->flags & OMAP_PRM_HAS_RSTCTRL))
 		return 0;
 
+	/* Check if we have the pdata callbacks in place */
+	if (!pdata || !pdata->clkdm_lookup || !pdata->clkdm_deny_idle ||
+	    !pdata->clkdm_allow_idle)
+		return -EINVAL;
+
 	map = prm->data->rstmap;
 	if (!map)
 		return -EINVAL;
@@ -213,10 +235,20 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 	reset->rcdev.nr_resets = OMAP_MAX_RESETS;
 	reset->rcdev.of_xlate = omap_prm_reset_xlate;
 	reset->rcdev.of_reset_n_cells = 1;
+	reset->dev = &pdev->dev;
 	spin_lock_init(&reset->lock);
 
 	reset->prm = prm;
 
+	sprintf(buf, "%s_clkdm", prm->data->clkdm_name ? prm->data->clkdm_name :
+		prm->data->name);
+
+	if (!(prm->data->flags & OMAP_PRM_HAS_NO_CLKDM)) {
+		reset->clkdm = pdata->clkdm_lookup(buf);
+		if (!reset->clkdm)
+			return -EINVAL;
+	}
+
 	while (map->rst >= 0) {
 		reset->mask |= BIT(map->rst);
 		map++;
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
