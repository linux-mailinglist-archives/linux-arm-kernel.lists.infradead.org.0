Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0879D17CFDB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 20:36:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nPo/JwAFZuQKBd1ToYVWF6ayjWhxU4gIu2lUTM/s/wg=; b=PHa8hv/RW4mFKo
	QeAFs8LsLCr5mlgpTVDDwl+Rx4zNoHunuEqAJSSfCzDMCytBgiL+IakF141gN6WbL/rfEXRUckMvz
	PRspLJL41LVsKDEyD8N7riO2hPF9ysepp0bIUOcKTpblu4BTl71koUhjios4gHA5FSjWasCxY0pE9
	hcolCxioSb5e1dF/APzuny8YsjJ2urutPW94O+vahGcXDfok5Us39iObKRYsmlpIOFkbQBmw0pcCO
	LLdU9Igv4tlj50vaMEc8Mb5L8IhFFTdyDa7nPQmD0/e0lQPo/ypX2pUQCWXZ9UUIECqFQBbsrydqn
	5oEs2l+gqueMDyPx46/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAfFa-0006ua-UH; Sat, 07 Mar 2020 19:36:42 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAfFS-0006tb-Oi
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 19:36:37 +0000
Received: by mail-lj1-x244.google.com with SMTP id n20so2760507ljg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Mar 2020 11:36:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oyRJT54kPjwxiWXkKwncOwXOQk9eRUWQm3vwIW/O65c=;
 b=Utq4o4to/cPzR5GnFjCSAKtDkpaSv1DqpBHq4cRyCUkU7qqlyVhmzatEMcjSdH8xmW
 xD+omzqL0cWlTj6F9yDB1lGi4Ygp0cj3+zAj38q10u0Z05JiSZGaLmSye1h8fo/igonz
 DAaVVmd+RE5dQT1nkRA7GpfMIaEPEF4grd4MNFiuO8kjM+by4FsOVvY67y3iSjMqGk1A
 bbeCIZVHLFRd/y9dBr2IHpJt0Pt6KdpFNKRj2ABjrPkgcYRn9lU2ulf4NeYSmmVdeaWH
 ZXXXXX/Zv2SOSVes2eCy16UWtFCYPaF5r1S9udLiDvtZF5zZ99VwlJBFHBreSO5FSwQ4
 eFHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oyRJT54kPjwxiWXkKwncOwXOQk9eRUWQm3vwIW/O65c=;
 b=Nfz4IyXc34Aa2hjva0AYS9T0cVq6av66yS5tj1sLqoxYIhnwIoJJpWlmPP+s863WVZ
 G8zbM9oVBbFllsMZwsWOuoffaiCZ2LDMa6sMGJGZRDLogkmSjpC5LBo4G76SBCpo39dk
 uOCAzAEFTydX4PJlxgDmlIYsaJyBzOIZkCHwV2ocGsQ0GtP3j3AV9SRJKmRIiVRA2r0G
 Y47SLUym6aek5il81wygaxU8Gi+pS8f40nDemZIR5Im6iEkDRycGBBroo/vo8tMKWuLs
 UmJXOmRanhO1AZDg+7fx0HCKmmufdEwAEELN6N8pRJLECHMz5m9uiE1PNbH75ylajS+l
 IDXw==
X-Gm-Message-State: ANhLgQ1XEFWTUHlLBGqT+nGWmbGnP2LoHb02lV2qxH8TawRZmJFQlzTr
 XLNNuuracO87sqcKz24elx2oiecB/Q4=
X-Google-Smtp-Source: ADFU+vuIqEpS2lScNqvSkw1rYWORqS44/cywmguSVxXwAU0mpXelAgoVKaPrLvWyj4TryYtaGhtOLA==
X-Received: by 2002:a05:651c:1056:: with SMTP id
 x22mr2303772ljm.91.1583609791619; 
 Sat, 07 Mar 2020 11:36:31 -0800 (PST)
