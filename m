Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D434A962B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qM1r36QaFvKJA2WDRImoXQb4/K7+D+NKwhLPl48btP4=; b=cPLrOv3KM9sd2A
	QUTjhmWoSYzNaWoVXDloS6dGctRnAS6Uc57Zbrq0NoWXguTctHN6Nam9Kqa6jGpLU8i4bwRKwGM4f
	sLMzTMV2kM1rJRaIR9kJgXbpA1wUX8KcXhloaWErz1N1kBbODH+FkAV+uCon22VRnqnkteZCn+m+s
	UfNwhKvDtqlXpahWVXwAj25aPucagJVPV57QoQElwDciypgn3qRtbAHEKh6DRz+BnB+FoWZUaAkr2
	Gx2amXiVh9uHArEn6LQ975P0KIJWW894zenPrB3G7regYuCWZTnkUxygSkhW+AvxOx63QitYZLPpc
	XLnRYTOGuFlPHeqL6XwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05Lz-0005ZF-TD; Tue, 20 Aug 2019 14:43:20 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05Jn-0003WU-SX
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:41:10 +0000
Received: by mail-wm1-x343.google.com with SMTP id o4so2861898wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 07:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hkyCmmALp09LgyfzPKG7zyXxpn4Vp2Gtq8noIIEOGls=;
 b=CmcrB9uin8EfyBZRLXA131OjGURvTTniB88LvhaxXWmne1raEW/V8XBgXqb8gBcFnN
 voDrqW6B+XiJSkDUf6UDCFeYTUJIsQFXkklLJb/29c+P1Y2iKQA//5tMf1Vf37jTgcMi
 5YM5A+mRqbf1D7TbFauFN0ZR6s6DLJd3shJXz79hVSHZ8fDJoQQQNzauJBXq8fLZDKRI
 cdaH+Px80OJNcWCskaEi5HUCuu/O+XPB109VFsh3jofx/0rmcJtEdt0Kv2zlkI95e0mA
 d8zE7VJu7DlXLB9IgiM2AZV0ojSjGGbOUIJGZgaZ3MR/MsyZozBZxfMRgPyHZFUV2wJS
 O/rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hkyCmmALp09LgyfzPKG7zyXxpn4Vp2Gtq8noIIEOGls=;
 b=Q/gCY9txXy2NpObyBATF8I2f5zjfbG7y4xLkC1+iBm9+0hM/RnW3MwysKLRvgAixlh
 7xWE/Fx9RXgqqApNnz8YHsQRNDjxlc1Y2BEWOEuxcx5gGa0XjzvsNj9UjQV/7Bw2d/Js
 s13709w3p7uxOKQq6ptfbexHI0p0TkUUZM57dvs1DI+QGbIEhPInQEObwxOxm8OUsFiM
 5AaFYC0Hdvwbm+dP5pNZ8+IOVTRSClY+jGMFvw25EWKe3ELCukC3KKvu/V/SDFRUzmfa
 u8dMkeLxwfRhZJTJYJbhNFPCARgcgoFWnPHOa+TTjjdbQNf0y2dZ60e1XFf/ATlehO1r
 5Vbw==
X-Gm-Message-State: APjAAAUa1jsFEzQaIbYYB7O+fXFB/5Ukso+ApaY5KuK04A680NhLH1so
 QlDh8XzxmQpLNkcVU8oB8EVPEA==
X-Google-Smtp-Source: APXvYqxE1UocLLJIGj+qa121b1J1P2Z7TFTsdeLiYhSC8aPtfjpP2T2/VhNf3pAQR82l3L5H3plJmg==
X-Received: by 2002:a1c:d185:: with SMTP id i127mr361632wmg.63.1566312061423; 
 Tue, 20 Aug 2019 07:41:01 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a18sm21826750wrt.18.2019.08.20.07.41.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 07:41:00 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 6/6] arm64: dts: add support for SM1 based SEI Robotics SEI610
Date: Tue, 20 Aug 2019 16:40:52 +0200
Message-Id: <20190820144052.18269-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820144052.18269-1-narmstrong@baylibre.com>
References: <20190820144052.18269-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_074104_111950_E2BEC37A 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the Amlogic SM1 Based SEI610 board.

The SM1 SoC is a derivative of the G12A SoC Family with :
- Cortex-A55 core instead of A53
- more power domains, including USB & PCIe
- a neural network co-processor (NNA)
- a CSI input and image processor
- some changes in the audio complex, thus not yet enabled

