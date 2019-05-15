Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA70B1FCA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 00:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=er+cRyPM/NCHTN01zrWuG2CJjccDKlfm+OXWYFV28dY=; b=LgwKcMcoZpDyI0
	b8O/7h9vdKRHl7dvcTk+MmwmCglfZgmJ5zdgbkiEJ3NRkec8NnJ2XZzcA4FlTpM/Dc/+cOdJiylq4
	0RbDdeZml3Qurq2/Bl9QFk0Hm4YOsx+f8ibFCjsPDE0AXiDAxFQYbksKypuwLRr/QeJMwRsW1FvPn
	2vVnk0ObwFiX5LSe26CbVVcXuinvnKMzzfX8hYqpGsJeMh0FwyzoV2T78fG0QdIKJBPZzrxOhWojs
	RdYWTbujwQB5IY5hd0O3klivf4RkkzQBTYXwfAtfht7Xddz1lYryyVeqR/sg4wHXEvFOeFtezWuT4
	NtvzX4KW1QMYmlFrT2kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR2gM-0006z6-7o; Wed, 15 May 2019 22:47:30 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR2fG-0005gm-6G
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 22:46:27 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 4548mT4cC5z1rXgs;
 Thu, 16 May 2019 00:46:17 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 4548mT4P76z1qqkW;
 Thu, 16 May 2019 00:46:17 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id idMy9bYKdXry; Thu, 16 May 2019 00:46:16 +0200 (CEST)
X-Auth-Info: pm9IxBY+m0QTi6LYpPMkB8bgqJqMGcL+WSTNJ6LOTj4=
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz
 [86.49.110.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu, 16 May 2019 00:46:16 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 5/8] ARM: dts: imx53: Add power GPIOs on M53Menlo
Date: Thu, 16 May 2019 00:45:58 +0200
Message-Id: <20190515224601.4527-5-marex@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515224601.4527-1-marex@denx.de>
References: <20190515224601.4527-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_154622_468541_B6E838B3 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add GPIO power button and GPIO poweroff, which is present on new hardware.
These let the system power itself off on shutdown.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
To: linux-arm-kernel@lists.infradead.org
---
V2: No change
---
 arch/arm/boot/dts/imx53-m53menlo.dts | 31 ++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm/boot/dts/imx53-m53menlo.dts b/arch/arm/boot/dts/imx53-m53menlo.dts
index 10a738a09d0a..1a8cdef49261 100644
--- a/arch/arm/boot/dts/imx53-m53menlo.dts
+++ b/arch/arm/boot/dts/imx53-m53menlo.dts
@@ -10,6 +10,25 @@
 	model = "MENLO M53 EMBEDDED DEVICE";
 	compatible = "menlo,m53menlo", "fsl,imx53";
 
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-0 = <&pinctrl_power_button>;
+		pinctrl-names = "default";
+
+		power-button {
+			label = "Power button";
+			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_POWER>;
+		};
+	};
+
+	gpio-poweroff {
+		compatible = "gpio-poweroff";
+		pinctrl-0 = <&pinctrl_power_out>;
+		pinctrl-names = "default";
+		gpios = <&gpio1 13 GPIO_ACTIVE_LOW>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -242,6 +261,18 @@
 			>;
 		};
 
+		pinctrl_power_button: powerbutgrp {
+			fsl,pins = <
+				MX53_PAD_SD2_DATA2__GPIO1_13		0x1e4
+			>;
+		};
+
+		pinctrl_power_out: poweroutgrp {
+			fsl,pins = <
+				MX53_PAD_SD2_DATA0__GPIO1_15		0x1e4
+			>;
+		};
+
 		pinctrl_uart1: uart1grp {
 			fsl,pins = <
 				MX53_PAD_PATA_DIOW__UART1_TXD_MUX	0x1e4
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
