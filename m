Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9855412FB69
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 18:13:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cFjfi9LI4/FE/tmVMbCgLTCmxWNmvUs62FUJDvEfMKE=; b=fYfSUOZfHV63CDk4aV84jFQApP
	dZrDE3l2wpTt3FSXm8331eklMyU5Crhe+qP+oUSBIZAq1FBRtvQeJHoJq3yWsoLqkSP2wdnpw1YLW
	uQ476J0CDvxKKM0q0MejvNt6Acv3i3RpO5HAPnn7sWXzQ+v5hOBlv7tSFr6Bxle/sUcZRyhaNL41v
	R3HB/9Y9bGEpa0w8fuIVFy04WK1UEl5hNZV5Yp7JI65mXd8yw04yhsUE5/iPjZQeO8CwcHldZOnB8
	dyQ5vnJ8X828UTB+Gb9ILzrn4ij1b8HsxcDFl3oVSskrn6gSWMtVvtt1/CZdClqkl6p6pRJI3Oz0z
	+7S75s3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQW8-0002Ge-64; Fri, 03 Jan 2020 17:13:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQUp-00019e-9O
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 17:12:26 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C02A4222C3;
 Fri,  3 Jan 2020 17:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578071542;
 bh=tikjmOkXzl67kgxwPdvLRaRJqpldgktGgrS2H4m1wPk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=v8E9zX4UIDLzAd5zOxAsedGIcpvNFV5QzvrJO9liwyDUdG5pRAfWIR/WCSA7Dazjh
 YqU2FZ0UlUVfA9KpckU7TXkL0418Ra24J7/qwELuAIJG5kF7NmcO4E6zBi+TC9BXUR
 q/jTgkFKzInc7v4lKvkcNEXn4bJMnx+aH14vSPgY=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 07/19] usb: exynos: Rename Samsung and Exynos to lowercase
Date: Fri,  3 Jan 2020 18:11:19 +0100
Message-Id: <20200103171131.9900-8-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103171131.9900-1-krzk@kernel.org>
References: <20200103171131.9900-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_091223_674615_622384D6 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Felipe Balbi <balbi@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Johan Hovold <johan@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Ran Wang <ran.wang_1@nxp.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up inconsistent usage of upper and lowercase letters in "Samsung"
and "Exynos" names.

"SAMSUNG" and "EXYNOS" are not abbreviations but regular trademarked
names.  Therefore they should be written with lowercase letters starting
with capital letter.

The lowercase "Exynos" name is promoted by its manufacturer Samsung
Electronics Co., Ltd., in advertisement materials and on website.

Although advertisement materials usually use uppercase "SAMSUNG", the
lowercase version is used in all legal aspects (e.g. on Wikipedia and in
privacy/legal statements on
https://www.samsung.com/semiconductor/privacy-global/).

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/usb/dwc3/dwc3-exynos.c | 4 ++--
 drivers/usb/host/Kconfig       | 4 ++--
 drivers/usb/host/ehci-exynos.c | 4 ++--
 drivers/usb/host/ohci-exynos.c | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-exynos.c b/drivers/usb/dwc3/dwc3-exynos.c
index c1e9ea621f41..90bb022737da 100644
--- a/drivers/usb/dwc3/dwc3-exynos.c
+++ b/drivers/usb/dwc3/dwc3-exynos.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /**
- * dwc3-exynos.c - Samsung EXYNOS DWC3 Specific Glue layer
+ * dwc3-exynos.c - Samsung Exynos DWC3 Specific Glue layer
  *
  * Copyright (c) 2012 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
@@ -255,4 +255,4 @@ module_platform_driver(dwc3_exynos_driver);
 
 MODULE_AUTHOR("Anton Tikhomirov <av.tikhomirov@samsung.com>");
 MODULE_LICENSE("GPL v2");
-MODULE_DESCRIPTION("DesignWare USB3 EXYNOS Glue Layer");
+MODULE_DESCRIPTION("DesignWare USB3 Exynos Glue Layer");
diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 8d730180db06..ed49d08f2f9e 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -269,7 +269,7 @@ config USB_EHCI_SH
 	  If you use the PCI EHCI controller, this option is not necessary.
 
 config USB_EHCI_EXYNOS
-	tristate "EHCI support for Samsung S5P/EXYNOS SoC Series"
+	tristate "EHCI support for Samsung S5P/Exynos SoC Series"
 	depends on ARCH_S5PV210 || ARCH_EXYNOS
 	help
 	  Enable support for the Samsung Exynos SOC's on-chip EHCI controller.
@@ -542,7 +542,7 @@ config USB_OHCI_SH
 	  If you use the PCI OHCI controller, this option is not necessary.
 
 config USB_OHCI_EXYNOS
-	tristate "OHCI support for Samsung S5P/EXYNOS SoC Series"
+	tristate "OHCI support for Samsung S5P/Exynos SoC Series"
 	depends on ARCH_S5PV210 || ARCH_EXYNOS
 	help
 	  Enable support for the Samsung Exynos SOC's on-chip OHCI controller.
diff --git a/drivers/usb/host/ehci-exynos.c b/drivers/usb/host/ehci-exynos.c
index 01debfd03d4a..a4e9abcbdc4f 100644
--- a/drivers/usb/host/ehci-exynos.c
+++ b/drivers/usb/host/ehci-exynos.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 /*
- * SAMSUNG EXYNOS USB HOST EHCI Controller
+ * Samsung Exynos USB HOST EHCI Controller
  *
  * Copyright (C) 2011 Samsung Electronics Co.Ltd
  * Author: Jingoo Han <jg1.han@samsung.com>
@@ -21,7 +21,7 @@
 
 #include "ehci.h"
 
-#define DRIVER_DESC "EHCI EXYNOS driver"
+#define DRIVER_DESC "EHCI Exynos driver"
 
 #define EHCI_INSNREG00(base)			(base + 0x90)
 #define EHCI_INSNREG00_ENA_INCR16		(0x1 << 25)
diff --git a/drivers/usb/host/ohci-exynos.c b/drivers/usb/host/ohci-exynos.c
index d5ce98e205c7..bd40e597f256 100644
--- a/drivers/usb/host/ohci-exynos.c
+++ b/drivers/usb/host/ohci-exynos.c
@@ -19,7 +19,7 @@
 
 #include "ohci.h"
 
-#define DRIVER_DESC "OHCI EXYNOS driver"
+#define DRIVER_DESC "OHCI Exynos driver"
 
 static const char hcd_name[] = "ohci-exynos";
 static struct hc_driver __read_mostly exynos_ohci_hc_driver;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
