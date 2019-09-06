Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE30AC130
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 22:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IqMHbjOlU1lGxl+aUbwGWH/ij/321nEXZcSndIb+yIM=; b=qcCMHcbx7Ka4vz
	6V/vRrYlKWSGuHiVNEHFNvwh1lPx8YpG9Dg52HMItKksP5Q5EGPKqoajv6vDw5aYZsRpMUmT66VfH
	hZqN5H+Dz55WomE61wnGhHD8zJpFriVleykI+64mrqzvETlXCcgvDAvfhmWeaAYKT7BKKHCC2tKL3
	tKKtUcQxHiu2Fve7Kjap9mpd71UNS/pQBC3KhUNhvsbHI/5mWQy9vSD+utDG4owmap8WUwmrjeTNQ
	sbz9QaLQzJJdb1UnF5R2Ccyz5ZTnIeVP9CbeQwX8EN5TJ2kXFceWj1ZgSfNyLDOEPQbEm/OxepwMu
	ZtKPH+zkr3IQpi0z2jvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6KQs-0001BP-Rh; Fri, 06 Sep 2019 20:02:10 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6KQk-0001Ag-Jd
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 20:02:04 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 04BB680CC;
 Fri,  6 Sep 2019 20:02:28 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] bus: ti-sysc: Remove unpaired sysc_clkdm_deny_idle()
Date: Fri,  6 Sep 2019 13:01:54 -0700
Message-Id: <20190906200154.6510-1-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_130202_698421_A813DBF8 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Vignesh Raghavendra <vigneshr@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-kernel@vger.kernel.org,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit d098913a10f8 ("bus: ti-sysc: Fix clock handling for no-idle
quirks") fixed handling for no-idle quirk modules that are not enabled
by the bootloader.

But it also caused unpaired clockdomain calls that won't allow idling
the system. That's because clkdm_allow_idle_nolock() and
clkdm_deny_idle_nolock() have usage count with clkdm->forcewake_count.

Let's drop the unpaired sysc_clkdm_deny_idle() to fix idling of devices.

Fixes: d098913a10f8 ("bus: ti-sysc: Fix clock handling for no-idle quirks")
Cc: Keerthy <j-keerthy@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -2363,7 +2363,6 @@ static void ti_sysc_idle(struct work_struct *work)
 	 */
 	if (ddata->cfg.quirks & (SYSC_QUIRK_NO_IDLE |
 				 SYSC_QUIRK_NO_IDLE_ON_INIT)) {
-		sysc_clkdm_deny_idle(ddata);
 		sysc_disable_main_clocks(ddata);
 		sysc_disable_opt_clocks(ddata);
 		sysc_clkdm_allow_idle(ddata);
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