Received: from localhost.bredbandsbolaget
 (c-5ac9225c.014-348-6c756e10.bbcust.telenor.se. [92.34.201.90])
 by smtp.gmail.com with ESMTPSA id n26sm18149461lfi.5.2020.03.07.11.36.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Mar 2020 11:36:30 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] ARM: dts: Add devicetree for Samsung GT-S7710
Date: Sat,  7 Mar 2020 20:36:27 +0100
Message-Id: <20200307193627.4092-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_113634_838245_221A8918 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Samsung GT-S7710 also known as XCover 2 or Skomer is a
Ux500-based mobile phone. In the source code release from
Samsung's open source site it is referred to as "Skomer".

Cc: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Set SD level shifter to be a simple fixed regulator
  at 2.9V
- Set the eMMC supply LDO to be at 3.3V not 1.8V
- Move the accelerator to the hardware I2C2 bus instead
  of the bit-banged GPIO bus.
- Move the touchscreen placeholder to the hardware I2C3
  bus.
- Drop unused pin configs associated with the deleted
  GPIO I2C buses.
- Rename the two remaning bit-banged GPIO I2C buses as
  i2c-gpio-0 and i2c-gpio-1.
- Drop the UHS speeds from the SD card, no 1.8V
- Flag the eMMC card as nonremovable and tag that it
  supports mmc-ddr-1_8v (works great when testing).
- Use standard mc2_a_1 pin config for the eMMC SDI2 slot.
- Use standard UART pin control set-ups just like Golden.
- Use mc0_a_1 for the SD card pin config, but EXTEND IT
  so we also cover DAT31DIR. Apparently this machine
  makes use of DAT31DIR!
- Move the level shifter GPIO pin control into its own
  pin config node and associate it with the level
  shifter regulator.
- Switch the WLAN SDIO to use "mc1_a_2" configs instead
  of the mock group which was buggy anyway.
- Do not disable USB, drop custom USB pin config which
  is identical to the default.
---
 arch/arm/boot/dts/Makefile                    |   3 +-
 .../arm/boot/dts/ste-ux500-samsung-skomer.dts | 583 ++++++++++++++++++
 2 files changed, 585 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/ste-ux500-samsung-skomer.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index d6546d2676b9..a7671831ecf6 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1202,7 +1202,8 @@ dtb-$(CONFIG_ARCH_U8500) += \
 	ste-hrefv60plus-stuib.dtb \
 	ste-hrefv60plus-tvk.dtb \
 	ste-href520-tvk.dtb \
-	ste-ux500-samsung-golden.dtb
+	ste-ux500-samsung-golden.dtb \
+	ste-ux500-samsung-skomer.dtb
 dtb-$(CONFIG_ARCH_UNIPHIER) += \
 	uniphier-ld4-ref.dtb \
 	uniphier-ld6b-ref.dtb \
