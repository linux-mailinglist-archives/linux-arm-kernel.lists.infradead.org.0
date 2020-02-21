Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4C41687D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 20:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfX3BPOS3dt2atbu+FUm9Oc8nfkf12ACDL3ykOi/y+U=; b=B3JoVyTPAn9Ott
	sKOsebCAaQy6QrtahSrp9aW78AkgG+MmTj8xUd7FT/+fZ0pctph6ebXW75bUxPjN+K3lJ7fQFUpeX
	LSU9hFBhDUvCzSTW2M2SAMsczHuB8BYpdz3AZJmLrYXjE8Qo689sD+MvBTKTb8oTbE/1OsnKcxmB6
	mE7NaMMspd+TlYcBFeL89PF3nEHmdBgtPYZS27F1hmUmWkk+D3k0Goor3Whbasl0gcVz7mNMAxCOx
	v/52nbOXIvFNY32UD4LmI0pnx9oWS2rdcUHKmfQWnYHCGHGsvkWuWLFz9KnoIc+DhpGMiq2CkhMeU
	fRayRnfyyUDKrTS/r+6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5EMU-0005J3-BQ; Fri, 21 Feb 2020 19:53:22 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5EMI-0005He-A0
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 19:53:11 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id ECDED814A;
 Fri, 21 Feb 2020 19:53:52 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 1/7] bus: ti-sysc: Fix 1-wire reset quirk
Date: Fri, 21 Feb 2020 11:52:50 -0800
Message-Id: <20200221195256.54016-2-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200221195256.54016-1-tony@atomide.com>
References: <20200221195256.54016-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_115310_388284_C3DD30E3 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andr=C3=A9=20Hentschel?= <nerv@dawncrow.de>,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Because of the i2c quirk we have the reset quirks named in a confusing
way. Let's fix the 1-wire quirk accordinlyg. Then let's switch to using
better naming later on.

Fixes: 4e23be473e30 ("bus: ti-sysc: Add support for module specific reset quirks")
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -1400,7 +1400,7 @@ static void sysc_init_revision_quirks(struct sysc *ddata)
 }
 
 /* 1-wire needs module's internal clocks enabled for reset */
-static void sysc_clk_enable_quirk_hdq1w(struct sysc *ddata)
+static void sysc_pre_reset_quirk_hdq1w(struct sysc *ddata)
 {
 	int offset = 0x0c;	/* HDQ_CTRL_STATUS */
 	u16 val;
@@ -1488,7 +1488,7 @@ static void sysc_init_module_quirks(struct sysc *ddata)
 		return;
 
 	if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_HDQ1W) {
-		ddata->clk_enable_quirk = sysc_clk_enable_quirk_hdq1w;
+		ddata->clk_disable_quirk = sysc_pre_reset_quirk_hdq1w;
 
 		return;
 	}
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
