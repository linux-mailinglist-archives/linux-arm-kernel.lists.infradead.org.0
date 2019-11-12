Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F13D6F94C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 16:53:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CeFZk434nfT6R/47KtRpW/wc/j5GZAVVloxlGRVZcow=; b=gvqCGsUneJto7n
	dl4n6dU+8FQz1UYET6VzhyAqVRtc5nH4KX80wQVb9uUhk1zmSjx7DY2tXiUD2D5ipa76mCPkNf0IK
	9C11gIUkluGVadE7lVNgTTHYI2XAc/waMQ2W1yh1DJDybgAcTk8NNHT03N8BTxQQbGMRXpOuH2C1Y
	5sM5Ym+9cAh8VfjBgeEl6TU7wUznq2LnTMHu8Cb3YJJ0Zoy/oZ5v88ksQSgwan0impW46B5ZWzGJF
	APHaJppLOnYE5lwkLubD5Su0QRx+6TAe3wPgWS/LTLfzhna52uYSUbA2XkjHGrr+glpkM7QjkZAX6
	tHS9eWWG5l12cHMF4qEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYUB-0002lh-Gu; Tue, 12 Nov 2019 15:53:43 +0000
Received: from cyberdimension.org ([2001:910:1314:ffff::1]
 helo=gnutoo.cyberdimension.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYTy-0002ke-Vg
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 15:53:32 +0000
Received: from gnutoo.cyberdimension.org (localhost [127.0.0.1])
 by cyberdimension.org (OpenSMTPD) with ESMTP id cada0916;
 Tue, 12 Nov 2019 15:51:53 +0000 (UTC)
Received: from primarylaptop.localdomain (localhost.localdomain [IPv6:::1])
 by gnutoo.cyberdimension.org (OpenSMTPD) with ESMTP id 2eb5da12;
 Tue, 12 Nov 2019 15:51:53 +0000 (UTC)
From: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH][v2] ARM: dts: exynos: midas: add support for the
 touch-sensitive buttons
Date: Tue, 12 Nov 2019 16:53:23 +0100
Message-Id: <20191112155323.31577-1-GNUtoo@cyberdimension.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <CAJKOXPc+6zjkHq70FQ7NZN3U_=zcS_KhF+x7KcctngEWdPBPJw@mail.gmail.com>
References: <CAJKOXPc+6zjkHq70FQ7NZN3U_=zcS_KhF+x7KcctngEWdPBPJw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_075331_325530_932CD4AD 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

This adds support for the capacitive touch-sensitive buttons of the
following smartphones:
- Samsung Galaxy SIII (I9300)
- Samsung Galaxy SIII 4G (I9305)
- Samsung Galaxy Note II (N7100)
- Samsung Galaxy Note II 4G (N7105)

The keycodes correspond to markings on the phone case.

The same keycodes are also reported when using the device
specific LineageOS[1] and Replicant[2] kernels on the
smartphones mentioned above.

[1]https://github.com/LineageOS/android_kernel_samsung_smdk4412/
[2]https://git.replicant.us/replicant/kernel_samsung_smdk4412/

Signed-off-by: Simon Shields <simon@lineageos.org>
GNUtoo@cyberdimension.org: Fixed keycodes, modified commit message.
Signed-off-by: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
---
 arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi |  5 ++++
 arch/arm/boot/dts/exynos4412-midas.dtsi     | 30 +++++++++++++++++++++
 arch/arm/boot/dts/exynos4412-n710x.dts      |  5 ++++
 3 files changed, 40 insertions(+)

diff --git a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
index ce87d2ff27aa..31719c079d67 100644
--- a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
+++ b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
@@ -168,3 +168,8 @@
 	vdda-supply = <&ldo17_reg>;
 	status = "okay";
 };
+
+&touchkey_reg {
+	gpio = <&gpm0 0 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/exynos4412-midas.dtsi b/arch/arm/boot/dts/exynos4412-midas.dtsi
index e0e9c8fbdbcc..abcfa6ddd40b 100644
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
@@ -88,6 +89,15 @@
 		enable-active-high;
 	};
 
+	touchkey_reg: voltage-regulator-6 {
+		compatible = "regulator-fixed";
+		regulator-name = "LED_VDD_3.3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		status = "disabled";
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -193,6 +203,26 @@
 		};
 	};
 
+	i2c-gpio-4 {
+		compatible = "i2c-gpio";
+		sda-gpios = <&gpl0 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&gpl0 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		i2c-gpio,delay-us = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "okay";
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
index fe2bfd76cc4e..98cd1284cd90 100644
--- a/arch/arm/boot/dts/exynos4412-n710x.dts
+++ b/arch/arm/boot/dts/exynos4412-n710x.dts
@@ -73,3 +73,8 @@
 	vdda-supply = <&cam_vdda_reg>;
 	status = "okay";
 };
+
+&touchkey_reg {
+	gpio = <&gpm0 5 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
