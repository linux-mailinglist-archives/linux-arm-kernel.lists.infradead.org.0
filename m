Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FB91E9A2E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 21:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLSthfQr+TwHd44CTOA84UlGDFDF5gb6DYQBWNieAt8=; b=FtW5/uJ0yEtP+y
	xV9Apvkgon1M6EDZ3GX6iiRz+5g2nPpXNwrmDTJPMcf50b5f9qHd/wnOk3VaY9vZ1Po92BPL1o+52
	LVkKuHimU9Y/tCTVwKNkilTU5ZHwHUCT/vRfrsdW/44C/fHo2yY7yFKhqyEZ4ZXb/vcZyvnVsTP7C
	M/7WHzT9HO+fq/Hdgkhm6k5Zgj2g8SYYxlbhRVWfs+hliZ7vVvD9Rl6Cfr9d8ammDYl3vNvW7OSf7
	do0uw2+wXM6THFZaLSp48Hhbc6TWjTCkU1SDdcED2Ln5gCnivpGeNLtEYGPq1A+C8l7vv3ykoWUCx
	AK4f4iykGtAU1ZqvpB+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfTpZ-0003k2-9R; Sun, 31 May 2020 19:41:13 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfToc-00030W-JZ
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 19:40:15 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 6B22E814F;
 Sun, 31 May 2020 19:41:04 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 3/5] bus: ti-sysc: Ignore clockactivity unless specified as a
 quirk
Date: Sun, 31 May 2020 12:39:39 -0700
Message-Id: <20200531193941.13179-4-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200531193941.13179-1-tony@atomide.com>
References: <20200531193941.13179-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_124014_722563_23A164C6 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Grygorii Strashko <grygorii.strashko@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We must ignore the clockactivity bit for most modules and not set it
unless specified for the module with SYSC_QUIRK_USE_CLOCKACT. Otherwise
the interface clock can be automatically gated constantly causing
unexpected performance issues.

Fixes: ae9ae12e9daa ("bus: ti-sysc: Handle clockactivity for enable and disable")
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -989,10 +989,13 @@ static int sysc_enable_module(struct device *dev)
 	regbits = ddata->cap->regbits;
 	reg = sysc_read(ddata, ddata->offsets[SYSC_SYSCONFIG]);
 
-	/* Set CLOCKACTIVITY, we only use it for ick */
+	/*
+	 * Set CLOCKACTIVITY, we only use it for ick. And we only configure it
+	 * based on the SYSC_QUIRK_USE_CLOCKACT flag, not based on the hardware
+	 * capabilities. See the old HWMOD_SET_DEFAULT_CLOCKACT flag.
+	 */
 	if (regbits->clkact_shift >= 0 &&
-	    (ddata->cfg.quirks & SYSC_QUIRK_USE_CLOCKACT ||
-	     ddata->cfg.sysc_val & BIT(regbits->clkact_shift)))
+	    (ddata->cfg.quirks & SYSC_QUIRK_USE_CLOCKACT))
 		reg |= SYSC_CLOCACT_ICK << regbits->clkact_shift;
 
 	/* Set SIDLE mode */
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