diff --git a/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts b/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts
new file mode 100644
index 000000000000..f799e45f5b10
--- /dev/null
+++ b/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts
@@ -0,0 +1,583 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Devicetree for the Samsung XCover 2 GT-S7710 also known as Skomer.
+ */
+
+/dts-v1/;
+#include "ste-db8500.dtsi"
+#include "ste-ab8505.dtsi"
+#include "ste-dbx5x0-pinctrl.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+
+/ {
+	model = "Samsung XCover 2 (GT-S7710)";
+	compatible = "samsung,skomer", "st-ericsson,u8500";
+
+	chosen {
+		stdout-path = &serial2;
+	};
+
+	/* TI TXS0206 level translator for 2.9 V */
+	sd_level_translator: regulator-gpio {
+		compatible = "regulator-fixed";
+
+		/* GPIO87 EN */
+		gpios = <&gpio2 23 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		regulator-name = "sd-level-translator";
+		regulator-min-microvolt = <2900000>;
+		regulator-max-microvolt = <2900000>;
+		regulator-type = "voltage";
+
+		startup-delay-us = <200>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&sd_level_translator_default>;
+	};
+
+	/* External LDO MIC5366-3.3YMT for eMMC */
+	ldo_3v3_reg: regulator-gpio-ldo-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "en-3v3-fixed-supply";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio6 31 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <5000>;
+		enable-active-high;
+		pinctrl-names = "default";
+		pinctrl-0 = <&emmc_ldo_en_default_mode>;
+	};
+
+	wlan_en: regulator-gpio-wlan-en {
+		compatible = "regulator-fixed";
+		regulator-name = "wl-reg-on";
+		regulator-min-microvolt = <3000000>;
+		regulator-max-microvolt = <3000000>;
+		startup-delay-us = <200000>;
+		/* GPIO215 WLAN_EN */
+		gpio = <&gpio6 23 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wlan_en_default_mode>;
+	};
+
+	vibrator {
+		compatible = "gpio-vibrator";
+		enable-gpios = <&gpio6 3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vibrator_default>;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&gpio_keys_default_mode>;
+
+		button-home {
+			linux,code = <KEY_HOME>;
+			label = "HOME";
+			/* GPIO91 */
+			gpios = <&gpio2 27 GPIO_ACTIVE_LOW>;
+		};
+		button-volup {
+			linux,code = <KEY_VOLUMEUP>;
+			label = "VOL+";
+			/* GPIO67 */
+			gpios = <&gpio2 3 GPIO_ACTIVE_LOW>;
+		};
+		button-voldown {
+			linux,code = <KEY_VOLUMEDOWN>;
+			label = "VOL-";
+			/* GPIO92 */
+			gpios = <&gpio2 28 GPIO_ACTIVE_LOW>;
+		};
+		button-menu {
+			linux,code = <KEY_MENU>;
+			label = "MENU";
+			/* GPIO204 */
+			gpios = <&gpio6 12 GPIO_ACTIVE_LOW>;
+		};
+		button-back {
+			linux,code = <KEY_BACK>;
+			label = "BACK";
+			/* GPIO205 */
+			gpios = <&gpio6 13 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	/*
+	 * FIXME: this is not quite GPIO backlight. This is a
+	 * KTD253 one-wire GPIO-controlled backlight. It can
+	 * work as a GPIO backlight.
+	 */
+	gpio_bl: backlight {
+		compatible = "gpio-backlight";
+		/* GPIO 69 */
+		gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&gpio_backlight_default_mode>;
+	};
+
+	i2c-gpio-0 {
+		compatible = "i2c-gpio";
+		sda-gpios = <&gpio4 16 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&gpio4 15 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c_gpio_0_default>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		/* TODO: this should be used by the NCP6914 Camera power management unit */
+	};
+
+	i2c-gpio-1 {
+		compatible = "i2c-gpio";
+		sda-gpios = <&gpio4 24 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&gpio4 23 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c_gpio_1_default>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		/* TODO: this should be used by the ALPS HSCDTD008A compass sensor */
+	};
+
+	soc {
+		// External Micro SD slot
+		sdi0_per1@80126000 {
+			arm,primecell-periphid = <0x10480180>;
+			max-frequency = <100000000>;
+			bus-width = <4>;
+			cap-sd-highspeed;
+			cap-mmc-highspeed;
+			/* All direction control is used */
+			st,sig-dir-cmd;
+			st,sig-dir-dat0;
+			st,sig-dir-dat2;
+			st,sig-dir-dat31;
+			st,sig-pin-fbclk;
+			full-pwr-cycle;
+			vmmc-supply = <&ab8500_ldo_aux3_reg>;
+			vqmmc-supply = <&sd_level_translator>;
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&mc0_a_1_default>;
+			pinctrl-1 = <&mc0_a_1_sleep>;
+			status = "okay";
+		};
+
+		// WLAN SDIO channel
+		sdi1_per2@80118000 {
+			arm,primecell-periphid = <0x10480180>;
+			max-frequency = <50000000>;
+			bus-width = <4>;
+			non-removable;
+			cap-sd-highspeed;
+			vmmc-supply = <&wlan_en>;
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&mc1_a_2_default>;
+			pinctrl-1 = <&mc1_a_2_sleep>;
+			status = "okay";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			wifi@1 {
+				compatible = "brcm,bcm4329-fmac";
+				reg = <1>;
+				/* GPIO216 WL_HOST_WAKE */
+				interrupt-parent = <&gpio6>;
+				interrupts = <24 IRQ_TYPE_EDGE_FALLING>;
+				interrupt-names = "host-wake";
+				pinctrl-names = "default";
+				pinctrl-0 = <&wlan_default_mode>;
+			};
+		};
+
+		// eMMC
+		sdi2_per3@80005000 {
+			arm,primecell-periphid = <0x10480180>;
+		        max-frequency = <100000000>;
+			bus-width = <8>;
+			non-removable;
+			cap-mmc-highspeed;
+			mmc-ddr-1_8v;
+			vmmc-supply = <&ldo_3v3_reg>;
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&mc2_a_1_default>;
+			pinctrl-1 = <&mc2_a_1_sleep>;
+
+			status = "okay";
+		};
+
+		/* GBF (Bluetooth) UART */
+		uart@80120000 {
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&u0_a_1_default>;
+			pinctrl-1 = <&u0_a_1_sleep>;
+			status = "okay";
+
+			/* FIXME: not quite working yet, probably needs regulators */
+			bluetooth {
+				compatible = "brcm,bcm4330-bt";
+				shutdown-gpios = <&gpio6 30 GPIO_ACTIVE_HIGH>;
+				device-wakeup-gpios = <&gpio6 7 GPIO_ACTIVE_HIGH>;
+				host-wakeup-gpios = <&gpio3 1 GPIO_ACTIVE_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&bluetooth_default_mode>;
+			};
+		};
+
+		/* GPF UART */
+		uart@80121000 {
+			status = "okay";
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&u1rxtx_a_1_default &u1ctsrts_a_1_default>;
+			pinctrl-1 = <&u1rxtx_a_1_sleep &u1ctsrts_a_1_sleep>;
+		};
+
+		/* Debugging console UART connected to AB8505 USB */
+		uart@80007000 {
+			status = "okay";
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
+						/* Used for VDD for sensors */
+						regulator-name = "AUX1";
+						regulator-min-microvolt = <3000000>;
+						regulator-max-microvolt = <3300000>;
+					};
+
+					ab8500_ldo_aux2 {
+						/* Supplies the Cypress TMA140 touchscreen only with 3.3V */
+						regulator-name = "AUX2";
+						regulator-min-microvolt = <3300000>;
+						regulator-max-microvolt = <3300000>;
+					};
+
+					ab8500_ldo_aux3 {
+						/* Used for voltage for external MMC/SD card */
+						regulator-name = "AUX3";
+						regulator-min-microvolt = <1100000>;
+						regulator-max-microvolt = <3300000>;
+					};
+
+					ab8500_ldo_aux4 {
+						regulator-name = "AUX4";
+						/* Hammer to 3.0V for the display */
+						regulator-min-microvolt = <3000000>;
+						regulator-max-microvolt = <3000000>;
+					};
+
+					ab8500_ldo_aux5 {
+						regulator-name = "AUX5";
+						regulator-min-microvolt = <1050000>;
+						regulator-max-microvolt = <2790000>;
+						regulator-always-on;
+					};
+
+					ab8500_ldo_aux6 {
+						regulator-name = "AUX6";
+						/* Hammer to 1.8V for the display */
+						regulator-min-microvolt = <1800000>;
+						regulator-max-microvolt = <1800000>;
+					};
+
+					ab8500_ldo_aux8 {
+						/* Mostly VIO for sensors */
+						regulator-name = "AUX8";
+					};
+				};
+			};
+		};
+
+		/* I2C0 */
+		i2c@80004000 {
+			status = "okay";
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&i2c0_a_1_default>;
+			pinctrl-1 = <&i2c0_a_1_sleep>;
+
+			proximity@44 {
+				compatible = "sharp,gp2ap002s00f";
+				clock-frequency = <400000>;
+				reg = <0x44>;
+
+				interrupt-parent = <&gpio4>;
+				interrupts = <18 IRQ_TYPE_EDGE_FALLING>;
+				vdd-supply = <&ab8500_ldo_aux1_reg>;
+				vio-supply = <&ab8500_ldo_aux8_reg>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&gp2ap002_skomer_default>;
+				sharp,proximity-far-hysteresis = /bits/ 8 <0x2f>;
+				sharp,proximity-close-hysteresis = /bits/ 8 <0x0f>;
+			};
+		};
+
+
+		/* I2C2 */
+		i2c@80128000 {
+			status = "okay";
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&i2c2_b_2_default>;
+			pinctrl-1 = <&i2c2_b_2_sleep>;
+
+			accel@18 {
+				compatible = "bosch,bma254";
+				clock-frequency = <400000>;
+				reg = <0x18>;
+
+				/* GPIO224 used as "smart alert" interrupt */
+				interrupt-parent = <&gpio7>;
+				interrupts = <0 IRQ_TYPE_EDGE_RISING>;
+
+				mount-matrix = "0", "1", "0",
+					       "-1", "0", "0",
+					       "0", "0", "1";
+				vdd-supply = <&ab8500_ldo_aux1_reg>;
+				vddio-supply = <&ab8500_ldo_aux8_reg>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&bma254_skomer_default>;
+			};
+		};
+
+		/* I2C3 */
+		i2c@80110000 {
+			status = "okay";
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&i2c3_c_2_default>;
+			pinctrl-1 = <&i2c3_c_2_sleep>;
+
+			/* TODO: this should be used by the Cypress TMA140 touchscreen */
+		};
+
+		mcde@a0350000 {
+			status = "okay";
+			pinctrl-names = "default";
+			pinctrl-0 = <&dsi_default_mode>;
+
+			dsi@a0351000 {
+				panel {
+					/* NT35510-based Hydis HVA40WV1 */
+					compatible = "hydis,hva40wv1", "novatek,nt35510";
+					reg = <0>;
+					/* v_lcd_3v0 2.3-4.8V */
+					vdd-supply = <&ab8500_ldo_aux4_reg>;
+					/* v_lcd_1v8 1.65-3.3V */
+					vddi-supply = <&ab8500_ldo_aux6_reg>;
+					/* GPIO 139 */
+					reset-gpios = <&gpio4 11 GPIO_ACTIVE_LOW>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&display_default_mode>;
+					backlight = <&gpio_bl>;
+				};
+			};
+		};
+	};
+};
+
+&pinctrl {
+	/*
+	 * This extends the MC0 default config to include DAT32DIR
+	 * which is used by this machine. If we don't do this the
+	 * SD card does not work.
+	 */
+	sdi0 {
+		mc0_a_1_default {
+			default_mux {
+				function = "mc0";
+				/* This machine uses the DAT31 pin */
+				groups = "mc0_a_1", "mc0dat31dir_a_1";
+			};
+			default_cfg5 {
+				pins = "GPIO21_AB3"; /* DAT31DIR */
+				ste,config = <&out_hi>;
+			};
+		};
+	};
+
+	mcde {
+		dsi_default_mode: dsi_default {
+			default_mux1 {
+				/* Mux in VSI0 used for DSI TE */
+				function = "lcd";
+				groups =
+				"lcdvsi0_a_1"; /* VSI0 for LCD */
+			};
+			default_cfg1 {
+				pins =
+				"GPIO68_E1"; /* VSI0 */
+				ste,config = <&in_nopull>;
+			};
+		};
+	};
+
+	/* Two GPIO lines used by the display */
+	display {
+		display_default_mode: display_default {
+			skomer_cfg1 {
+				/*
+				 * OLED DETECT or check_pba, this appears to be high
+				 * on "PBA" which I guess is "prototype board A".
+				 */
+				pins = "GPIO93_B7";
+				ste,config = <&gpio_in_nopull>;
+			};
+			skomer_cfg2 {
+				pins = "GPIO139_C9";
+				/*
+				 * MIPI_DSI0_RESET_N resets the display, leave high
+				 * (de-asserted) so we only assert reset explicitly
+				 * from the display driver.
+				 */
+				ste,config = <&gpio_out_hi>;
+			};
+		};
+	};
+	backlight {
+		gpio_backlight_default_mode: backlight_default {
+			skomer_cfg1 {
+				pins = "GPIO69_E2"; /* LCD_BL_CTRL */
+				ste,config = <&gpio_out_lo>;
+			};
+		};
+	};
+	/* GPIO that enables the 2.9V SD card level translator */
+	sd-level-translator {
+		sd_level_translator_default: sd_level_translator_default {
+			/* level shifter on GPIO87 */
+			skomer_cfg1 {
+				pins = "GPIO87_B3";
+				ste,config = <&gpio_out_hi>;
+			};
+		};
+	};
+	/* GPIO that enables the LDO regulator for the eMMC */
+	emmc-ldo {
+		emmc_ldo_en_default_mode: emmc_ldo_default {
+			/* LDO enable on GPIO223 */
+			skomer_cfg1 {
+				pins = "GPIO223_AH9";
+				ste,config = <&gpio_out_hi>;
+			};
+		};
+	};
+	/* GPIO keys */
+	gpio-keys {
+		gpio_keys_default_mode: gpio_keys_default {
+			skomer_cfg1 {
+				pins = "GPIO67_G2", /* VOL UP */
+				       "GPIO91_B6", /* HOME */
+				       "GPIO92_D6", /* VOL DOWN */
+				       "GPIO204_AF23", /* MENU */
+				       "GPIO205_AG23"; /* BACK */
+					ste,config = <&gpio_in_pu>;
+			};
+		};
+	};
+	/* Interrupt line for BMA254 */
+	bma254 {
+		bma254_skomer_default: bma254_skomer {
+			skomer_cfg1 {
+				pins = "GPIO224_AG9";
+				ste,config = <&gpio_in_pd>;
+			};
+		};
+	};
+	/* Interrupt line for light/proximity sensor GP2AP002 */
+	gp2ap002 {
+		gp2ap002_skomer_default: gp2ap002_skomer {
+			skomer_cfg1 {
+				pins = "GPIO146_D13";
+				ste,config = <&gpio_in_nopull>;
+			};
+		};
+	};
+	/* GPIO-based I2C bus for NCP6914 */
+	i2c-gpio-0 {
+		i2c_gpio_0_default: i2c_gpio_0 {
+			skomer_cfg1 {
+				pins = "GPIO143_D12", "GPIO144_B13";
+				ste,config = <&gpio_in_nopull>;
+			};
+		};
+	};
+	/* GPIO-based I2C bus for ALPS HSCD compass */
+	i2c-gpio-1 {
+		i2c_gpio_1_default: i2c_gpio_1 {
+			skomer_cfg1 {
+				pins = "GPIO151_B17", "GPIO152_D16";
+				ste,config = <&gpio_in_nopull>;
+			};
+		};
+	};
+	wlan {
+		wlan_default_mode: wlan_default {
+			skomer_cfg1 {
+				pins = "GPIO216_AG12";
+				ste,config = <&gpio_in_pd>;
+			};
+		};
+		wlan_en_default_mode: wlan_en_default {
+			skomer_cfg2 {
+				pins = "GPIO215_AH13";
+				ste,config = <&gpio_out_lo>;
+			};
+		};
+	};
+	bluetooth {
+		bluetooth_default_mode: bluetooth_default {
+			skomer_cfg1 {
+				pins = "GPIO199_AH23", "GPIO222_AJ9";
+				ste,config = <&gpio_out_lo>;
+			};
+			skomer_cfg2 {
+				pins = "GPIO97_D9";
+				ste,config = <&gpio_in_nopull>;
+			};
+		};
+	};
+	vibrator {
+		vibrator_default: vibrator_default {
+			skomer_cfg1 {
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
+			skomer_mux {
+				/* Change unused pins to GPIO mode */
+				function = "gpio";
+				groups = "gpio3_a_1",	/* default: SysClkReq4 */
+					 "gpio14_a_1";	/* default: PWMOut1 */
+			};
+			skomer_cfg1 {
+				pins = "GPIO11_B17", "GPIO13_D17", "GPIO50_L4";
+				bias-disable;
+			};
+		};
+	};
+};
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
