Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BC51B01D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 08:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/Q1y6fDGztJaOTg8uSrS0gvbRiMucoAfoV7Y6MdXcw0=; b=Z1KnBSSFFQj2S0
	s3eXqDDRmyJEtwmZexz/roshtH8Yq70NlJrX6IZFIU7oX6ro+wi8sNOxc4nYGHRQQ6e+7eoFrURXR
	VpSYX893ghFlRgD+YSUe2KxPccT1y8HQcXctaV2qISUh8rG5hR15NCAWq2Mrg+k2snMif66IxMuv6
	MJ/V8cORmqPubmeCYWO8T1z2kURB+SKFZukpgJW9jUTiVF8MshulGqh6BjAXRoUu5rHHjo9/077C6
	i51hMRL1+a6kq8O+Spctpdga25LCHO30VvFVLdk8kKoYQdLKN+AzPNa1RUxs79mdsm9gpum3CP8Ln
	EZFX7BDKVO/hETBo86hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQH8-0007hz-97; Mon, 20 Apr 2020 06:51:26 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQH0-0007hI-8a
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 06:51:20 +0000
Received: by mail-lj1-x241.google.com with SMTP id j3so8628987ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 23:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1+AkEeWkzZf8MVpdQZN5Lnd6yjx7NWXQg9twh4xq3rw=;
 b=mCXH6m2vPU+lUFF266U+3cASMVn+4AU2fXVMWiMDJaCpD81fv2G71654DTtf340pup
 9/+ZusdtaQJlnNrZKao7GZXjh4pY2voR5bsbfgSseEjPm4bgYj0pRBYPg1UgvUnIWFWR
 JvFsHf6UcIoyBwo+WFzU80rMkufZM4zPQQvGFmu0j7/vF5PIooYJnrpLGpDMq9WQzORO
 uT/CsALIdbFLlNzzk0ibU883vHItyJFkUwo0+4y4tJzF1lSo7Yay//BOoyAXB052ZkO7
 dERgEj1ORDeB7Cbdc9G7r9P4SUZ5X+DkV0QXWolOMrIrekqpjhuZgXxOCYu7Pm6NmMxq
 ULYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1+AkEeWkzZf8MVpdQZN5Lnd6yjx7NWXQg9twh4xq3rw=;
 b=A9F+wL33LMBOXxkiprJQb/hVpIGZ/F9k4MToWXd5hJ3DMsTDFh90Sni/P6xziy7jxH
 uEzLmujT74PyWpsMoyeUm42Hbd6fvLkY1spMnkLEa5EkgTsyfROJcNtGztB0SH/CDOHI
 7zTtsQfG2U+527sDO8YdDsTKIgxn3VtRRqzVkC6MMsBpBQL3sI9s6yuga0LJehiTPxo9
 ilAe0s5WEqCxzopd6bZdsl0xAZzArkSYQ9VCn/mTtqpWXu2CgwprBh0HRav+OiepzA0e
 Oz31gLVGFr/NZJfqB/DABSas1OC3wPtk0Zk3ecQCP2oK8qJflShB8BRpeUyMpfd0bPdD
 BTUw==
X-Gm-Message-State: AGi0PuaTB4HgV48gnjmXj4LYxdQy/taLdroGPQwO03xAKNpWjIHUXNhq
 2Ipu6hMzcgfKHLXbFTNbNdtHKIXUS8E=
X-Google-Smtp-Source: APiQypLfTdCno0jp1Oue+q7cFzdbCr6gF0rYf4w/PX0NQq+vuVx2Zpb5xuJoWWlpMJMg3Z3zPpuzWA==
X-Received: by 2002:a2e:9818:: with SMTP id a24mr9218717ljj.126.1587365475971; 
 Sun, 19 Apr 2020 23:51:15 -0700 (PDT)
