Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D8486C73
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 23:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFUMutXfIZ+UDHM0swCc5LZQsqgYsHJ7oo73l5Hf4+4=; b=C3eUskgg07xKlX
	9+HAQw9IYODHqiAIhD39UlgxZV8Vlfj9QYcZwMivN5YgfMQ+OCP+6fN1Z8IKVyG0YrxUZ3bdTIrUp
	RINsXbZPqfW4ttY/xRovu/5QAurnu1t1nn6VM+BX9LeYQikz1/QS8PRYbO6m31+VYP2L9STJYhvbz
	nY9vFlPBCzp4cP+S5kW7pCItrGRqaBtRXD99MOs/JHYB0mAoAhp541RH6XM8qEjNH6ErYuJDGO4CQ
	qXg9cGvDi3QW18ozck2hbXRikbybHy8QrGeRTQdErCw0to+9EKdXk6Cp1SojTIeynMhhyELSkQ2kM
	k/AyVfLWhrvrxGvcQaPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvq0z-0000Vf-3M; Thu, 08 Aug 2019 21:32:05 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvq0s-0000V6-2n
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 21:31:58 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MOm9H-1hgDtV07kV-00Q9Tu; Thu, 08 Aug 2019 23:31:38 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Tony Lindgren <tony@atomide.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alan Stern <stern@rowland.harvard.edu>
Subject: [PATCH 10/22] usb: omap: avoid mach/*.h headers
Date: Thu,  8 Aug 2019 23:22:19 +0200
Message-Id: <20190808212234.2213262-11-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190808212234.2213262-1-arnd@arndb.de>
References: <20190808212234.2213262-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:K8p91cbBYQ5A6juVoYtAsHFWMTNlYAsjgZ8+WIV+MCLOAHAN+bI
 9MmlQhFN1ZowAxZ2w9fUiyN+IDd8DmdzaDEwPUwTeCdhZom/wIlrusHmEAlUofR52EyMf+e
 5eRWH1Am5fD3Nt9jU6lvvx7GI4Ud+CVsUuDyp00MS9K9a9/2I83Ahg4E5lqMvM2KP7M60r4
 v1lqaRtJAhI5kuZaXg0tA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:d64A3weE10U=:stpqXJN3P6K37+8vT1wNmi
 w2ZB0cYFfx2bIMi755d558sXZJ4Ikum1Pc5j7XFqiKdcZlsJLE4aR4MdO72rRkd1/KfcVcvQz
 WUf56OUsz83T4vUdgyOZQMuZR3MlKXpGa53RKx6/OLEeEfSRb4D4hMN0spyhJv/TTT7oJs/th
 1SVpt9luHJ3d+6AfznWsujYZLEKvV0xsxzmbzTlsstKOS8JgQtoU0WHZJ3LE4jlmvAxDjEaZt
 zIuSZyXlPGJf+vxOIATOkABFt408UThVINSP/yXFxVcfhhkpFcdCWELRnHEzcaKEBoAoZgK+n
 NDUUAHNOqFV5/oFLXo8aLJPal7sPHJslOZPbB5ij3vDkEtnVfshyPA6v04LGEaxyUmT6QS+FT
 7XxR4EF6ScOzbmnzgvLw42bvw11PuhJiiIHRAcuNJADkMOJIiLv8DCZEnjc4fEQNYpk/8Ie9w
 7LjutujJNs8+VMPWkZqp07RNwpW3zxOCZ1xJZwO/VNbPQz0oxsbe+7FCULX+uZZXNaSCv9Uq/
 WuZz1xuttxDEkT5xYTDdplbMiJ0Tmzm3NHiiCqh7wLeLDtlC5DObut2TXL/VXVPM+rRYbS8Lk
 cth6BTlmBj/47eFsfiuczPUILFHZ3PAmbZ2cDSkvp4r5OPKpP6UNeiufJrtKfIVPv91bHBVqt
 qxlAcwYcjCQbsN+S/9LysYAVKNLFhTy8OiOfZF1NejD4/iyi1cYXJQpcXoYF6Fr5hEjgNK2vv
 wvNvx4b7vfBdtG9p2QGmSQbbejnM9UZXlH83qw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_143158_411370_AB3AC6E2 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The omap usb drivers still rely on mach/*.h headers that
are explicitly or implicitly included, but all the required
definitions are now in include/linux/soc/ti/, so use those
instead and allow compile-testing on other architectures.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/usb/gadget/udc/Kconfig     | 2 +-
 drivers/usb/gadget/udc/omap_udc.c  | 2 ++
 drivers/usb/host/Kconfig           | 2 +-
 drivers/usb/host/ohci-omap.c       | 7 +++----
 drivers/usb/phy/Kconfig            | 3 ++-
 drivers/usb/phy/phy-isp1301-omap.c | 4 ++--
 6 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/gadget/udc/Kconfig b/drivers/usb/gadget/udc/Kconfig
index d354036ff6c8..ac0891a3dbf2 100644
--- a/drivers/usb/gadget/udc/Kconfig
+++ b/drivers/usb/gadget/udc/Kconfig
@@ -128,7 +128,7 @@ config USB_GR_UDC
 
 config USB_OMAP
 	tristate "OMAP USB Device Controller"
-	depends on ARCH_OMAP1
+	depends on ARCH_OMAP1 || (ARCH_OMAP && COMPILE_TEST)
 	depends on ISP1301_OMAP || !(MACH_OMAP_H2 || MACH_OMAP_H3)
 	help
 	   Many Texas Instruments OMAP processors have flexible full
diff --git a/drivers/usb/gadget/udc/omap_udc.c b/drivers/usb/gadget/udc/omap_udc.c
index 721c9c3fe5a7..27b6142ea803 100644
--- a/drivers/usb/gadget/udc/omap_udc.c
+++ b/drivers/usb/gadget/udc/omap_udc.c
@@ -43,6 +43,8 @@
 #include <linux/platform_data/usb-omap1.h>
 
 #include <linux/soc/ti/omap1-usb.h>
+#include <linux/soc/ti/omap1-soc.h>
+#include <linux/soc/ti/omap1-io.h>
 
 #include "omap_udc.h"
 
diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 79bbce685583..e566a99bc8c9 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -201,7 +201,7 @@ config USB_EHCI_HCD_NPCM7XX
 
 config USB_EHCI_HCD_OMAP
 	tristate "EHCI support for OMAP3 and later chips"
-	depends on ARCH_OMAP
+	depends on ARCH_OMAP || COMPILE_TEST
 	depends on NOP_USB_XCEIV
 	default y
 	---help---
diff --git a/drivers/usb/host/ohci-omap.c b/drivers/usb/host/ohci-omap.c
index 841563fba20d..be3571778b60 100644
--- a/drivers/usb/host/ohci-omap.c
+++ b/drivers/usb/host/ohci-omap.c
@@ -27,6 +27,9 @@
 #include <linux/platform_device.h>
 #include <linux/platform_data/usb-omap1.h>
 #include <linux/soc/ti/omap1-usb.h>
+#include <linux/soc/ti/omap1-mux.h>
+#include <linux/soc/ti/omap1-soc.h>
+#include <linux/soc/ti/omap1-io.h>
 #include <linux/signal.h>
 #include <linux/usb.h>
 #include <linux/usb/hcd.h>
@@ -36,10 +39,6 @@
 #include <asm/io.h>
 #include <asm/mach-types.h>
 
-#include <mach/mux.h>
-
-#include <mach/hardware.h>
-
 #define DRIVER_DESC "OHCI OMAP driver"
 
 #ifdef CONFIG_TPS65010
diff --git a/drivers/usb/phy/Kconfig b/drivers/usb/phy/Kconfig
index 24b4f091acb8..c6b2559fd334 100644
--- a/drivers/usb/phy/Kconfig
+++ b/drivers/usb/phy/Kconfig
@@ -30,7 +30,8 @@ config FSL_USB2_OTG
 
 config ISP1301_OMAP
 	tristate "Philips ISP1301 with OMAP OTG"
-	depends on I2C && ARCH_OMAP_OTG
+	depends on I2C
+	depends on ARCH_OMAP_OTG || (ARM && COMPILE_TEST)
 	depends on USB
 	depends on USB_GADGET || !USB_GADGET # if USB_GADGET=m, this can't be 'y'
 	select USB_PHY
diff --git a/drivers/usb/phy/phy-isp1301-omap.c b/drivers/usb/phy/phy-isp1301-omap.c
index 18cf87dcc21f..0f3475e91403 100644
--- a/drivers/usb/phy/phy-isp1301-omap.c
+++ b/drivers/usb/phy/phy-isp1301-omap.c
@@ -23,9 +23,9 @@
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
-#include <mach/mux.h>
-
+#include <linux/soc/ti/omap1-mux.h>
 #include <linux/soc/ti/omap1-usb.h>
+#include <linux/soc/ti/omap1-io.h>
 
 #undef VERBOSE
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
