Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 120C811DC7C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 04:08:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9KDtxPekxYvvili2avxn6+likOXgqq5NHxMksoc/0I=; b=uXuCn34JjsyYX9
	Q67JoRXimug8urUSWIRn+DbsH2wZrTT/8MMhRMQhHCD0ePFYdbI6N2R/LFiYeGjqdyoV0US29Pg17
	XB08I6caRC/f9jccBTdghLoUiRyZ/Ob6yTjkmpo8V97Fh+0Bgb3ZFN0g8TiyBDA2eSO2Zb85AcUNR
	P9pvkj9iypWw3iCqQpYaQlXia9s6K9wgPQfcLgOUamp7Os1f/SkOYtwBZCHxLI+ncD8p3qlxABqCi
	405QxBIal/+b9xbXygGSUjrQAobzMs1OGZLowmZB0z7Iajb0ovCeqcE3Wa8PxFdt9yRZeBujaYlSl
	3rP5O5Ne7gQV77jYG5iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifbJo-0006w5-Q0; Fri, 13 Dec 2019 03:08:40 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifbIO-0005jP-He
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 03:07:15 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBD37823088025;
 Thu, 12 Dec 2019 21:07:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576206428;
 bh=j9L7757lr3G0ZzPmdcesLX61vOAVroRZ/5blbJOuMGo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=l4OW2V99nvcFerUEIaSv43rBm8sWc3+N9dsoRkTHPpOv+KCKHGv09+Mf+R3/kWmbJ
 Qp1IqgA7RlfWTSOSyka2odQiitRqlDcytsh8jpcfDjsjhqMyjeWWm04Y+o0AEgxqhD
 HIAwP8DYhg1m+a4fD9KobZtHrE7nCUomOGLDQfEQ=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBD3785N026655;
 Thu, 12 Dec 2019 21:07:08 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 21:07:08 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 21:07:08 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBD378au004077;
 Thu, 12 Dec 2019 21:07:08 -0600
From: Dave Gerlach <d-gerlach@ti.com>
To: Tony Lindgren <tony@atomide.com>, Santosh Shilimkar <ssantosh@kernel.org>
Subject: [PATCH 4/5] soc: ti: pm33xx: Add base cpuidle support
Date: Thu, 12 Dec 2019 21:07:54 -0600
Message-ID: <20191213030755.16096-5-d-gerlach@ti.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213030755.16096-1-d-gerlach@ti.com>
References: <20191213030755.16096-1-d-gerlach@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_190712_659239_67D8AD11 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dave Gerlach <d-gerlach@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some cpuidle C-states supported on am335x and am437x, like C1 on am335x,
require the use of the wkup_m3_ipc driver, and all C-states beyond C0 on
both platforms require the use of the SRAM sleep code.

Pass am33xx_do_sram_idle as the idle function to the platform pm core to
be used by the cpuidle-arm driver when entering cpuidle states.
am33xx_do_sram_idle will detect when the wkup_m3 is needed and ping it
if necessary before calling the final cpu_suspend op which will execute
the SRAM code to put the cpu into idle.

Finally, use the begin_suspend and finish_suspend platform ops to be
called at the beginning and end of suspend path to allow use of
cpu_idle_poll_ctrl.

This prevents races between cpuidle and suspend paths trying to
communicate with the wkup_m3, as during suspend we only want it
configured for entry to suspend.

Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
---
 drivers/soc/ti/pm33xx.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/ti/pm33xx.c b/drivers/soc/ti/pm33xx.c
index 19bdcaca1f21..de0123ec8ad6 100644
--- a/drivers/soc/ti/pm33xx.c
+++ b/drivers/soc/ti/pm33xx.c
@@ -130,6 +130,19 @@ static int am33xx_push_sram_idle(void)
 	return 0;
 }
 
+static int am33xx_do_sram_idle(u32 wfi_flags)
+{
+	int ret = 0;
+
+	if (!m3_ipc || !pm_ops)
+		return 0;
+
+	if (wfi_flags & WFI_FLAG_WAKE_M3)
+		ret = m3_ipc->ops->prepare_low_power(m3_ipc, WKUP_M3_IDLE);
+
+	return pm_ops->cpu_suspend(am33xx_do_wfi_sram, wfi_flags);
+}
+
 static int __init am43xx_map_gic(void)
 {
 	gic_dist_base = ioremap(AM43XX_GIC_DIST_BASE, SZ_4K);
@@ -260,6 +273,8 @@ static int am33xx_pm_begin(suspend_state_t state)
 		rtc_only_idle = 0;
 	}
 
+	pm_ops->begin_suspend();
+
 	switch (state) {
 	case PM_SUSPEND_MEM:
 		ret = m3_ipc->ops->prepare_low_power(m3_ipc, WKUP_M3_DEEPSLEEP);
@@ -301,6 +316,8 @@ static void am33xx_pm_end(void)
 	}
 
 	rtc_only_idle = 0;
+
+	pm_ops->finish_suspend();
 }
 
 static int am33xx_pm_valid(suspend_state_t state)
@@ -503,7 +520,7 @@ static int am33xx_pm_probe(struct platform_device *pdev)
 	suspend_wfi_flags |= WFI_FLAG_WAKE_M3;
 #endif /* CONFIG_SUSPEND */
 
-	ret = pm_ops->init(NULL);
+	ret = pm_ops->init(am33xx_do_sram_idle);
 	if (ret) {
 		dev_err(dev, "Unable to call core pm init!\n");
 		ret = -ENODEV;
@@ -522,6 +539,8 @@ static int am33xx_pm_probe(struct platform_device *pdev)
 
 static int am33xx_pm_remove(struct platform_device *pdev)
 {
+	if (pm_ops->deinit)
+		pm_ops->deinit();
 	suspend_set_ops(NULL);
 	wkup_m3_ipc_put(m3_ipc);
 	am33xx_pm_free_sram();
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
