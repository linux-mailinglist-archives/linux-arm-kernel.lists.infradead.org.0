Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E359C72AC7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0CVgD+ynXvNbvrlFtDQ2Jt5TBBXoKxSMWzTXUKh39w=; b=afno9iy+cCFVcA
	kxMA1fu4l13O77vDyHm3Gps/rZbHDkQvFGeHJOGvW4d6YH6+hxar7tRQ0SvavR63liJecyHz7rCTc
	NA+z6tmeCI6GVOK+WcNxbVetmTjS6V3BEpuKk4JhbfgpVSrVvo8OnDd5Ybz6alEZYUsSIQLUlFUsg
	lT09FXk6sgpSiKxg9dICsSsHCHWOlaj6chyTu5dRaLhb2ieOnkIlfaH103bUaP4cSxGd5zSs4HxQw
	fAxYA5zTEmVqazNQGg0Y246wSMw7Mxra2IXuVfz/gcNP4wvWCUwyJVGOuaMe8WHHElpuGrDsEOczv
	aEB1uqe465SjgGcUdvkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqD4N-0005Kq-B2; Wed, 24 Jul 2019 08:56:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqD0X-0001ZH-FZ; Wed, 24 Jul 2019 08:52:23 +0000
X-UUID: eed101d1ae2f4f5fb2ae2912e672e11b-20190724
X-UUID: eed101d1ae2f4f5fb2ae2912e672e11b-20190724
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 945088760; Wed, 24 Jul 2019 00:51:30 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 01:51:29 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 16:51:26 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 24 Jul 2019 16:51:25 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Biju Das <biju.das@bp.renesas.com>
Subject: [PATCH v8 09/11] usb: common: create Kconfig file
Date: Wed, 24 Jul 2019 16:50:43 +0800
Message-ID: <1563958245-6321-10-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D8D6D4F83D97502B9B7AA52A8742ED86B84AE51024506E0612EEF2666A957FFA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_015221_581031_257B8828 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, linux-mediatek@lists.infradead.org,
 Min Guo <min.guo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, Adam
 Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Create Kconfig file for USB common core, and move USB_LED_TRIG
and USB_ULPI_BUS configs into the new file from the parent Kconfig,
it will help to add new configs later.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v8:
  new patch
---
 drivers/usb/Kconfig        | 35 +----------------------------------
 drivers/usb/common/Kconfig | 38 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 39 insertions(+), 34 deletions(-)
 create mode 100644 drivers/usb/common/Kconfig

diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
index 6e59d370ef81..7bf94e65ed2f 100644
--- a/drivers/usb/Kconfig
+++ b/drivers/usb/Kconfig
@@ -36,8 +36,7 @@ menuconfig USB_SUPPORT
 
 if USB_SUPPORT
 
-config USB_COMMON
-	tristate
+source "drivers/usb/common/Kconfig"
 
 config USB_ARCH_HAS_HCD
 	def_bool y
@@ -175,36 +174,4 @@ source "drivers/usb/typec/Kconfig"
 
 source "drivers/usb/roles/Kconfig"
 
-config USB_LED_TRIG
-	bool "USB LED Triggers"
-	depends on LEDS_CLASS && LEDS_TRIGGERS
-	select USB_COMMON
-	help
-	  This option adds LED triggers for USB host and/or gadget activity.
-
-	  Say Y here if you are working on a system with led-class supported
-	  LEDs and you want to use them as activity indicators for USB host or
-	  gadget.
-
-config USB_ULPI_BUS
-	tristate "USB ULPI PHY interface support"
-	select USB_COMMON
-	help
-	  UTMI+ Low Pin Interface (ULPI) is specification for a commonly used
-	  USB 2.0 PHY interface. The ULPI specification defines a standard set
-	  of registers that can be used to detect the vendor and product which
-	  allows ULPI to be handled as a bus. This module is the driver for that
-	  bus.
-
-	  The ULPI interfaces (the buses) are registered by the drivers for USB
-	  controllers which support ULPI register access and have ULPI PHY
-	  attached to them. The ULPI PHY drivers themselves are normal PHY
-	  drivers.
-
-	  ULPI PHYs provide often functions such as ADP sensing/probing (OTG
-	  protocol) and USB charger detection.
-
-	  To compile this driver as a module, choose M here: the module will
-	  be called ulpi.
-
 endif # USB_SUPPORT
diff --git a/drivers/usb/common/Kconfig b/drivers/usb/common/Kconfig
new file mode 100644
index 000000000000..848545b099cf
--- /dev/null
+++ b/drivers/usb/common/Kconfig
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0
+
+config USB_COMMON
+	tristate
+
+
+config USB_LED_TRIG
+	bool "USB LED Triggers"
+	depends on LEDS_CLASS && LEDS_TRIGGERS
+	select USB_COMMON
+	help
+	  This option adds LED triggers for USB host and/or gadget activity.
+
+	  Say Y here if you are working on a system with led-class supported
+	  LEDs and you want to use them as activity indicators for USB host or
+	  gadget.
+
+config USB_ULPI_BUS
+	tristate "USB ULPI PHY interface support"
+	select USB_COMMON
+	help
+	  UTMI+ Low Pin Interface (ULPI) is specification for a commonly used
+	  USB 2.0 PHY interface. The ULPI specification defines a standard set
+	  of registers that can be used to detect the vendor and product which
+	  allows ULPI to be handled as a bus. This module is the driver for that
+	  bus.
+
+	  The ULPI interfaces (the buses) are registered by the drivers for USB
+	  controllers which support ULPI register access and have ULPI PHY
+	  attached to them. The ULPI PHY drivers themselves are normal PHY
+	  drivers.
+
+	  ULPI PHYs provide often functions such as ADP sensing/probing (OTG
+	  protocol) and USB charger detection.
+
+	  To compile this driver as a module, choose M here: the module will
+	  be called ulpi.
+
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
