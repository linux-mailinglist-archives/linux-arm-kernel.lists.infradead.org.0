Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0646B126EDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 21:24:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQ79PseS8Pd8s8WdzQaE4AEsGZNSuDhEjEdeacJul+U=; b=P9/nEz74bR4gsE
	qBxOIzDvEf3fnjxwE5PU/uFtuftRT317tU0ZjYhZgJVbhebD9DblDMKuaPhq4ewDRn68JRsPvmVlr
	ZjUeTJTmhu6IlsLGn4CddJDS5DhnPBmn1A+72rfICW5ta6/v22ToRcvhq67a6RijnKFPMGlph/Qrz
	Bu7mZUuw05QbU81GidhAbw1JgfQdyV7WpTa+0DqtNrj5IEbvof/q0lrUF4HgNMRx5epZMrqxBecG1
	NWORHaz9Afd0oa8ZOB3lEqUNIpOae3lv6G2z4G+iHFB/9NOEh9KnS62u3y0iS/9ccWt2tydQDeP8m
	CSGyXIQV3Yl71tN/63Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2Lk-00027o-UK; Thu, 19 Dec 2019 20:24:44 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2Iz-0007zG-T5
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 20:22:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576786911;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=3XMD8RYyWStWv1AH4vXX20lD//AiuMYJXklPd/wXq5c=;
 b=NJcUjD6bT2PgO3egpmg+Hhv4gYi6usGm9LTsR4UqmRvgzXVGzB8wh6vyMblyE3P9nl
 UctQba3WsQwNrYVzhYeONBy/R2wTceo8XBAutJPDuhox61lEmfqxWEe32WWH4Veji+XO
 Z/EuvpAi6uJxAMzNPuWA7ERqmDLo8MwXq7gLYy4YCiaG3zkHub7Ku2BOCyhxuGJRhZBj
 hHqgygwj5ZpN4cwnXOlM5OCXTL3BkA3GUXyx/cokIRYpaOGDP+3be2DH2uJdDCbU2c3K
 CZDZT/TMsnfeWcBeEoUhlbvV4zlt02bbxby4pn76TkJSdB7iOFaPAGTouOBKe7SO8uEL
 DUQw==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXtszvsxM1"
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 46.1.1 AUTH)
 with ESMTPSA id f021e2vBJKLg3ZB
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Thu, 19 Dec 2019 21:21:42 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 4/9] ARM: dts: ux500: Add device tree for Samsung Galaxy S III
 mini (GT-I8190)