The SEI610 board is a derivative of the SEI510 board with :
- removed ADC based touch button, replaced with 3x GPIO buttons
- physical switch disabling on-board MICs
- USB-C port for USB 2.0 OTG
- On-board FTDI USB2SERIAL port for Linux console

Audio, Display and USB support will be added later when support of the
corresponding power domains will be added, for now they are kept disabled.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/Makefile          |   1 +
 .../boot/dts/amlogic/meson-sm1-sei610.dts     | 300 ++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  68 ++++
 3 files changed, 369 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi

diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
index ae5e8d0c08da..edbf128e7707 100644
--- a/arch/arm64/boot/dts/amlogic/Makefile
+++ b/arch/arm64/boot/dts/amlogic/Makefile
@@ -34,3 +34,4 @@ dtb-$(CONFIG_ARCH_MESON) += meson-gxm-q200.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxm-q201.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxm-rbox-pro.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxm-vega-s96.dtb
+dtb-$(CONFIG_ARCH_MESON) += meson-sm1-sei610.dtb
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
new file mode 100644
index 000000000000..12dab0ba2f26
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -0,0 +1,300 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 BayLibre SAS. All rights reserved.
+ */
+
+/dts-v1/;
+
+#include "meson-sm1.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/gpio/meson-g12a-gpio.h>
+
+/ {
+	compatible = "seirobotics,sei610", "amlogic,sm1";
+	model = "SEI Robotics SEI610";
+
+	aliases {
+		serial0 = &uart_AO;
+		ethernet0 = &ethmac;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	emmc_pwrseq: emmc-pwrseq {
+		compatible = "mmc-pwrseq-emmc";
+		reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <100>;
+
+		key1 {
+			label = "A";
+			linux,code = <BTN_0>;
+			gpios = <&gpio GPIOH_6 GPIO_ACTIVE_LOW>;
+		};
+
+		key2 {
+			label = "B";
+			linux,code = <BTN_1>;
+			gpios = <&gpio GPIOH_7 GPIO_ACTIVE_LOW>;
+		};
+
+		key3 {
+			label = "C";
+			linux,code = <BTN_2>;
+			gpios = <&gpio_ao GPIOAO_2 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		bluetooth {
+			label = "sei610:blue:bt";
+			gpios = <&gpio GPIOC_7 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+			default-state = "off";
+		};
+	};
+
+	pwmleds {
+		compatible = "pwm-leds";
+
+		power {
+			label = "sei610:red:power";
+			pwms = <&pwm_AO_ab 0 30518 0>;
+			max-brightness = <255>;
+			linux,default-trigger = "default-on";
+			active-low;
+		};
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x0 0x0 0x40000000>;
+	};
+
+	ao_5v: regulator-ao_5v {
+		compatible = "regulator-fixed";
+		regulator-name = "AO_5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dc_in>;
+		regulator-always-on;
+	};
+
+	dc_in: regulator-dc_in {
+		compatible = "regulator-fixed";
+		regulator-name = "DC_IN";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	emmc_1v8: regulator-emmc_1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "EMMC_1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vddao_3v3>;
+		regulator-always-on;
+	};
+
+	vddao_3v3: regulator-vddao_3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDAO_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&dc_in>;
+		regulator-always-on;
+	};
+
+	/* Used by Tuner, RGB Led & IR Emitter LED array */
+	vddao_3v3_t: regultor-vddao_3v3_t {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDAO_3V3_T";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vddao_3v3>;
+		gpio = <&gpio GPIOH_8 GPIO_OPEN_DRAIN>;
+		enable-active-low;
+		regulator-always-on;
+	};
+
+	vddio_ao1v8: regulator-vddio_ao1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDIO_AO1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vddao_3v3>;
+		regulator-always-on;
+	};
+
+	reserved-memory {
+		/* TEE Reserved Memory */
+		bl32_reserved: bl32@5000000 {
+			reg = <0x0 0x05300000 0x0 0x2000000>;
+			no-map;
+		};
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
+		clocks = <&wifi32k>;
+		clock-names = "ext_clock";
+	};
+
+	wifi32k: wifi32k {
+		compatible = "pwm-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+	};
+};
+
+&cec_AO {
+	pinctrl-0 = <&cec_ao_a_h_pins>;
+	pinctrl-names = "default";
+	status = "disabled";
+	hdmi-phandle = <&hdmi_tx>;
+};
+
+&cecb_AO {
+	pinctrl-0 = <&cec_ao_b_h_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+	hdmi-phandle = <&hdmi_tx>;
+};
+
+&ethmac {
+	status = "okay";
+	phy-handle = <&internal_ephy>;
+	phy-mode = "rmii";
+};
+
+&i2c3 {
+	status = "okay";
+	pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
+	pinctrl-names = "default";
+};
+
+&ir {
+	status = "okay";
+	pinctrl-0 = <&remote_input_ao_pins>;
+	pinctrl-names = "default";
+};
+
+&pwm_AO_ab {
+	status = "okay";
+	pinctrl-0 = <&pwm_ao_a_pins>;
+	pinctrl-names = "default";
+	clocks = <&xtal>;
+	clock-names = "clkin0";
+};
+
+&pwm_ef {
+	status = "okay";
+	pinctrl-0 = <&pwm_e_pins>;
+	pinctrl-names = "default";
+	clocks = <&xtal>;
+	clock-names = "clkin0";
+};
+
+&saradc {
+	status = "okay";
+	vref-supply = <&vddio_ao1v8>;
+};
+
+/* SDIO */
+&sd_emmc_a {
+	status = "okay";
+	pinctrl-0 = <&sdio_pins>;
+	pinctrl-1 = <&sdio_clk_gate_pins>;
+	pinctrl-names = "default", "clk-gate";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	bus-width = <4>;
+	cap-sd-highspeed;
+	sd-uhs-sdr50;
+	max-frequency = <100000000>;
+
+	non-removable;
+	disable-wp;
+
+	mmc-pwrseq = <&sdio_pwrseq>;
+
+	vmmc-supply = <&vddao_3v3>;
+	vqmmc-supply = <&vddio_ao1v8>;
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+	};
+};
+
+/* SD card */
+&sd_emmc_b {
+	status = "okay";
+	pinctrl-0 = <&sdcard_c_pins>;
+	pinctrl-1 = <&sdcard_clk_gate_c_pins>;
+	pinctrl-names = "default", "clk-gate";
+
+	bus-width = <4>;
+	cap-sd-highspeed;
+	max-frequency = <50000000>;
+	disable-wp;
+
+	cd-gpios = <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&vddao_3v3>;
+	vqmmc-supply = <&vddao_3v3>;
+};
+
+/* eMMC */
+&sd_emmc_c {
+	status = "okay";
+	pinctrl-0 = <&emmc_pins>, <&emmc_ds_pins>;
+	pinctrl-1 = <&emmc_clk_gate_pins>;
+	pinctrl-names = "default", "clk-gate";
+
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	max-frequency = <200000000>;
+	non-removable;
+	disable-wp;
+
+	mmc-pwrseq = <&emmc_pwrseq>;
+	vmmc-supply = <&vddao_3v3>;
+	vqmmc-supply = <&emmc_1v8>;
+};
+
+&uart_A {
+	status = "okay";
+	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
+	pinctrl-names = "default";
+	uart-has-rtscts;
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		max-speed = <2000000>;
+		clocks = <&wifi32k>;
+		clock-names = "lpo";
+		vbat-supply = <&vddao_3v3>;
+		vddio-supply = <&vddio_ao1v8>;
+	};
+};
+
+/* Exposed via the on-board USB to Serial FT232RL IC */
+&uart_AO {
+	status = "okay";
+	pinctrl-0 = <&uart_ao_a_pins>;
+	pinctrl-names = "default";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
new file mode 100644
index 000000000000..e902d4f9165f
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#include "meson-g12-common.dtsi"
+
+/ {
+	compatible = "amlogic,sm1";
+
+	cpus {
+		#address-cells = <0x2>;
+		#size-cells = <0x0>;
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x0 0x0>;
+			enable-method = "psci";
+			next-level-cache = <&l2>;
+		};
+
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x0 0x1>;
+			enable-method = "psci";
+			next-level-cache = <&l2>;
+		};
+
+		cpu2: cpu@2 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x0 0x2>;
+			enable-method = "psci";
+			next-level-cache = <&l2>;
+		};
+
+		cpu3: cpu@3 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x0 0x3>;
+			enable-method = "psci";
+			next-level-cache = <&l2>;
+		};
+
+		l2: l2-cache0 {
+			compatible = "cache";
+		};
+	};
+};
+
+&cecb_AO {
+	compatible = "amlogic,meson-sm1-ao-cec";
+};
+
+&clk_msr {
+	compatible = "amlogic,meson-sm1-clk-measure";
+};
+
+&pwrc_vpu {
+	status = "disabled";
+};
+
+&vpu {
+	status = "disabled";
+};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
