Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3167A16B010
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:13:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XxUkqa8Q5yYAlmEy0szPmrY6CnJq4E7zH1IgSXX4syE=; b=ohodVncziySZZk
	9mwRu7cBcA1RbtEwQI0k6/xlPyCys7O3IB+zmYY26nk/fbpqcbhccozDiEmf85TQQiGcQDJsiIsQV
	1Qj90+I1Y3ShMh7XEOU+4u6UFE9A+7l1H/Z0UiUEFipfVrj8EMV8mOwRxi2p5+D+A5L+9zsBwZ3xC
	P9gk57YjTTD8ZKl1m0PHYoOT9uvnvNr4AMrnB14zecWSvulJn4H+NbdCSSHMY196G/orBdtPDyACr
	+w1Fh1TQ30qd2UU5pnyWomik84+WPhnztHVAy9ZY1OM8t2Tj2f40EQaJBhiZ4avB4Mx4JB44tp42N
	S1m+3/cBrPPGB0krE6nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JAV-0001Qd-9h; Mon, 24 Feb 2020 19:13:27 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6J9q-00012b-6G
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 19:12:47 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id A8B9A81B7;
 Mon, 24 Feb 2020 19:13:29 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 2/3] bus: ti-sysc: Detect display subsystem related devices
Date: Mon, 24 Feb 2020 11:12:29 -0800
Message-Id: <20200224191230.30972-3-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200224191230.30972-1-tony@atomide.com>
References: <20200224191230.30972-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_111246_266674_59F783D3 
X-CRM114-Status: UNSURE (   5.97  )
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
 dri-devel@lists.freedesktop.org, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-kernel@vger.kernel.org, Jyri Sarha <jsarha@ti.com>,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to prepare probing display subsystem (DSS) with ti-sysc
interconnect target module driver and device tree data, let's
detect DSS related modules.

We need to also add reset quirk handling for DSS, but until that's
done, let's just enable the optional clock quirks for DSS and
omap4 HDMI. The rest is just naming of modules if CONFIG_DEBUG
is set.

Cc: Jyri Sarha <jsarha@ti.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -1302,10 +1302,18 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 		   SYSC_MODULE_QUIRK_AESS),
 	SYSC_QUIRK("dcan", 0x48480000, 0x20, -ENODEV, -ENODEV, 0xa3170504, 0xffffffff,
 		   SYSC_QUIRK_CLKDM_NOAUTO),
+	SYSC_QUIRK("dss", 0x4832a000, 0, 0x10, 0x14, 0x00000020, 0xffffffff,
+		   SYSC_QUIRK_OPT_CLKS_IN_RESET),
+	SYSC_QUIRK("dss", 0x58000000, 0, -ENODEV, 0x14, 0x00000040, 0xffffffff,
+		   SYSC_QUIRK_OPT_CLKS_IN_RESET),
+	SYSC_QUIRK("dss", 0x58000000, 0, -ENODEV, 0x14, 0x00000061, 0xffffffff,
+		   SYSC_QUIRK_OPT_CLKS_IN_RESET),
 	SYSC_QUIRK("dwc3", 0x48880000, 0, 0x10, -ENODEV, 0x500a0200, 0xffffffff,
 		   SYSC_QUIRK_CLKDM_NOAUTO),
 	SYSC_QUIRK("dwc3", 0x488c0000, 0, 0x10, -ENODEV, 0x500a0200, 0xffffffff,
 		   SYSC_QUIRK_CLKDM_NOAUTO),
+	SYSC_QUIRK("hdmi", 0, 0, 0x10, -ENODEV, 0x50030200, 0xffffffff,
+		   SYSC_QUIRK_OPT_CLKS_NEEDED),
 	SYSC_QUIRK("hdq1w", 0, 0, 0x14, 0x18, 0x00000006, 0xffffffff,
 		   SYSC_MODULE_QUIRK_HDQ1W),
 	SYSC_QUIRK("hdq1w", 0, 0, 0x14, 0x18, 0x0000000a, 0xffffffff,
@@ -1342,13 +1350,21 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 		   0xffff00f0, 0),
 	SYSC_QUIRK("dcan", 0, 0x20, -ENODEV, -ENODEV, 0xa3170504, 0xffffffff, 0),
 	SYSC_QUIRK("dcan", 0, 0x20, -ENODEV, -ENODEV, 0x4edb1902, 0xffffffff, 0),