Date: Thu, 19 Dec 2019 21:20:47 +0100
Message-Id: <20191219202052.19039-5-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219202052.19039-1-stephan@gerhold.net>
References: <20191219202052.19039-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_122154_135867_6E4CE8A2 
X-CRM114-Status: GOOD (  19.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Samsung Galaxy S III mini (GT-I8190) is a smartphone with Ux500 SoC
released in 2012. Thanks to the great mainline support for Ux500,
it can actually run mainline Linux quite well.

Add a new device tree for it with support for:
  - Internal Storage (eMMC)
  - External Storage (Micro SD card)
  - UART
  - GPIO Buttons
  - Vibrator

Note that the device tree cannot be booted directly with
the original (Samsung) bootloader. It keeps the L2 cache turned on,
which causes the kernel to hang shortly after decompression.

As a workaround I have created a port of (mainline) U-Boot,
which locks the L2 cache before booting Linux. At the moment it does not
replace the Samsung bootloader, instead we let the original bootloader
load U-Boot as an another (intermediate) bootloader.

Another advantage of this is that U-Boot has proper device tree support,
so we do not need to hardcode the kernel command line in the device tree.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/Makefile                    |   3 +-
 .../arm/boot/dts/ste-ux500-samsung-golden.dts | 304 ++++++++++++++++++
 2 files changed, 306 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/ste-ux500-samsung-golden.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 9d13b3b71116..59d13d643094 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1183,7 +1183,8 @@ dtb-$(CONFIG_ARCH_U8500) += \
 	ste-hrefprev60-tvk.dtb \
 	ste-hrefv60plus-stuib.dtb \
 	ste-hrefv60plus-tvk.dtb \
-	ste-href520-tvk.dtb
+	ste-href520-tvk.dtb \
+	ste-ux500-samsung-golden.dtb
 dtb-$(CONFIG_ARCH_UNIPHIER) += \
 	uniphier-ld4-ref.dtb \
 	uniphier-ld6b-ref.dtb \
diff --git a/arch/arm/boot/dts/ste-ux500-samsung-golden.dts b/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
new file mode 100644
index 000000000000..51f2afe42c1c
--- /dev/null
+++ b/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
@@ -0,0 +1,304 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/dts-v1/;
+
+#include "ste-db8500.dtsi"
+#include "ste-ab8505.dtsi"
+#include "ste-dbx5x0-pinctrl.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/*
+ * Note: This device tree cannot be booted directly with the Samsung bootloader.
+ * You need an intermediate, device-tree compatible bootloader
+ * that locks the L2 cache. Otherwise the kernel will crash after decompression.
+ *
+ * There is a port of (mainline) U-Boot, see
+ * https://wiki.postmarketos.org/wiki/ST-Ericsson_NovaThor_U8500#U-Boot
+ */
+/ {
+	model = "Samsung Galaxy S III mini (GT-I8190)";
+	compatible = "samsung,golden", "st-ericsson,u8500";
+
+	chosen {
+		stdout-path = &serial2;
+	};
+
+	soc {
+		/* External Micro SD card slot */
+		sdi0_per1@80126000 {
+			status = "okay";
+
+			arm,primecell-periphid = <0x10480180>;
+			max-frequency = <100000000>;
+			bus-width = <4>;
+
+			non-removable;
+			/*
+			 * Unfortunately, there is no way to enable the UHS
+			 * modes due to a limitation of the SD level translator:
+			 * It will either translate to 2.9V or disconnect the
+			 * DATA lines, so switching to 1.8V signal voltage fails.
+			 */
+			cap-sd-highspeed;
+			cap-mmc-highspeed;
+			st,sig-pin-fbclk;
+			full-pwr-cycle;
+
+			vmmc-supply = <&ab8500_ldo_aux3_reg>;
+			vqmmc-supply = <&sd_level_translator>;
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&mc0_a_2_default>;
+			pinctrl-1 = <&mc0_a_2_sleep>;
+		};
+
+		/* WLAN SDIO */
+		sdi1_per2@80118000 {
+			status = "okay";
+
+			arm,primecell-periphid = <0x10480180>;
+			max-frequency = <50000000>;
+			bus-width = <4>;
+
+			non-removable;
+			cap-sd-highspeed;
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&mc1_a_2_default>;
+			pinctrl-1 = <&mc1_a_2_sleep>;
+		};
+
+		/* eMMC */
+		sdi2_per3@80005000 {
+			status = "okay";
+
+			arm,primecell-periphid = <0x10480180>;
+			max-frequency = <100000000>;
+			bus-width = <8>;
+
+			non-removable;
+			cap-mmc-highspeed;
+			mmc-ddr-1_8v;
+
+			vmmc-supply = <&vmem_3v3>;
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&mc2_a_1_default>;
+			pinctrl-1 = <&mc2_a_1_sleep>;
+		};
+
+		/* BT UART */
+		uart@80120000 {
+			status = "okay";
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&u0_a_1_default>;
+			pinctrl-1 = <&u0_a_1_sleep>;
+		};
+
+		/* GPF UART */
+		uart@80121000 {
+			status = "okay";
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&u1rxtx_a_1_default &u1ctsrts_a_1_default>;
+			pinctrl-1 = <&u1rxtx_a_1_sleep &u1ctsrts_a_1_sleep>;
+		};
+
+		/* Debugging console UART */
+		uart@80007000 {
+			status = "okay";
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&u2rxtx_c_1_default>;
+			pinctrl-1 = <&u2rxtx_c_1_sleep>;
+		};
+
+		prcmu@80157000 {
+			ab8505 {
+				ab8500_usb {
+					pinctrl-names = "default", "sleep";
+					pinctrl-0 = <&usb_a_1_default>;
+					pinctrl-1 = <&usb_a_1_sleep>;
+				};
+
+				ab8505-regulators {
+					ab8500_ldo_aux1 {
+						regulator-name = "sensor_3v";
+						regulator-min-microvolt = <3000000>;
+						regulator-max-microvolt = <3000000>;
+					};
+
+					ab8500_ldo_aux2 {
+						regulator-name = "vreg_tsp_a3v3";
+						regulator-min-microvolt = <3300000>;
+						regulator-max-microvolt = <3300000>;
+					};
+
+					ab8500_ldo_aux3 {
+						regulator-name = "vdd_tf_2v91";
+					};
+
+					ab8500_ldo_aux4 {
+						regulator-name = "key_led_3.3v";
+						regulator-min-microvolt = <3300000>;
+						regulator-max-microvolt = <3300000>;
+					};
+
+					ab8500_ldo_aux5 {
+						regulator-name = "vreg_tsp_1v8";
+						regulator-min-microvolt = <1800000>;
+						regulator-max-microvolt = <1800000>;
+					};
+
+					ab8500_ldo_aux6 {
+						regulator-name = "touch_key_2.2v";
+						regulator-min-microvolt = <2200000>;
+						regulator-max-microvolt = <2200000>;
+					};
+
+					ab8500_ldo_aux8 {
+						regulator-name = "sensor_1v8";
+					};
+				};
+			};
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&gpio_keys_default>;
+
+		label = "GPIO Buttons";
+
+		volume-up {
+			label = "Volume Up";
+			/* GPIO67 (VOL_UP) */
+			gpios = <&gpio2 3 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEUP>;
+		};
+
+		volume-down {
+			label = "Volume Down";
+			/* GPIO92 (VOL_DOWN) */
+			gpios = <&gpio2 28 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEDOWN>;
+		};
+
+		home {
+			label = "Home";
+			/* GPIO91 (HOME_KEY) */
+			gpios = <&gpio2 27 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_HOMEPAGE>;
+		};
+	};
+
+	vibrator {
+		compatible = "gpio-vibrator";
+		/* GPIO195 (MOT_EN) */
+		enable-gpios = <&gpio6 3 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&vibrator_default>;
+	};
+
+	/* External LDO for eMMC */
+	vmem_3v3: regulator-vmem {
+		compatible = "regulator-fixed";
+
+		regulator-name = "vmem_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+
+		startup-delay-us = <200>;
+
+		/* GPIO223 (MEM_LDO_EN) */
+		gpio = <&gpio6 31 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&mem_ldo_default>;
+	};
+
+	/* TI TXS0206-29 level translator for 2.9 V */
+	sd_level_translator: regulator-sd-level-translator {
+		compatible = "regulator-fixed";
+
+		regulator-name = "sd-level-translator";
+		regulator-min-microvolt = <2900000>;
+		regulator-max-microvolt = <2900000>;
+
+		startup-delay-us = <200>;
+
+		/* GPIO87 (TXS0206-29_EN) */
+		gpios = <&gpio2 23 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&sd_level_translator_default>;
+	};
+};
+
+&pinctrl {
+	gpio-keys {
+		gpio_keys_default: gpio_keys_default {
+			golden_cfg1 {
+				pins = "GPIO67",	/* VOL_UP */
+				       "GPIO91",	/* HOME_KEY */
+				       "GPIO92";	/* VOL_DOWN */
+				ste,config = <&gpio_in_pu>;
+			};
+		};
+	};
+
+	sdi0 {
+		sd_level_translator_default: sd_level_translator_default {
+			golden_cfg1 {
+				pins = "GPIO87_B3";	/* TXS0206-29_EN */
+				ste,config = <&gpio_out_lo>;
+			};
+		};
+	};
+
+	sdi2 {
+		mem_ldo_default: mem_ldo_default {
+			golden_cfg1 {
+				pins = "GPIO223_AH9";	/* MEM_LDO_EN */
+				ste,config = <&gpio_out_hi>;
+			};
+		};
+	};
+
+	vibrator {
+		vibrator_default: vibrator_default {
+			golden_cfg1 {
+				pins = "GPIO195_AG28";	/* MOT_EN */
+				ste,config = <&gpio_out_lo>;
+			};
+		};
+	};
+};
+
+&ab8505_gpio {
+	/* Hog a few default settings */
+	pinctrl-names = "default";
+	pinctrl-0 = <&gpio_default>;
+
+	gpio {
+		gpio_default: gpio_default {
+			golden_mux {
+				/* Change unused pins to GPIO mode */
+				function = "gpio";
+				groups = "gpio3_a_1",	/* default: SysClkReq4 */
+					 "gpio14_a_1";	/* default: PWMOut1 */
+			};
+			golden_cfg1 {
+				pins = "GPIO11_B17", "GPIO13_D17", "GPIO50_L4";
+				bias-disable;
+			};
+		};
+	};
+};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
