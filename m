Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C40AAE1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 23:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AuhRTB6ij/1d4Z7JSfCKdq8nhE/8WMGbkL8xH1Fq+Dw=; b=kyKEkAV72Q4q+/
	2mryy8Ktu3/Nt2L9b8fz+syegmF+pfaWrpTReea2pBZFpc2CbTQ8bosf8pbSCClM3qBNCC8cpQaik
	8sUVvTM1QbqZx1UqJWTwq5t6kiEjQp/vRElJ9xaI74c2zrs37txisMWbUCbbTT44251ZY5sXcK9xB
	lT9tmQTYmE9/APv48N+rZEXTR3ZPdf0WYQ+6SkXKuZTR/UeFtdBMserujS/wFyugMjfiRVLH8/a/F
	h371l56lrXQPvCS1MwZFXiK/eqf6cAJFIoIjmr4CH/McvHqDFhgn+hBnzr4WEVZxNHtVI+CDHRQfC
	q8I8POfROn1yz3STgPTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5zhi-0006eG-Lz; Thu, 05 Sep 2019 21:54:10 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5zhb-0006dE-LI
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 21:54:05 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id AA813810D;
 Thu,  5 Sep 2019 21:54:29 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] bus: ti-sysc: Fix handling of invalid clocks
Date: Thu,  5 Sep 2019 14:53:56 -0700
Message-Id: <20190905215356.8168-1-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_145403_741532_10C5899D 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-kernel@vger.kernel.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We can currently get "Unable to handle kernel paging request at
virtual address" for invalid clocks with dts node but no driver:

(__clk_get_hw) from [<c0138ebc>] (ti_sysc_find_one_clockdomain+0x18/0x34)
(ti_sysc_find_one_clockdomain) from [<c0138f0c>] (ti_sysc_clkdm_init+0x34/0xdc)
(ti_sysc_clkdm_init) from [<c0584660>] (sysc_probe+0xa50/0x10e8)
(sysc_probe) from [<c065c6ac>] (platform_drv_probe+0x58/0xa8)

Let's add IS_ERR checks to ti_sysc_clkdm_init() as And let's start treating
clk_get() with -ENOENT as a proper error. If the clock name is specified
in device tree we must succeed with clk_get() to continue. For modules with
no clock names specified in device tree we will just ignore the clocks.

Fixes: 2b2f7def058a ("bus: ti-sysc: Add support for missing clockdomain handling")
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/pdata-quirks.c | 4 ++--
 drivers/bus/ti-sysc.c              | 5 +----
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-omap2/pdata-quirks.c b/arch/arm/mach-omap2/pdata-quirks.c
--- a/arch/arm/mach-omap2/pdata-quirks.c
+++ b/arch/arm/mach-omap2/pdata-quirks.c
@@ -491,11 +491,11 @@ static int ti_sysc_clkdm_init(struct device *dev,
 			      struct clk *fck, struct clk *ick,
 			      struct ti_sysc_cookie *cookie)
 {
-	if (fck)
+	if (!IS_ERR(fck))
 		cookie->clkdm = ti_sysc_find_one_clockdomain(fck);
 	if (cookie->clkdm)
 		return 0;
-	if (ick)
+	if (!IS_ERR(ick))
 		cookie->clkdm = ti_sysc_find_one_clockdomain(ick);
 	if (cookie->clkdm)
 		return 0;
diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -280,9 +280,6 @@ static int sysc_get_one_clock(struct sysc *ddata, const char *name)
 
 	ddata->clocks[index] = devm_clk_get(ddata->dev, name);
 	if (IS_ERR(ddata->clocks[index])) {
-		if (PTR_ERR(ddata->clocks[index]) == -ENOENT)
-			return 0;
-
 		dev_err(ddata->dev, "clock get error for %s: %li\n",
 			name, PTR_ERR(ddata->clocks[index]));
 
@@ -357,7 +354,7 @@ static int sysc_get_clocks(struct sysc *ddata)
 			continue;
 
 		error = sysc_get_one_clock(ddata, name);
-		if (error && error != -ENOENT)
+		if (error)
 			return error;
 	}
 
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
