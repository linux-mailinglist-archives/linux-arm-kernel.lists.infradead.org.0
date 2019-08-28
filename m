Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C459FBB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:29:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yYnUpYKwLHcyUy63/eQGoOMXWTDBimOLJS/+oKquRZo=; b=jIquUzt41HZmtu
	tOcYDFY0yAuek9ZrC5mSILg5dn7SoIuZFryChbXj+SlAx4wkTTUBPjv7DnQwR6diHuheGfLs9979c
	grWtLSHis5QSjyw0VPf7bwNJcsYwA0nkGDcMVKT5KeMohkgy+e8q6WJVlqTfJWrR2kfkAizJhsr7q
	rPbToet/CC3zkPU+iaOyjUwSz8psN8ReQyHCCwn8NVQl4eVap9hYt2E5IqcurD+Zjv2oqbT6amLft
	ZrVRspg3c1Fjix2vMON06LxLjvEDrQE/kBCuGm6hGwz1kSQq4hojvacvSlYcOUEmtRG/HOXcxRNCc
	56OB4rvsiC06FSU+KeWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sO4-00067w-ST; Wed, 28 Aug 2019 07:29:01 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2sMO-0004nc-RA
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:27:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id C9F39D8242;
 Wed, 28 Aug 2019 09:27:14 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id eGp538FQdVBH; Wed, 28 Aug 2019 09:26:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 83B91D82FA;
 Wed, 28 Aug 2019 09:26:44 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id zkLEle5Xiaa7; Wed, 28 Aug 2019 09:26:40 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 28950D82FE;
 Wed, 28 Aug 2019 09:26:37 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v3 6/6] ARM: dts: mmp2: add OLPC XO 1.75 machine
Date: Wed, 28 Aug 2019 09:26:29 +0200
Message-Id: <20190828072629.285760-7-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190828072629.285760-1-lkundrak@v3.sk>
References: <20190828072629.285760-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_002717_533011_2889B732 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a fairly complete description of an OLPC XO 1.75 laptop.
What's missing for now is the GPU, LCD controller, DCON, the panel and
audio.

The machine is booted with OpenFirmware and thus has a devicetree.
However, older versions are unable to create a valid FDT and don't
follow the Linux bindings. Having an device tree in the kernel tree
makes it easier to use mainline kernels on such machines, test changes
with CONFIG_ARM_APPENDED_DTB and give a good reference on what bindings
are used on the machine without an access to one.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
Acked-by: Pavel Machek <pavel@ucw.cz>

---
Changes since v1:
- Added this patch

 arch/arm/boot/dts/Makefile              |   3 +-
 arch/arm/boot/dts/mmp2-olpc-xo-1-75.dts | 244 ++++++++++++++++++++++++
 2 files changed, 246 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/mmp2-olpc-xo-1-75.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 9159fa2cea90c..65213b5265187 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -336,7 +336,8 @@ dtb-$(CONFIG_MACH_MESON8) += \
 dtb-$(CONFIG_ARCH_MMP) += \
 	pxa168-aspenite.dtb \
 	pxa910-dkb.dtb \
-	mmp2-brownstone.dtb
+	mmp2-brownstone.dtb \
+	mmp2-olpc-xo-1-75.dtb
 dtb-$(CONFIG_ARCH_MPS2) += \
 	mps2-an385.dtb \
 	mps2-an399.dtb
