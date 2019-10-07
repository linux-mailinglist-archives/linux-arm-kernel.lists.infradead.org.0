Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EEACE1B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ylVMrinc1kpQeGAIG4yuT7zeNeNqk4gOdUjK3kGOtqE=; b=FEqpdEDlczdJnL
	3IQvOXKazb8aUbVA8Vf/GHdYh3ptBchkIfTt8Qx1Po1dkEOz7unFlG8g298l2l8hj7BpeV5CB1V/3
	wdwWfZ/Y/8fykudqq5qABLKRHzNiuBs8ZxX3NkcwEb6SoOJhMvqKBj29POcmprlyVCGBJg12JpBvp
	VFs60mW87U4xcL2QVErIGXYkU+YQCdxuIlgu3IEVHmz89m9emX9/2X/499eHAlB6aG3nMtleRYLG8
	4ENDF/9+rzKOuvvPL8nUnucziHhHqFhrzbu/Cukvbdi9AmoxNoPISNO3upOKPeOaIfh4ZX9aGr8AR
	m1jpVK7HPtavGYDJdZAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHS9k-0005aq-FS; Mon, 07 Oct 2019 12:30:28 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHS91-0005Q8-8D
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:29:44 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x97CTd5A092228;
 Mon, 7 Oct 2019 07:29:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570451379;
 bh=KWT9j+QacvjVEBtE+hjvy3qdfIygfB4NgnQaBBRf21w=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=IxuYlVjB1sRkwp3e9rNKfqASkNDHvJ0VbKo6k4PD55oB0XcESmqcddvSbzseiKXY/
 EI7Pn+eVGc06tR88RZ2xkvhWnFcGuAGigXi8hWYberH1ahf181/fjKA20ZV3cf7XYX
 FJpvBOwHVNoEAs5GnmauXmPrc5EGYLtX2mmh+87I=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x97CTdFd069561
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 7 Oct 2019 07:29:39 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 7 Oct
 2019 07:29:38 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 7 Oct 2019 07:29:36 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x97CTYe7066760;
 Mon, 7 Oct 2019 07:29:37 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 2/3] bus: ti-sysc: drop the extra hardreset during init
Date: Mon, 7 Oct 2019 15:29:30 +0300
Message-ID: <20191007122931.18668-3-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191007122931.18668-1-t-kristo@ti.com>
References: <20191007122931.18668-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_052943_385042_0E467652 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There seems to be unnecessary extra hardreset line toggling applied
during module init. This is unnecessary, as the reset lines are already
asserted during boot, and it can cause certain modules to hang (iommus,
remoteprocs.) Remove the extra hardreset toggle, and remove the now
redundant function to handle this also.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/bus/ti-sysc.c | 37 +------------------------------------
 1 file changed, 1 insertion(+), 36 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
index c9d01e2d3a64..6f392469d5b0 100644
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -1518,37 +1518,6 @@ static int sysc_legacy_init(struct sysc *ddata)
 	return error;
 }
 
-/**
- * sysc_rstctrl_reset_deassert - deassert rstctrl reset
- * @ddata: device driver data
- * @reset: reset before deassert
- *
- * A module can have both OCP softreset control and external rstctrl.
- * If more complicated rstctrl resets are needed, please handle these
- * directly from the child device driver and map only the module reset
- * for the parent interconnect target module device.
- *
- * Automatic reset of the module on init can be skipped with the
- * "ti,no-reset-on-init" device tree property.
- */
-static int sysc_rstctrl_reset_deassert(struct sysc *ddata, bool reset)
-{
-	int error;
-
-	if (!ddata->rsts)
-		return 0;
-
-	if (reset) {
-		error = reset_control_assert(ddata->rsts);
-		if (error)
-			return error;
-	}
-
-	reset_control_deassert(ddata->rsts);
-
-	return 0;
-}
-
 /*
  * Note that the caller must ensure the interconnect target module is enabled
  * before calling reset. Otherwise reset will not complete.
@@ -1613,10 +1582,6 @@ static int sysc_init_module(struct sysc *ddata)
 	int error = 0;
 	bool manage_clocks = true;
 
-	error = sysc_rstctrl_reset_deassert(ddata, false);
-	if (error)
-		return error;
-
 	if (ddata->cfg.quirks &
 	    (SYSC_QUIRK_NO_IDLE | SYSC_QUIRK_NO_IDLE_ON_INIT))
 		manage_clocks = false;
@@ -1640,7 +1605,7 @@ static int sysc_init_module(struct sysc *ddata)
 		goto err_opt_clocks;
 
 	if (!(ddata->cfg.quirks & SYSC_QUIRK_NO_RESET_ON_INIT)) {
-		error = sysc_rstctrl_reset_deassert(ddata, true);
+		error = reset_control_deassert(ddata->rsts);
 		if (error)
 			goto err_main_clocks;
 	}
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
