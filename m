Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9980DAA562
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 16:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tbXXtiRbuhCZfYhdCbmIhhgeX4nCKvYAfj/URQRyJh4=; b=SR0mk1rBk9zCq4
	kEXioQFew2a6rKz9qBUphnAENLH9EdgcEG9bLE2V3MOxGKLPOVSKJSzIDW+GFGHy5wZpnUrJTrsL1
	vgtAgZJyc/jivzg9UGm4ous3AcmxzQ0Ce10dAufrYT4qCk7LVFHf0OCYwG+eP5tgH7yvsRp6Rxt56
	srkurwCx5CqHvrmO8wd5c7SlAxdbFHYEEqXMMG8UOTBwhr29LmYWvuZglDaT428CVwOwg/MPX7VhX
	ZKmlf3rF76wJ/ooWY32OTIIx6lvmxJX6Rn8kWY1E1OWCpc6lAN5ZdEtJUWylGvS+DuNoqS8CuQg0B
	x7iBw4lQFEjSXz53VfCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5sMs-0006eT-6r; Thu, 05 Sep 2019 14:04:10 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5sMf-0006de-F1
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 14:03:59 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id CA4C5810D;
 Thu,  5 Sep 2019 14:04:24 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] bus: ti-sysc: Fix clock handling for no-idle quirks
Date: Thu,  5 Sep 2019 07:03:37 -0700
Message-Id: <20190905140337.19373-1-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_070357_539690_810467D4 
X-CRM114-Status: GOOD (  13.82  )
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

NFSroot can fail on dra7 when cpsw is probed using ti-sysc interconnect
target module driver as reported by Keerthy.

Device clocks and the interconnect target module may or may not be
enabled by the bootloader on init, but we currently assume the clocks
and module are on from the bootloader for "ti,no-idle" and
"ti,no-idle-on-init" quirks as reported by Grygorii Strashko.

Let's fix the issue by always enabling clocks init, and
never disable them for "ti,no-idle" quirk. For "ti,no-idle-on-init"
quirk, we must decrement the usage count later on to allow PM
runtime to idle the module if requested.

Fixes: 1a5cd7c23cc5 ("bus: ti-sysc: Enable all clocks directly during init to read revision")
Cc: Keerthy <j-keerthy@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
Reported-by: Keerthy <j-keerthy@ti.com>
Reported-by: Grygorii Strashko <grygorii.strashko@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 48 +++++++++++++++++++++++++++++++++----------
 1 file changed, 37 insertions(+), 11 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -1632,17 +1632,19 @@ static int sysc_init_module(struct sysc *ddata)
 	if (error)
 		return error;
 
-	if (manage_clocks) {
-		sysc_clkdm_deny_idle(ddata);
+	sysc_clkdm_deny_idle(ddata);
 
-		error = sysc_enable_opt_clocks(ddata);
-		if (error)
-			return error;
+	/*
+	 * Always enable clocks. The bootloader may or may not have enabled
+	 * the related clocks.
+	 */
+	error = sysc_enable_opt_clocks(ddata);
+	if (error)
+		return error;
 
-		error = sysc_enable_main_clocks(ddata);
-		if (error)
-			goto err_opt_clocks;
-	}
+	error = sysc_enable_main_clocks(ddata);
+	if (error)
+		goto err_opt_clocks;
 
 	if (!(ddata->cfg.quirks & SYSC_QUIRK_NO_RESET_ON_INIT)) {
 		error = sysc_rstctrl_reset_deassert(ddata, true);
@@ -1660,7 +1662,7 @@ static int sysc_init_module(struct sysc *ddata)
 			goto err_main_clocks;
 	}
 
-	if (!ddata->legacy_mode && manage_clocks) {
+	if (!ddata->legacy_mode) {
 		error = sysc_enable_module(ddata->dev);
 		if (error)
 			goto err_main_clocks;
@@ -1677,6 +1679,7 @@ static int sysc_init_module(struct sysc *ddata)
 	if (manage_clocks)
 		sysc_disable_main_clocks(ddata);
 err_opt_clocks:
+	/* No re-enable of clockdomain autoidle to prevent module autoidle */
 	if (manage_clocks) {
 		sysc_disable_opt_clocks(ddata);
 		sysc_clkdm_allow_idle(ddata);
@@ -2357,6 +2360,28 @@ static void ti_sysc_idle(struct work_struct *work)
 
 	ddata = container_of(work, struct sysc, idle_work.work);
 
+	/*
+	 * One time decrement of clock usage counts if left on from init.
+	 * Note that we disable opt clocks unconditionally in this case
+	 * as they are enabled unconditionally during init without
+	 * considering sysc_opt_clks_needed() at that point.
+	 */
+	if (ddata->cfg.quirks & (SYSC_QUIRK_NO_IDLE |
+				 SYSC_QUIRK_NO_IDLE_ON_INIT)) {
+		sysc_clkdm_deny_idle(ddata);
+		sysc_disable_main_clocks(ddata);
+		sysc_disable_opt_clocks(ddata);
+		sysc_clkdm_allow_idle(ddata);
+	}
+
+	/* Keep permanent PM runtime usage count for SYSC_QUIRK_NO_IDLE */
+	if (ddata->cfg.quirks & SYSC_QUIRK_NO_IDLE)
+		return;
+
+	/*
+	 * Decrement PM runtime usage count for SYSC_QUIRK_NO_IDLE_ON_INIT
+	 * and SYSC_QUIRK_NO_RESET_ON_INIT
+	 */
 	if (pm_runtime_active(ddata->dev))
 		pm_runtime_put_sync(ddata->dev);
 }
@@ -2445,7 +2470,8 @@ static int sysc_probe(struct platform_device *pdev)
 	INIT_DELAYED_WORK(&ddata->idle_work, ti_sysc_idle);
 
 	/* At least earlycon won't survive without deferred idle */
-	if (ddata->cfg.quirks & (SYSC_QUIRK_NO_IDLE_ON_INIT |
+	if (ddata->cfg.quirks & (SYSC_QUIRK_NO_IDLE |
+				 SYSC_QUIRK_NO_IDLE_ON_INIT |
 				 SYSC_QUIRK_NO_RESET_ON_INIT)) {
 		schedule_delayed_work(&ddata->idle_work, 3000);
 	} else {
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
