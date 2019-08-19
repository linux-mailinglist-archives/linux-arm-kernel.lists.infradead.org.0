Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E1E94943
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 17:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=M3lNs38xi6XNTKZOBAH8nX1JQ76JzCYSKuHyL4QUEfE=; b=IL4
	mSeCWqOZ1dFkd2XkVaOkNvuHrwVgzlMUxjSdOxmHizFIZ8CBbBBgaQaf/FN7y0Z0GCJ/PrS3LepcM
	0HbHorN3pCQBEaQlfP9UODbzfnUPgMmppWdDT5Zh5Rm5f9e7KVTKppm2Sljt1EF5c1s/yIta6hpZI
	X5B/TcO0QFE8DblAIsnwpvis+YtxUNMtwOLiYEzavPnLmvi4gt7HvAEfXPe4/JWFQ9A8fcndMknh5
	qtORBSN2YV0piVVfxC3287D9muFYDYfJ3UOJj1iDPDUhb2HDGfh0MyWpIaHNLjEtEy1aUOZoGtM8i
	2DLx07XSDXqnLOl5J2RtDiGZckBV4UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzk1l-0007lM-8n; Mon, 19 Aug 2019 15:57:01 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzk1c-0007hk-HP
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 15:56:54 +0000
Received: from grover.flets-west.jp (softbank126125143222.bbtec.net
 [126.125.143.222]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id x7JFu5LM008800;
 Tue, 20 Aug 2019 00:56:05 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x7JFu5LM008800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566230165;
 bh=4GK43BeKnZv5WyQmgfpb1RfuIr9VmwksRI1v6Lo8THA=;
 h=From:To:Cc:Subject:Date:From;
 b=Xh0II7dN9ng2FE6abhAYGvXbe2CwYqlCE054fL0AeQ2SLcgkjj+zDnPUC3ID4Nuv/
 cpCjIQUzgImo547Tj9TxCySIaXDAUIcoaWA12Zu8Yg2/tFIP+SkoYD74KhRz3MTf8d
 +XkA4f1QHfPHnbP6cH6IE09aYXLsP/xyLSRpnFgJulQ0agIPz043z+Jy3afwB/j46M
 xZcL4JZ1Dby9JysSD1xo9yoZvb80EQ4F7GQtJs5sj5ytrKr2K5lHD29mZv3DT3PBNN
 zGLeb0iB5kZC1i/fyzihUCu9R7JOr79qK53Me8uxIOlaKnSWhAJysY7RjB0NExavs7
 gAxVJmWBXP1Qg==
X-Nifty-SrcIP: [126.125.143.222]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: [PATCH] ARM: s3c64xx: squash samsung_usb_phy.h into setup-usb-phy.c
Date: Tue, 20 Aug 2019 00:56:02 +0900
Message-Id: <20190819155602.20843-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_085652_920404_4A680A0C 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, linux-usb@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is only used by arch/arm/mach-s3c64xx/setup-usb-phy.c

$ git grep samsung_usb_phy_type
include/linux/usb/samsung_usb_phy.h:enum samsung_usb_phy_type {
$ git grep USB_PHY_TYPE_DEVICE
arch/arm/mach-s3c64xx/setup-usb-phy.c:  if (type == USB_PHY_TYPE_DEVICE)
arch/arm/mach-s3c64xx/setup-usb-phy.c:  if (type == USB_PHY_TYPE_DEVICE)
include/linux/usb/samsung_usb_phy.h:    USB_PHY_TYPE_DEVICE,
$ git grep USB_PHY_TYPE_HOST
include/linux/usb/samsung_usb_phy.h:    USB_PHY_TYPE_HOST,

Actually, 'enum samsung_usb_phy_type' is unused; the 'type' parameter
has 'int' type. Anyway, there is no need to declare this enum in the
globally visible header. Squash the header.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/mach-s3c64xx/setup-usb-phy.c        |  5 +++++
 arch/arm/plat-samsung/include/plat/usb-phy.h |  2 --
 include/linux/usb/samsung_usb_phy.h          | 17 -----------------
 3 files changed, 5 insertions(+), 19 deletions(-)
 delete mode 100644 include/linux/usb/samsung_usb_phy.h

diff --git a/arch/arm/mach-s3c64xx/setup-usb-phy.c b/arch/arm/mach-s3c64xx/setup-usb-phy.c
index 46a9e955607f..6aaaa1d8e8b9 100644
--- a/arch/arm/mach-s3c64xx/setup-usb-phy.c
+++ b/arch/arm/mach-s3c64xx/setup-usb-phy.c
@@ -15,6 +15,11 @@
 #include "regs-sys.h"
 #include "regs-usb-hsotg-phy.h"
 
+enum samsung_usb_phy_type {
+	USB_PHY_TYPE_DEVICE,
+	USB_PHY_TYPE_HOST,
+};
+
 static int s3c_usb_otgphy_init(struct platform_device *pdev)
 {
 	struct clk *xusbxti;
diff --git a/arch/arm/plat-samsung/include/plat/usb-phy.h b/arch/arm/plat-samsung/include/plat/usb-phy.h
index 6d0c788beb9d..94da89ecbd3b 100644
--- a/arch/arm/plat-samsung/include/plat/usb-phy.h
+++ b/arch/arm/plat-samsung/include/plat/usb-phy.h
@@ -7,8 +7,6 @@
 #ifndef __PLAT_SAMSUNG_USB_PHY_H
 #define __PLAT_SAMSUNG_USB_PHY_H __FILE__
 
-#include <linux/usb/samsung_usb_phy.h>
-
 extern int s5p_usb_phy_init(struct platform_device *pdev, int type);
 extern int s5p_usb_phy_exit(struct platform_device *pdev, int type);
 
diff --git a/include/linux/usb/samsung_usb_phy.h b/include/linux/usb/samsung_usb_phy.h
deleted file mode 100644
index dc0071741695..000000000000
--- a/include/linux/usb/samsung_usb_phy.h
+++ /dev/null
@@ -1,17 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-/*
- * Copyright (C) 2012 Samsung Electronics Co.Ltd
- *		http://www.samsung.com/
- *
- * Defines phy types for samsung usb phy controllers - HOST or DEIVCE.
- *
- * This program is free software; you can redistribute  it and/or modify it
- * under  the terms of  the GNU General  Public License as published by the
- * Free Software Foundation;  either version 2 of the  License, or (at your
- * option) any later version.
- */
-
-enum samsung_usb_phy_type {
-	USB_PHY_TYPE_DEVICE,
-	USB_PHY_TYPE_HOST,
-};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