Received: from localhost.localdomain
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id u12sm157628ljo.102.2020.04.19.23.51.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 23:51:15 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: Add devicetree for Integrator/AP with IM-PD1
Date: Mon, 20 Apr 2020 08:49:13 +0200
Message-Id: <20200420064913.390332-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_235118_318720_8BD948CA 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a device tree for the Integrator/AP with the
IM-PD1 logic module mounted, using the new logic
module bindings.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/Makefile                |   1 +
 arch/arm/boot/dts/integratorap-im-pd1.dts | 270 ++++++++++++++++++++++
 arch/arm/boot/dts/integratorap.dts        |  53 ++++-
 3 files changed, 320 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/boot/dts/integratorap-im-pd1.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e8dd99201397..22c234e93414 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -237,6 +237,7 @@ dtb-$(CONFIG_ARCH_HIX5HD2) += \
 	hisi-x5hd2-dkb.dtb
 dtb-$(CONFIG_ARCH_INTEGRATOR) += \
 	integratorap.dtb \
+	integratorap-im-pd1.dtb \
 	integratorcp.dtb
 dtb-$(CONFIG_ARCH_IXP4XX) += \
 	intel-ixp42x-linksys-nslu2.dtb \
diff --git a/arch/arm/boot/dts/integratorap-im-pd1.dts b/arch/arm/boot/dts/integratorap-im-pd1.dts
new file mode 100644
index 000000000000..1412a1a968fc
--- /dev/null
+++ b/arch/arm/boot/dts/integratorap-im-pd1.dts
@@ -0,0 +1,270 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree for the ARM Integrator/AP platform
+ * with the IM-PD1 example logical module mounted.
+ */
+
+#include "integratorap.dts"
+
+/ {
+	model = "ARM Integrator/AP with IM-PD1";
+	compatible = "arm,integrator-ap";
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		impd1_ram: vram@c2000000 {
+			/* 1 MB of designated video RAM on the IM-PD1 */
+			compatible = "shared-dma-pool";
+			reg = <0xc2000000 0x00100000>;
+			no-map;
+		};
+	};
+};
+
+&lm0 {
+	syscon@0 {
+		compatible = "arm,im-pd1-syscon", "syscon";
+		reg = <0x00000000 0x1000>;
+
+		vco1: clock@00 {
+			compatible = "arm,impd1-vco1";
+			#clock-cells = <0>;
+			lock-offset = <0x08>;
+			vco-offset = <0x00>;
+			clocks = <&sysclk>;
+			clock-output-names = "IM-PD1-VCO1";
+		};
+
+		vco2: clock@04 {
+			compatible = "arm,impd1-vco2";
+			#clock-cells = <0>;
+			lock-offset = <0x08>;
+			vco-offset = <0x04>;
+			clocks = <&sysclk>;
+			clock-output-names = "IM-PD1-VCO2";
+		};
+	};
+
+	/* Also used for the Smart Card Interface SCI */
+	impd1_uartclk: clock@1_4 {
+		compatible = "fixed-factor-clock";
+		#clock-cells = <0>;
+		clock-div = <4>;
+		clock-mult = <1>;
+		clocks = <&vco2>;
+		clock-output-names = "VCO2_DIV4";
+	};
+
+	/* For the SSP the clock is divided by 64 */
+	impd1_sspclk: clock@1_64 {
+		compatible = "fixed-factor-clock";
+		#clock-cells = <0>;
+		clock-div = <64>;
+		clock-mult = <1>;
+		clocks = <&vco2>;
+		clock-output-names = "VCO2_DIV64";
+	};
+
+	/* Fixed regulator for the MMC */
+	impd1_3v3: regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	/* Push buttons on the IM-PD1 */
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		button@0 {
+			debounce-interval = <50>;
+			linux,code = <KEY_UP>;
+			label = "UP";
+			gpios = <&impd1_gpio1 0 GPIO_ACTIVE_HIGH>;
+		};
+		button@1 {
+			debounce-interval = <50>;
+			linux,code = <KEY_DOWN>;
+			label = "DOWN";
+			gpios = <&impd1_gpio1 1 GPIO_ACTIVE_HIGH>;
+		};
+		button@2 {
+			debounce-interval = <50>;
+			linux,code = <KEY_LEFT>;
+			label = "LEFT";
+			gpios = <&impd1_gpio1 2 GPIO_ACTIVE_HIGH>;
+		};
+		button@3 {
+			debounce-interval = <50>;
+			linux,code = <KEY_RIGHT>;
+			label = "UP";
+			gpios = <&impd1_gpio1 3 GPIO_ACTIVE_HIGH>;
+		};
+		button@4 {
+			debounce-interval = <50>;
+			linux,code = <KEY_ESC>;
+			label = "ESC";
+			gpios = <&impd1_gpio1 4 GPIO_ACTIVE_HIGH>;
+		};
+		button@5 {
+			debounce-interval = <50>;
+			linux,code = <KEY_ENTER>;
+			label = "ENTER";
+			gpios = <&impd1_gpio1 5 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+
+	bridge {
+		compatible = "ti,ths8134b", "ti,ths8134";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			port@0 {
+				reg = <0>;
+					vga_bridge_in: endpoint {
+					remote-endpoint = <&clcd_pads_vga_dac>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				vga_bridge_out: endpoint {
+					remote-endpoint = <&vga_con_in>;
+				};
+			};
+		};
+	};
+
+	vga {
+		compatible = "vga-connector";
+
+		port {
+			vga_con_in: endpoint {
+				remote-endpoint = <&vga_bridge_out>;
+			};
+		};
+	};
+
+	uart@100000 {
+		compatible = "arm,pl011", "arm,primecell";
+		reg = <0x00100000 0x1000>;
+		interrupts-extended = <&impd1_vic 1>;
+		clocks = <&impd1_uartclk>, <&sysclk>;
+		clock-names = "uartclk", "apb_pclk";
+	};
+
+	uart@200000 {
+		compatible = "arm,pl011", "arm,primecell";
+		reg = <0x00200000 0x1000>;
+		interrupts-extended = <&impd1_vic 2>;
+		clocks = <&impd1_uartclk>, <&sysclk>;
+		clock-names = "uartclk", "apb_pclk";
+	};
+
+	ssp@300000 {
+		compatible = "arm,pl022", "arm,primecell";
+		reg = <0x00300000 0x1000>;
+		interrupts-extended = <&impd1_vic 3>;
+		clocks = <&impd1_sspclk>, <&sysclk>;
+		clock-names = "spiclk", "apb_pclk";
+	};
+
+	impd1_gpio0: gpio@400000 {
+		compatible = "arm,pl061", "arm,primecell";
+		reg = <0x00400000 0x1000>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupts-extended = <&impd1_vic 4>;
+		clocks = <&sysclk>;
+		clock-names = "apb_pclk";
+	};
+
+	impd1_gpio1: gpio@500000 {
+		compatible = "arm,pl061", "arm,primecell";
+		reg = <0x00500000 0x1000>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupts-extended = <&impd1_vic 5>;
+		clocks = <&sysclk>;
+		clock-names = "apb_pclk";
+	};
+
+	rtc@600000 {
+		compatible = "arm,pl030", "arm,primecell";
+		reg = <0x00600000 0x1000>;
+		interrupts-extended = <&impd1_vic 6>;
+		clocks = <&sysclk>;
+		clock-names = "apb_pclk";
+	};
+
+	mmc@700000 {
+		compatible = "arm,pl181", "arm,primecell";
+		reg = <0x00700000 0x1000>;
+		interrupts-extended = <&impd1_vic 7>,
+				    <&impd1_vic 8>;
+		clocks = <&sysclk>, <&sysclk>;
+		clock-names = "mclk", "apb_pclk";
+		bus-width = <1>;
+		max-frequency = <515633>;
+		vmmc-supply = <&impd1_3v3>;
+		wp-gpios = <&impd1_gpio0 3 GPIO_ACTIVE_HIGH>;
+		cd-gpios = <&impd1_gpio0 4 GPIO_ACTIVE_LOW>;
+	};
+
+	aaci@800000 {
+		compatible = "arm,pl041", "arm,primecell";
+		reg = <0x00800000 0x1000>;
+		interrupts-extended = <&impd1_vic 9>;
+		clocks = <&sysclk>;
+		clock-names = "apb_pclk";
+	};
+
+	display@1000000 {
+		compatible = "arm,pl110", "arm,primecell";
+		reg = <0x01000000 0x1000>;
+		interrupts-extended = <&impd1_vic 11>;
+		clocks = <&vco1>, <&sysclk>;
+		clock-names = "clcdclk", "apb_pclk";
+		/* 640x480 16bpp @ 25.175MHz is 36827428 bytes/s */
+		max-memory-bandwidth = <40000000>;
+		memory-region = <&impd1_ram>;
+
+		port@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			clcd_pads_vga_dac: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&vga_bridge_in>;
+				arm,pl11x,tft-r0g0b0-pads = <0 8 16>;
+			};
+		};
+	};
+
+	impd1_vic: interrupt-controller@3000000 {
+		compatible = "arm,pl192-vic";
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		reg = <0x03000000 0x1000>;
+		/* Valid interrupts, 0-9 and 11 */
+		valid-mask = <0x00000bff>;
+		/* LM site 0 has IRQ 9 on the PIC */
+		interrupts-extended = <&pic 9>;
+	};
+};
diff --git a/arch/arm/boot/dts/integratorap.dts b/arch/arm/boot/dts/integratorap.dts
index 198d66181c50..67d1f9b24a52 100644
--- a/arch/arm/boot/dts/integratorap.dts
+++ b/arch/arm/boot/dts/integratorap.dts
@@ -4,7 +4,9 @@
  */
 
 /dts-v1/;
