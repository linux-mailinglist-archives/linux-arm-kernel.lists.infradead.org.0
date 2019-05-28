Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EF12BF45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 08:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AdI6v35QW2fyPEy4CoGbHrmDlIW9i1gN2ZjXYk67CqM=; b=IRRJC5Z+U9ag2v
	uWouq1mX+XVDP2obe7cWUtNrCEyV0NG3/am0f+BcXu8TsSbrH43Z1Zd018y0mpPtkzMuMvQqBXpmd
	Ih0hAQYFkqmP/v++RkyHj+fyLKyzfOypn3CIBm8/+dXy4l1vdk3reC/IUaDkwX/yMz0ugC4UB3QPW
	cmr5TqsxX8C+CTghYNN2lCgSg+rRrmbXQ744RB5DvOySqdUbZIlG8wPY5H1wg3XW6WP7b5Xg3LN9/
	QXL2aPlU/3UgNigIgu8qF3o7bF1k0/5+NG2KOQq/yz2RoTdcRS39EYuuQd8dU6ILSYifdtawtxbAz
	4cJmRK4RtAkjATFfnT5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVVY7-0007kF-Ae; Tue, 28 May 2019 06:25:27 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVVX9-0005qd-LO
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 06:24:30 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id F2F2D812F;
 Tue, 28 May 2019 06:24:45 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 03/13] bus: ti-sysc: Make OCP reset work for sysstatus and
 sysconfig reset bits
Date: Mon, 27 May 2019 23:24:04 -0700
Message-Id: <20190528062414.27192-4-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190528062414.27192-1-tony@atomide.com>
References: <20190528062414.27192-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_232428_177749_BB4B1544 
X-CRM114-Status: GOOD (  14.75  )
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
X-Mailman-Version: 2.1.21
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
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, devicetree@vger.kernel.org,
 Faiz Abbas <faiz_abbas@ti.com>, Keerthy <j-keerthy@ti.com>,
 Suman Anna <s-anna@ti.com>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We've had minimal OCP softreset support in ti-sysc interconnect target
module driver only used for MCAN driver so far. But it turns out that
MCAN has the sysstatus register resetdone bit inverted compared to most
other modules.

Let's make OCP softreset work for other typical cases with reset status
in sysstatus or sysconfig register so we can use the new functions for
sysc_enable_module() and sysc_disable_module() without "ti,hwmods"
property in the following patches.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c                 | 72 ++++++++++++++++++++-------
 include/linux/platform_data/ti-sysc.h |  1 +
 2 files changed, 55 insertions(+), 18 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -139,6 +139,26 @@ static u32 sysc_read_revision(struct sysc *ddata)
 	return sysc_read(ddata, offset);
 }
 
+static u32 sysc_read_sysconfig(struct sysc *ddata)
+{
+	int offset = ddata->offsets[SYSC_SYSCONFIG];
+
+	if (offset < 0)
+		return 0;
+
+	return sysc_read(ddata, offset);
+}
+
+static u32 sysc_read_sysstatus(struct sysc *ddata)
+{
+	int offset = ddata->offsets[SYSC_SYSSTATUS];
+
+	if (offset < 0)
+		return 0;
+
+	return sysc_read(ddata, offset);
+}
+
 static int sysc_add_named_clock_from_child(struct sysc *ddata,
 					   const char *name,
 					   const char *optfck_name)
@@ -1356,34 +1376,49 @@ static int sysc_rstctrl_reset_deassert(struct sysc *ddata, bool reset)
 	return reset_control_deassert(ddata->rsts);
 }
 
+/*
+ * Note that the caller must ensure the interconnect target module is enabled
+ * before calling reset. Otherwise reset will not complete.
+ */
 static int sysc_reset(struct sysc *ddata)
 {
-	int offset = ddata->offsets[SYSC_SYSCONFIG];
-	int val;
+	int sysc_offset, syss_offset, sysc_val, rstval, quirks, error = 0;
+	u32 sysc_mask, syss_done;
+
+	sysc_offset = ddata->offsets[SYSC_SYSCONFIG];
+	syss_offset = ddata->offsets[SYSC_SYSSTATUS];
+	quirks = ddata->cfg.quirks;
 
-	if (ddata->legacy_mode || offset < 0 ||
+	if (ddata->legacy_mode || sysc_offset < 0 ||
+	    ddata->cap->regbits->srst_shift < 0 ||
 	    ddata->cfg.quirks & SYSC_QUIRK_NO_RESET_ON_INIT)
 		return 0;
 
-	/*
-	 * Currently only support reset status in sysstatus.
-	 * Warn and return error in all other cases
-	 */
-	if (!ddata->cfg.syss_mask) {
-		dev_err(ddata->dev, "No ti,syss-mask. Reset failed\n");
-		return -EINVAL;
-	}
+	sysc_mask = BIT(ddata->cap->regbits->srst_shift);
 
-	val = sysc_read(ddata, offset);
-	val |= (0x1 << ddata->cap->regbits->srst_shift);
-	sysc_write(ddata, offset, val);
+	if (ddata->cfg.quirks & SYSS_QUIRK_RESETDONE_INVERTED)
+		syss_done = 0;
+	else
+		syss_done = ddata->cfg.syss_mask;
+
+	sysc_val = sysc_read_sysconfig(ddata);
+	sysc_val |= sysc_mask;
+	sysc_write(ddata, sysc_offset, sysc_val);
 
 	/* Poll on reset status */
-	offset = ddata->offsets[SYSC_SYSSTATUS];
+	if (syss_offset >= 0) {
+		error = readx_poll_timeout(sysc_read_sysstatus, ddata, rstval,
+					   (rstval & ddata->cfg.syss_mask) ==
+					   syss_done,
+					   100, MAX_MODULE_SOFTRESET_WAIT);
+
+	} else if (ddata->cfg.quirks & SYSC_QUIRK_RESET_STATUS) {
+		error = readx_poll_timeout(sysc_read_sysconfig, ddata, rstval,
+					   !(rstval & sysc_mask),
+					   100, MAX_MODULE_SOFTRESET_WAIT);
+	}
 
-	return readl_poll_timeout(ddata->module_va + offset, val,
-				  (val & ddata->cfg.syss_mask) == 0x0,
-				  100, MAX_MODULE_SOFTRESET_WAIT);
+	return error;
 }
 
 /*
@@ -2086,6 +2121,7 @@ static const struct sysc_capabilities sysc_dra7_mcan = {
 	.type = TI_SYSC_DRA7_MCAN,
 	.sysc_mask = SYSC_DRA7_MCAN_ENAWAKEUP | SYSC_OMAP4_SOFTRESET,
 	.regbits = &sysc_regbits_dra7_mcan,
+	.mod_quirks = SYSS_QUIRK_RESETDONE_INVERTED,
 };
 
 static int sysc_init_pdata(struct sysc *ddata)
diff --git a/include/linux/platform_data/ti-sysc.h b/include/linux/platform_data/ti-sysc.h
--- a/include/linux/platform_data/ti-sysc.h
+++ b/include/linux/platform_data/ti-sysc.h
@@ -47,6 +47,7 @@ struct sysc_regbits {
 	s8 emufree_shift;
 };
 
+#define SYSS_QUIRK_RESETDONE_INVERTED	BIT(14)
 #define SYSC_QUIRK_SWSUP_MSTANDBY	BIT(13)
 #define SYSC_QUIRK_SWSUP_SIDLE_ACT	BIT(12)
 #define SYSC_QUIRK_SWSUP_SIDLE		BIT(11)
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
