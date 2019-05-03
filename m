Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D27E13189
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdsW4mfPUyyZAMxbtf7l/zdXCD+NSbgtjd5THKknl6E=; b=FTH4DLzhul4raY
	pMajMxZYk1IH8ll426cN70x3N3TllDyGE574M4HJxduOBfK05WD8VYaLmc2JiMxfSIaDpuOD0saOZ
	xtuWNdScxEPNO9XXDrhAZY+Z8pH4trl5hjxaxTno5X+B1e2C5U/QFDoI1Sr/VXYNj4xck0w7Kw3Oj
	anwBPO7k0zGs8mYcu3WH/vIRUoYL/geRWe1kNf7tIQZkCwGvoLmV07o5Cq+pK6f9+4Up9Eu1SSbBa
	jDFGAI5q39OjQkBAXSltYUqASY6a/qOw7cVaTmw8tQY0k9LYSwoue/daUY4+66Ej7G/bFjcXbvCNf
	FXUu6siHFAcsQmEXk1fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaVU-0003dP-GN; Fri, 03 May 2019 15:53:52 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaUb-0002bC-JV
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:52:59 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 44wc906dFRz1rYXB;
 Fri,  3 May 2019 17:52:52 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 44wc906HnZz1qtf0;
 Fri,  3 May 2019 17:52:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id Xh-ssvWbKQMV; Fri,  3 May 2019 17:52:51 +0200 (CEST)
X-Auth-Info: t9Z/8E3yiy3Lrm0Q6JmYPTt4vguKqF9KRHKeBtzDf0w=
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz
 [86.49.110.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri,  3 May 2019 17:52:51 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/8] ARM: dts: imx53: Add power GPIOs on M53Menlo
Date: Fri,  3 May 2019 17:52:32 +0200
Message-Id: <20190503155235.6414-5-marex@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503155235.6414-1-marex@denx.de>
References: <20190503155235.6414-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_085257_984489_849DFBDA 
X-CRM114-Status: GOOD (  10.77  )
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
 arch/arm/boot/dts/imx53-m53menlo.dts | 31 ++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm/boot/dts/imx53-m53menlo.dts b/arch/arm/boot/dts/imx53-m53menlo.dts
index 29247a86e5c4..74ac72c85743 100644
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
@@ -241,6 +260,18 @@
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