-/include/ "integrator.dtsi"
+#include "integrator.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
 
 / {
 	model = "ARM Integrator/AP";
@@ -107,9 +109,6 @@ auxosc: auxosc@24M {
 	syscon {
 		compatible = "arm,integrator-ap-syscon", "syscon";
 		reg = <0x11000000 0x100>;
-		interrupt-parent = <&pic>;
-		/* These are the logical module IRQs */
-		interrupts = <9>, <10>, <11>, <12>;
 
 		/*
 		 * SYSCLK clocks PCIv3 bridge, system controller and the
@@ -239,4 +238,50 @@ kmi1: kmi@19000000 {
 			clock-names = "KMIREFCLK", "apb_pclk";
 		};
 	};
+
+	/*
+	 * Logic module bus, we support up to 4 logical modules
+	 * They appear at 0xc0000000, 0xd0000000, 0xe0000000 and 0xf0000000
+	 * and use interrupts 9, 10, 11 and 12 respectively.
+	 */
+	bus@c0000000 {
+		compatible = "arm,integrator-ap-lm";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0xc0000000 0xc0000000 0x40000000>;
+		dma-ranges;
+
+		lm0: bus@c0000000 {
+			compatible = "simple-bus";
+			ranges = <0x00000000 0xc0000000 0x10000000>;
+			dma-ranges = <0x00000000 0x80000000 0x10000000>;
+			reg = <0xc0000000 0x10000000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+		lm1: bus@d0000000 {
+			compatible = "simple-bus";
+			ranges = <0x00000000 0xd0000000 0x10000000>;
+			dma-ranges = <0x00000000 0x80000000 0x10000000>;
+			reg = <0xd0000000 0x10000000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+		lm2: bus@e0000000 {
+			compatible = "simple-bus";
+			ranges = <0x00000000 0xe0000000 0x10000000>;
+			dma-ranges = <0x00000000 0x80000000 0x10000000>;
+			reg = <0xe0000000 0x10000000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+		lm3: bus@f0000000 {
+			compatible = "simple-bus";
+			ranges = <0x00000000 0xf0000000 0x10000000>;
+			dma-ranges = <0x00000000 0x80000000 0x10000000>;
+			reg = <0xf0000000 0x10000000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+	};
 };
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
