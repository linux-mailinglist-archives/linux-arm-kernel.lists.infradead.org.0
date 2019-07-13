Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656A36780A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 05:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PUWFCMtBZs3NwyJNemzoi1zkdf3QnPn+b538m6C2kac=; b=rvbVOmCMGqOiFz
	3rvnovf4XKtX1DucmmCWvgxv8JCvK5tyyZcE/hOFAcJhNmYQRitDH7YpwS5Z5kxBu6vZGgvrwh3/l
	FJ375TGXLfzKklyV/UualnK3LP/8NiiAWJ6J+VN88JVIevsYhFORFcwlu78mCIczTNHLc0EKpjXr2
	wm82rRHHyVygjIB3w1dWPSy591mmOSEkNOQsofzfFH7bjTk6SzHZ2Dbst3JTSw8gX8qF1O7FMzXyR
	JuiFjuPfZGbygtzIZ4f58HhldE2vfn8K/MXYazWYOaM1Gzw1fezpYh7+k5fEx/W6Xbo/iTL/21S3b
	YEsGu9rbWMnHTxHCrzTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm93i-0003yH-Bc; Sat, 13 Jul 2019 03:50:50 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm93U-0003xp-05
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jul 2019 03:50:37 +0000
Received: from [199.195.250.187] (port=33780 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1hm93O-0006xT-UG; Sat, 13 Jul 2019 04:50:31 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 868606E999;
 Sat, 13 Jul 2019 03:50:25 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v4 8/8] ARM: dts: sun8i: s3: add devicetree for Lichee zero
 plus w/ S3
Date: Sat, 13 Jul 2019 11:46:34 +0800
Message-Id: <20190713034634.44585-9-icenowy@aosc.io>
In-Reply-To: <20190713034634.44585-1-icenowy@aosc.io>
References: <20190713034634.44585-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 65
X-Spam-Status: No, score=6.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_205036_042692_C2D48BBB 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Lichee zero plus is a core board made by Sipeed, which includes on-board
TF slot or SMT SD NAND, and optional SPI NOR or eMMC, a UART debug
header, a microUSB slot and a gold finger connector for expansion. It
can use either Sochip S3 or Allwinner S3L SoC.

Add the basic device tree for the core board, w/o optional onboard
storage, and with S3 SoC.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
No changes in v4.

Changes in v3:
- Drop common regulator DTSI usage and added vcc3v3 regulator.

 arch/arm/boot/dts/Makefile                    |  1 +
 .../boot/dts/sun8i-s3-lichee-zero-plus.dts    |  8 ++++
 .../dts/sun8i-s3-s3l-lichee-zero-plus.dtsi    | 46 +++++++++++++++++++
 3 files changed, 55 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun8i-s3-lichee-zero-plus.dts
 create mode 100644 arch/arm/boot/dts/sun8i-s3-s3l-lichee-zero-plus.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 9159fa2cea90..e320460a952b 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1114,6 +1114,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
 	sun8i-r16-nintendo-super-nes-classic.dtb \
 	sun8i-r16-parrot.dtb \
 	sun8i-r40-bananapi-m2-ultra.dtb \
+	sun8i-s3-lichee-zero-plus.dtb \
 	sun8i-t3-cqa3t-bv3.dtb \
 	sun8i-v3s-licheepi-zero.dtb \
 	sun8i-v3s-licheepi-zero-dock.dtb \
diff --git a/arch/arm/boot/dts/sun8i-s3-lichee-zero-plus.dts b/arch/arm/boot/dts/sun8i-s3-lichee-zero-plus.dts
new file mode 100644
index 000000000000..7d2f6b145190
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-s3-lichee-zero-plus.dts
@@ -0,0 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 Icenowy Zheng <icenowy@aosc.io>
+ */
+
+/dts-v1/;
+#include "sun8i-s3.dtsi"
+#include "sun8i-s3-s3l-lichee-zero-plus.dtsi"
diff --git a/arch/arm/boot/dts/sun8i-s3-s3l-lichee-zero-plus.dtsi b/arch/arm/boot/dts/sun8i-s3-s3l-lichee-zero-plus.dtsi
new file mode 100644
index 000000000000..2677d319fb29
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-s3-s3l-lichee-zero-plus.dtsi
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 Icenowy Zheng <icenowy@aosc.io>
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
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
+&mmc0 {
+	broken-cd;
+	bus-width = <4>;
+	vmmc-supply = <&reg_vcc3v3>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-0 = <&uart0_pb_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&usb_otg {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&usbphy {
+	usb0_id_det-gpios = <&pio 5 6 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