diff --git a/arch/arm/boot/dts/mmp2-olpc-xo-1-75.dts b/arch/arm/boot/dts/mmp2-olpc-xo-1-75.dts
new file mode 100644
index 0000000000000..6cfa0d4a18845
--- /dev/null
+++ b/arch/arm/boot/dts/mmp2-olpc-xo-1-75.dts
@@ -0,0 +1,244 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * OLPC XO 1.75 Laptop.
+ *
+ * Copyright (C) 2018,2019 Lubomir Rintel <lkundrak@v3.sk>
+ */
+
+/dts-v1/;
+#include "mmp2.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+
+/ {
+	model = "OLPC XO-1.75";
+	compatible = "olpc,xo-1.75", "mrvl,mmp2";
+
+	chosen {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		framebuffer@1fc00000 {
+			compatible = "simple-framebuffer";
+			reg = <0x1fc00000 (1200 * 900 * 2)>;
+			width = <1200>;
+			height = <900>;
+			stride = <(1200 * 2)>;
+			format = "r5g6b5";
+			clocks = <&soc_clocks MMP2_CLK_DISP0_LCDC>,
+				 <&soc_clocks MMP2_CLK_DISP0>;
+		};
+	};
+
+	memory {
+		linux,usable-memory = <0x0 0x1f800000>;
+		available = <0xcf000 0x1ef31000 0x1000 0xbf000>;
+		reg = <0x0 0x20000000>;
+		device_type = "memory";
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		lid {
+			label = "Lid";
+			gpios = <&gpio 129 GPIO_ACTIVE_LOW>;
+			linux,input-type = <EV_SW>;
+			linux,code = <SW_LID>;
+			wakeup-source;
+		};
+
+		tablet_mode {
+			label = "E-Book Mode";
+			gpios = <&gpio 128 GPIO_ACTIVE_LOW>;
+			linux,input-type = <EV_SW>;
+			linux,code = <SW_TABLET_MODE>;
+			wakeup-source;
+		};
+
+		microphone_insert {
+			label = "Microphone Plug";
+			gpios = <&gpio 96 GPIO_ACTIVE_HIGH>;
+			linux,input-type = <EV_SW>;
+			linux,code = <SW_MICROPHONE_INSERT>;
+			debounce-interval = <100>;
+			wakeup-source;
+		};
+
+		headphone_insert {
+			label = "Headphone Plug";
+			gpios = <&gpio 97 GPIO_ACTIVE_HIGH>;
+			linux,input-type = <EV_SW>;
+			linux,code = <SW_HEADPHONE_INSERT>;
+			debounce-interval = <100>;
+			wakeup-source;
+		};
+	};
+
+	camera_i2c {
+		compatible = "i2c-gpio";
+		gpios = <&gpio 109 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>,
+			<&gpio 108 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-gpio,timeout-ms = <1000>;
+		status = "okay";
+
+		camera@21 {
+			compatible = "ovti,ov7670";
+			reg = <0x21>;
+			reset-gpios = <&gpio 102 GPIO_ACTIVE_LOW>;
+			powerdown-gpios = <&gpio 150 GPIO_ACTIVE_LOW>;
+			clocks = <&camera0>;
+			clock-names = "xclk";
+
+			port {
+				ov7670_0: endpoint {
+					hsync-active = <1>;
+					vsync-active = <1>;
+					remote-endpoint = <&camera0_0>;
+				};
+			};
+		};
+	};
+
+	battery {
+		compatible = "olpc,xo1.5-battery", "olpc,xo1-battery";
+	};
+
+	wlan_reg: fixedregulator0 {
+		compatible = "regulator-fixed";
+		regulator-name = "wlan";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio 34 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	wlan_pwrseq: pwrseq0 {
+		compatible = "mmc-pwrseq-sd8787";
+		powerdown-gpios = <&gpio 57 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio 58 GPIO_ACTIVE_HIGH>;
+	};
+
+	soc {
+		axi@d4200000 {
+			ap-sp@d4290000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "olpc,ap-sp";
+				interrupts = <40>;
+				reg = <0xd4290000 0x1000>;
+				data-gpios = <&gpio 72 GPIO_ACTIVE_HIGH>;
+				clk-gpios = <&gpio 71 GPIO_ACTIVE_HIGH>;
+				status = "okay";
+			};
+		};
+	};
+};
+
+&uart3 {
+	status = "okay";
+};
+
+&uart4 {
+	status = "okay";
+};
+
+&rtc {
+	status = "okay";
+};
+
+&usb_phy0 {
+	status = "okay";
+};
+
+&usb_otg0 {
+	status = "okay";
+};
+
+&mmc1 {
+	clock-frequency = <50000000>;
+	no-1-8-v;
+	mrvl,clk-delay-cycles = <31>;
+	broken-cd;
+	status = "okay";
+};
+
+&mmc2 {
+	clock-frequency = <50000000>;
+	no-1-8-v;
+	bus-width = <4>;
+	non-removable;
+	broken-cd;
+	wakeup-source;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&wlan_pwrseq>;
+	vmmc-supply = <&wlan_reg>;
+	status = "okay";
+};
+
+&mmc3 {
+	clock-frequency = <50000000>;
+	no-1-8-v;
+	bus-width = <8>;
+	non-removable;
+	broken-cd;
+	mrvl,clk-delay-cycles = <31>;
+	status = "okay";
+};
+
+&twsi1 {
+	status = "okay";
+
+	audio-codec@1a {
+		compatible = "realtek,alc5631";
+		reg = <0x1a>;
+		status = "okay";
+	};
+};
+
+&twsi2 {
+	status = "okay";
+
+	rtc@68 {
+		compatible = "dallas,ds1338";
+		reg = <0x68>;
+		status = "okay";
+	};
+};
+
+&twsi6 {
+	status = "okay";
+
+	accelerometer@1d {
+		compatible = "st,lis331dlh", "st,lis3lv02d";
+		reg = <0x1d>;
+		status = "okay";
+	};
+};
+
+&ssp3 {
+	#address-cells = <0>;
+	spi-slave;
+	status = "okay";
+	ready-gpio = <&gpio 125 GPIO_ACTIVE_HIGH>;
+
+	slave {
+		compatible = "olpc,xo1.75-ec";
+		spi-cpha;
+		cmd-gpio = <&gpio 155 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&camera0 {
+	status = "okay";
+
+	port {
+		camera0_0: endpoint {
+			remote-endpoint = <&ov7670_0>;
+		};
+	};
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
