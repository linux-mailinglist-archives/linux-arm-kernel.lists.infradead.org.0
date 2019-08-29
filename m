Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D01A14E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 11:27:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AbXr62VKWyDMig+DWGac9uCmZ2wfzxR3g4UihzzbfY0=; b=l/jHFvLQlHUDOG
	8nRdKdB1V/qZm2UOuvb2fyI0zX/j7q4+//JexSC9dW9EjW+VGiA+/2fjedXgeQs+Fp0U8RpLiA8eZ
	Q0BSSMBzybgITDHFgCpGyWjh8UcCFxHpPtlKNkcm8+QpYntq/AYa67nUZg4jt5/xdYqF8Zrgj2/5t
	8apOo9C8V7EOOQjKOWJJzXU/k8VnjSdmLH/ABkexALSaaNlpdUBRH4oK6tjcYkLOFrG6XqMhsSq/i
	MeITGul4oBleROnrZVQ5IcYjYYIWa9NiQVxDWoCxgvWQGuFHtoBB1PEGfvIZDjGpiwjWbQpVz746V
	n1gzInKM2xsthY1mLBpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Ghk-0004U8-Ll; Thu, 29 Aug 2019 09:26:56 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3GeF-0000nJ-Oi; Thu, 29 Aug 2019 09:23:21 +0000
X-UUID: 7047720944424afc9ab6cc67c0daf556-20190829
X-UUID: 7047720944424afc9ab6cc67c0daf556-20190829
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 903267233; Thu, 29 Aug 2019 01:23:21 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 02:23:20 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 17:23:18 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 17:23:17 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Biju Das <biju.das@bp.renesas.com>
Subject: [PATCH next v11 09/11] usb: common: create Kconfig file
Date: Thu, 29 Aug 2019 17:22:36 +0800
Message-ID: <1567070558-29417-10-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1567070558-29417-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1567070558-29417-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D4D96C7E313BB2A9FDD1A542833235D6BC5E2EB89BC31AFEA4956E37E07951EA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_022319_952479_B2042C04 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Min Guo <min.guo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Nagarjuna Kristam <nkristam@nvidia.com>, Adam
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
v9~v11: no changes

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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