+	SYSC_QUIRK("dispc", 0x4832a400, 0, 0x10, 0x14, 0x00000030, 0xffffffff, 0),
+	SYSC_QUIRK("dispc", 0x58001000, 0, 0x10, 0x14, 0x00000040, 0xffffffff, 0),
+	SYSC_QUIRK("dispc", 0x58001000, 0, 0x10, 0x14, 0x00000051, 0xffffffff, 0),
 	SYSC_QUIRK("dmic", 0, 0, 0x10, -ENODEV, 0x50010000, 0xffffffff, 0),
+	SYSC_QUIRK("dsi", 0x58004000, 0, 0x10, 0x14, 0x00000030, 0xffffffff, 0),
+	SYSC_QUIRK("dsi", 0x58005000, 0, 0x10, 0x14, 0x00000030, 0xffffffff, 0),
+	SYSC_QUIRK("dsi", 0x58005000, 0, 0x10, 0x14, 0x00000040, 0xffffffff, 0),
+	SYSC_QUIRK("dsi", 0x58009000, 0, 0x10, 0x14, 0x00000040, 0xffffffff, 0),
 	SYSC_QUIRK("dwc3", 0, 0, 0x10, -ENODEV, 0x500a0200, 0xffffffff, 0),
 	SYSC_QUIRK("d2d", 0x4a0b6000, 0, 0x10, 0x14, 0x00000010, 0xffffffff, 0),
 	SYSC_QUIRK("d2d", 0x4a0cd000, 0, 0x10, 0x14, 0x00000010, 0xffffffff, 0),
 	SYSC_QUIRK("epwmss", 0, 0, 0x4, -ENODEV, 0x47400001, 0xffffffff, 0),
 	SYSC_QUIRK("gpu", 0, 0x1fc00, 0x1fc10, -ENODEV, 0, 0, 0),
 	SYSC_QUIRK("gpu", 0, 0xfe00, 0xfe10, -ENODEV, 0x40000000 , 0xffffffff, 0),
+	SYSC_QUIRK("hdmi", 0, 0, 0x10, -ENODEV, 0x50031d00, 0xffffffff, 0),
 	SYSC_QUIRK("hsi", 0, 0, 0x10, 0x14, 0x50043101, 0xffffffff, 0),
 	SYSC_QUIRK("iss", 0, 0, 0x10, -ENODEV, 0x40000101, 0xffffffff, 0),
 	SYSC_QUIRK("lcdc", 0, 0, 0x54, -ENODEV, 0x4f201000, 0xffffffff, 0),
@@ -1366,6 +1382,8 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 	SYSC_QUIRK("prcm", 0, 0, -ENODEV, -ENODEV, 0x40000100, 0xffffffff, 0),
 	SYSC_QUIRK("prcm", 0, 0, -ENODEV, -ENODEV, 0x00004102, 0xffffffff, 0),
 	SYSC_QUIRK("prcm", 0, 0, -ENODEV, -ENODEV, 0x40000400, 0xffffffff, 0),
+	SYSC_QUIRK("rfbi", 0x4832a800, 0, 0x10, 0x14, 0x00000010, 0xffffffff, 0),
+	SYSC_QUIRK("rfbi", 0x58002000, 0, 0x10, 0x14, 0x00000010, 0xffffffff, 0),
 	SYSC_QUIRK("scm", 0, 0, 0x10, -ENODEV, 0x40000900, 0xffffffff, 0),
 	SYSC_QUIRK("scm", 0, 0, -ENODEV, -ENODEV, 0x4e8b0100, 0xffffffff, 0),
 	SYSC_QUIRK("scm", 0, 0, -ENODEV, -ENODEV, 0x4f000100, 0xffffffff, 0),
@@ -1383,6 +1401,7 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 	SYSC_QUIRK("usbhstll", 0, 0, 0x10, 0x14, 0x00000008, 0xffffffff, 0),
 	SYSC_QUIRK("usb_host_hs", 0, 0, 0x10, 0x14, 0x50700100, 0xffffffff, 0),
 	SYSC_QUIRK("usb_host_hs", 0, 0, 0x10, -ENODEV, 0x50700101, 0xffffffff, 0),
+	SYSC_QUIRK("venc", 0x58003000, 0, -ENODEV, -ENODEV, 0x00000002, 0xffffffff, 0),
 	SYSC_QUIRK("vfpe", 0, 0, 0x104, -ENODEV, 0x4d001200, 0xffffffff, 0),
 #endif
 };
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
