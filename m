Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA2D8376A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dCtqKQ2RwD2/gqOS9amTzUP8Gv3t9ly8pnhW45/VQSc=; b=D2To6dtqO95iqc
	AwbCnK5lf2SBWqugkheYFUCRzvP3KhNCk9G9+7ZIoM0AaAHoUjGlUJtvlUvq/FdRm2/AZAvMvSOHL
	cCvbiRTuEaLbMWIUqq320ebyZ0+I40RAQPrXZR4FWe3S7bLDTjT5pozg0BVSBGIGzdyeuNX6NsO+a
	5bKcfHz6KgJ9u5Qi7hj8xFabKzlKbQ3qZUDt8qQ2JtrMDE8gsSUuHLFccBEOPLyWGHAP0Lb8qaJQI
	S9u0LuzosAKFz5Qwbv82c26QM5hXWDnTCaEA8m34N/x8EATpwZL+h2AIWvUqhSz38hKeT/fTm00Es
	P4F9QdjclsfX8BL5Y8GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2mo-0000IS-2p; Tue, 06 Aug 2019 16:58:10 +0000
Received: from cyberdimension.org ([2001:910:1314:ffff::1]
 helo=gnutoo.cyberdimension.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2mf-0000HT-QM
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 16:58:03 +0000
Received: from gnutoo.cyberdimension.org (localhost [127.0.0.1])
 by cyberdimension.org (OpenSMTPD) with ESMTP id a4be3105;
 Tue, 6 Aug 2019 16:56:05 +0000 (UTC)
Received: from primarylaptop.localdomain (localhost.localdomain [IPv6:::1])
 by gnutoo.cyberdimension.org (OpenSMTPD) with ESMTP id 12323c93;
 Tue, 6 Aug 2019 16:56:05 +0000 (UTC)
From: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: add touchkey nodes for midas
Date: Tue,  6 Aug 2019 18:57:49 +0200
Message-Id: <20190806165749.29468-1-GNUtoo@cyberdimension.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_095802_176827_C8E22357 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Simon Shields <simon@lineageos.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Simon Shields <simon@lineageos.org>

this patch adds the fixed VTOUCH_3.3V regulator and configures
the touchkey node + i2c-gpio node.

Signed-off-by: Simon Shields <simon@lineageos.org>
GNUtoo@cyberdimension.org: Fixed keycodes.
Signed-off-by: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
---
 arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi |  4 +++
 arch/arm/boot/dts/exynos4412-midas.dtsi     | 29 +++++++++++++++++++++
 arch/arm/boot/dts/exynos4412-n710x.dts      |  4 +++
 3 files changed, 37 insertions(+)

diff --git a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
index ce87d2ff27aa..e71f103ab940 100644
--- a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
+++ b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
@@ -166,5 +166,9 @@
 &s5c73m3 {
 	standby-gpios = <&gpm0 1 GPIO_ACTIVE_LOW>;   /* ISP_STANDBY */
 	vdda-supply = <&ldo17_reg>;
+};
+
+&touchkey_reg {
+	gpio = <&gpm0 0 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/exynos4412-midas.dtsi b/arch/arm/boot/dts/exynos4412-midas.dtsi
index 83be3a797411..797e8de40580 100644
--- a/arch/arm/boot/dts/exynos4412-midas.dtsi
+++ b/arch/arm/boot/dts/exynos4412-midas.dtsi
@@ -13,6 +13,7 @@
 #include "exynos4412.dtsi"
 #include "exynos4412-ppmu-common.dtsi"
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/clock/maxim,max77686.h>
 #include <dt-bindings/pinctrl/samsung.h>
@@ -92,6 +93,15 @@
 		enable-active-high;
 	};
 
+	touchkey_reg: voltage-regulator-4 {
+		compatible = "regulator-fixed";
+		regulator-name = "VTOUCH_3.3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		status = "disabled";
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -197,6 +207,25 @@
 		};
 	};
 
+	i2c_touchkey: i2c-gpio-4 {
+		compatible = "i2c-gpio";
+		sda-gpios = <&gpl0 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&gpl0 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		i2c-gpio,delay-us = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		touchkey@20 {
+			compatible = "cypress,midas-touchkey";
+			reg = <0x20>;
+			vdd-supply = <&touchkey_reg>;
+			vcc-supply = <&ldo5_reg>;
+			interrupt-parent = <&gpj0>;
+			interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
+			linux,keycodes = <KEY_BACK KEY_MENU>;
+		};
+	};
+
 	i2c-mhl {
 		compatible = "i2c-gpio";
 		gpios = <&gpf0 4 GPIO_ACTIVE_HIGH>, <&gpf0 6 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/exynos4412-n710x.dts b/arch/arm/boot/dts/exynos4412-n710x.dts
index fe2bfd76cc4e..6acb19d2bae2 100644
--- a/arch/arm/boot/dts/exynos4412-n710x.dts
+++ b/arch/arm/boot/dts/exynos4412-n710x.dts
@@ -71,5 +71,9 @@
 &s5c73m3 {
 	standby-gpios = <&gpm0 6 GPIO_ACTIVE_LOW>;   /* ISP_STANDBY */
 	vdda-supply = <&cam_vdda_reg>;
+};
+
+&touchkey_reg {
+	gpio = <&gpm0 5 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
