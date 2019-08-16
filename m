Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D3A909C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 22:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2GaJ2RyDxJ+D7HIX68XjIN7BvpekOzPGy6qDMgweWU=; b=glESHgp3aMhIKc
	26ub9Ij30CsC65zYwTmvKtegoUI53Jqndb16CGjf95bRemfN9B0EnT0iL9dCZAJCi43rbzOL1MCM1
	cEGcVDdt6wQrxIAs/tTBPwlm9DuXVhHMU/RuevDEBshlEq0TFUiya3qib6A/GTVQM7XoEJaoeSwCL
	m90yahxAaXWNi1JaMlfeDLl8ZeKSHap9F1tEGARePE24O+ZqhlAyI3L+KArcsK0O72PpAC4UfIZrp
	a2JmveQYUNKsdow0yelL+pbG/wicIKAAk4WyvdlQKHp2euCAsEJ9q9HqFy3s4hLTGQeFPHJ2ss1OD
	am6EXrAC2J6p6xidcFlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyjFp-0001jI-8X; Fri, 16 Aug 2019 20:55:21 +0000
Received: from mailoutvs28.siol.net ([185.57.226.219] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyjF3-0000iU-4W
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 20:54:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 7C4FA522331;
 Fri, 16 Aug 2019 22:54:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id SfvfW7dd9v8E; Fri, 16 Aug 2019 22:54:28 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 27D0D52227B;
 Fri, 16 Aug 2019 22:54:28 +0200 (CEST)
Received: from localhost.localdomain (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id DEF20522352;
 Fri, 16 Aug 2019 22:54:25 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: robh+dt@kernel.org, mark.rutland@arm.com, mripard@kernel.org, wens@csie.org
Subject: [PATCH 2/2] arm64: dts: allwinner: h6: Introduce Tanix TX6 board
Date: Fri, 16 Aug 2019 22:53:42 +0200
Message-Id: <20190816205342.29552-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190816205342.29552-1-jernej.skrabec@siol.net>
References: <20190816205342.29552-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_135433_487281_1CA86625 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.219 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tanix TX6 is an Allwinner H6 based TV box, which supports:
- Allwinner H6 Quad-core 64-bit ARM Cortex-A53
- GPU Mali-T720
- 4GiB DDR3 RAM (3GiB useable)
- 100Mbps EMAC via AC200 EPHY
- Cdtech 47822BS Wifi/BT
- 2x USB 2.0 Host and 1x USB 3.0 Host
- HDMI port
- IR receiver
- 64GiB eMMC
- 5V/2A DC power supply

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../dts/allwinner/sun50i-h6-tanix-tx6.dts     | 100 ++++++++++++++++++
 2 files changed, 101 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts

diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index f6db0611cb85..395fe76f6819 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -25,3 +25,4 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-tanix-tx6.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
new file mode 100644
index 000000000000..7e7cb10e3d96
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
@@ -0,0 +1,100 @@
+// SPDX-License-Identifier: (GPL-2.0+ or MIT)
+/*
+ * Copyright (c) 2019 Jernej Skrabec <jernej.skrabec@siol.net>
+ */
+
+/dts-v1/;
+
+#include "sun50i-h6.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "Tanix TX6";
+	compatible = "oranth,tanix-tx6", "allwinner,sun50i-h6";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	connector {
+		compatible = "hdmi-connector";
+		ddc-en-gpios = <&pio 7 2 GPIO_ACTIVE_HIGH>; /* PH2 */
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
+	reg_vcc3v3: vcc3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+};
+
+&de {
+	status = "okay";
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ehci3 {
+	status = "okay";
+};
+
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&mmc0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_pins>;
+	vmmc-supply = <&reg_vcc3v3>;
+	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&ohci3 {
+	status = "okay";
+};
+
+&r_ir {
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_ph_pins>;
+	status = "okay";
+};
+
+&usb2otg {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usb2phy {
+	status = "okay";
+};
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
