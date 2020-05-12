Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6382E1D0156
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 23:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=o/2PfhHx1lNacGvwbb1QobciXVKG4aJAYp4aem9ieHY=; b=kNm
	Pnz68y5uPIv8rTbjAlhSBwEwXlgx7+dJAUl2l4iBlzKIgcO02c5TKEHNAGFuXCF1QbzQ3TqeJgVWl
	I0thBga6sSVYmZonukDFbrBtmgpRKr4Ea3rnJVezTy0bWD6izgpSSt1rMcffX5KV9yKujGfGdcbP+
	n6JWUfZZRa9w5WEMD+sdE3N35sVqvMVHdZzuk1tkBw8CDIYgx097K6aFBy56tUP9UwU5MBWs9UTR0
	N+cqvrXk69+ilCZSUbgBibkS9Z8aRxlAbzgZZJ44FYVchRkz0eIW6GxdqNO//zkeVnjqJVZPL49Lz
	6OX+V1g4KsoNkrUjsVfiCOnNsh54hbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYcr8-0000Go-RG; Tue, 12 May 2020 21:54:30 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYcr0-0000GN-Sp
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 21:54:24 +0000
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jYctT-0007Fl-Pl; Tue, 12 May 2020 21:56:55 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] ARM: dts: imx6qdl-gw5910: add support for bcm4330-bt
Date: Tue, 12 May 2020 14:54:15 -0700
Message-Id: <1589320455-23844-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_145423_194698_3FDE6219 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Tim Harvey <tharvey@gateworks.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Sterling-LWB has a BCM4330 which has a UART based bluetooth
HCI. Add support for binding to the bcm_hci driver to take care
of handling the shutdown gpio and loading firmware.

Because the shutdown gpio is more of an enable than a regulator
go ahead and replace the regulator with a shutdown-gpio.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 arch/arm/boot/dts/imx6qdl-gw5910.dtsi | 32 ++++++++++++--------------------
 1 file changed, 12 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
index 30fe47f..b850f8f 100644
--- a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
@@ -83,19 +83,6 @@
 		regulator-max-microvolt = <3300000>;
 		regulator-always-on;
 	};
-
-	reg_bt: regulator-bt {
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_reg_bt>;
-		compatible = "regulator-fixed";
-		regulator-name = "bt";
-		gpio = <&gpio1 2 GPIO_ACTIVE_HIGH>;
-		startup-delay-us = <100>;
-		enable-active-high;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-always-on;
-	};
 };
 
 
@@ -231,9 +218,14 @@
 /* Sterling-LWB Bluetooth */
 &uart4 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart4>;
+	pinctrl-0 = <&pinctrl_uart4>,<&pinctrl_bten>;
 	uart-has-rtscts;
 	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4330-bt";
+		shutdown-gpios = <&gpio1 2 GPIO_ACTIVE_HIGH>;
+	};
 };
 
 /* GPS */
@@ -288,6 +280,12 @@
 		>;
 	};
 
+	pinctrl_bten: btengrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b1
+		>;
+	};
+
 	pinctrl_ecspi3: escpi3grp {
 		fsl,pins = <
 			MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK	0x100b1
@@ -393,12 +391,6 @@
 		>;
 	};
 
-	pinctrl_reg_bt: regbtgrp {
-		fsl,pins = <
-			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b1
-		>;
-	};
-
 	pinctrl_reg_wl: regwlgrp {
 		fsl,pins = <
 			MX6QDL_PAD_GPIO_5__GPIO1_IO05		0x1b0b1
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
