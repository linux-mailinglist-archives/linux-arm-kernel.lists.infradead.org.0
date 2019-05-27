Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C6B2B4BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6TLnaF2tP+5OmrbcX3phYnchRE1nGyAH4aS3vOkogs=; b=qW0oCGp/pA5q3P
	4z/TKM+nelKH5Umss7qzn+2v6zjRNb1+bmjiSkjb9ZzoETwBiBot6XreBJb8XKk4zd+6tQP8h1zkR
	6kcJGGD/c9mdBWtoDd2gmPGQ+8NrtsEU6CRywLOO+uOpEGuu7J+wfGWtIj+0PxH/1Q8A2ci6dDOLO
	dSpq4xmSWsvnVg4bA49Z6OhfWGOoCGdOD57tO5zV9epSOEhnpepYK0OCH2cJ20FyPAKbnX97uxomo
	Cw0cuODegZ5mPlc/GQKZdktwHSH9u/7qXiUKvG35lu87Uh7uXHPL1i3HwETiVNUUMWUz6PLrfn947
	5vMMlRrKmLYhvUqowaKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEYl-0005vW-48; Mon, 27 May 2019 12:16:59 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEWK-0002KT-Bj
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:14:33 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id C03578123;
 Mon, 27 May 2019 12:14:46 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 09/12] bus: ti-sysc: Do rstctrl reset handling in two phases
Date: Mon, 27 May 2019 05:13:45 -0700
Message-Id: <20190527121348.45251-10-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527121348.45251-1-tony@atomide.com>
References: <20190527121348.45251-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_051429_119764_71BCDFE2 
X-CRM114-Status: GOOD (  12.18  )
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

We need to deassert rstctrl resets before enabling clocks to avoid clock
"failed to enable" errors. For asserting rstctrl reset, the clocks need
to be enabled.

As the reset controller status is not available for arrays, let's use
devm_reset_control_get_optional() so we can get the status after reset.

Note that depends on a proper PRM rstctrl driver, so far I've only
tested this with earlier reset-simple patches.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -483,7 +483,7 @@ static void sysc_clkdm_allow_idle(struct sysc *ddata)
 static int sysc_init_resets(struct sysc *ddata)
 {
 	ddata->rsts =
-		devm_reset_control_array_get_optional_exclusive(ddata->dev);
+		devm_reset_control_get_optional(ddata->dev, "rstctrl");
 	if (IS_ERR(ddata->rsts))
 		return PTR_ERR(ddata->rsts);
 
@@ -1407,7 +1407,7 @@ static int sysc_legacy_init(struct sysc *ddata)
  */
 static int sysc_rstctrl_reset_deassert(struct sysc *ddata, bool reset)
 {
-	int error;
+	int error, val;
 
 	if (!ddata->rsts)
 		return 0;
@@ -1418,7 +1418,14 @@ static int sysc_rstctrl_reset_deassert(struct sysc *ddata, bool reset)
 			return error;
 	}
 
-	return reset_control_deassert(ddata->rsts);
+	error = reset_control_deassert(ddata->rsts);
+	if (error == -EEXIST)
+		return 0;
+
+	error = readx_poll_timeout(reset_control_status, ddata->rsts, val,
+				   val == 0, 100, MAX_MODULE_SOFTRESET_WAIT);
+
+	return error;
 }
 
 /*
@@ -1476,12 +1483,8 @@ static int sysc_init_module(struct sysc *ddata)
 {
 	int error = 0;
 	bool manage_clocks = true;
-	bool reset = true;
 
-	if (ddata->cfg.quirks & SYSC_QUIRK_NO_RESET_ON_INIT)
-		reset = false;
-
-	error = sysc_rstctrl_reset_deassert(ddata, reset);
+	error = sysc_rstctrl_reset_deassert(ddata, false);
 	if (error)
 		return error;
 
@@ -1505,6 +1508,12 @@ static int sysc_init_module(struct sysc *ddata)
 			goto err_opt_clocks;
 	}
 
+	if (!(ddata->cfg.quirks & SYSC_QUIRK_NO_RESET_ON_INIT)) {
+		error = sysc_rstctrl_reset_deassert(ddata, true);
+		if (error)
+			goto err_main_clocks;
+	}
+
 	ddata->revision = sysc_read_revision(ddata);
 	sysc_init_revision_quirks(ddata);
 
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
