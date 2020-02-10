Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC64156F95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 07:38:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQOrmq+wxaTK3j411BhkOgAQ4y1CrFtt5olAAXKiki4=; b=F5QOr8wb9GKVSP
	sv1YuusS7e/kcICF8/xYVLzAKA6Ojjk25Xu4pDlqq5e1UW8zMC3Sgfb+RQDm8JsJ0u8mwdKKs6SEl
	17FcO8ZCCp/fM3NNpYJMc1KEDjTAYj0xb1ZKDDQAZ4sSyAI7tcN5IJMX9ts7MlUmn4DssszBVnVek
	/Bl6zt0Q4katOYlZhwD4bciQDCe36PNo3Jlio6K56s3nDe19REsR/PGtRmn0Bwjwabn52WEsctsUH
	GXKLfpM1ZmmJ2DA91zZVSGyyhJ06/hlS9pcLO04m8es43Xo2N3vd7rqBX7awWyAWqybLN4nCRJFUf
	Baz3ZE7mJvs4Zkaz037g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j12hc-0002PZ-Rn; Mon, 10 Feb 2020 06:37:52 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j12gM-0001Gt-PM
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 06:36:42 +0000
Received: by mail-pj1-x1029.google.com with SMTP id m7so2658085pjs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 22:36:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XEgySgGEHII0fKyn1nyE9ROtCqlU3siMwvLpz37IiUQ=;
 b=SeNTcXQudXzy1wUmZeBrye+7c7uRnz6NTVNAx0WXJog4/gxua6AosclOlDQbf5JVny
 USVnHetqhlo08tapBAfRx858uI66Bju2HVo+f49RSjdQlZB24oKUFDwbQLTFzKt+OYzH
 5Mc5RTo4yLGjcAR/oBsmiCULCBQ86MdOY+i/g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XEgySgGEHII0fKyn1nyE9ROtCqlU3siMwvLpz37IiUQ=;
 b=Kkg9bn8Mdk+0fMD8MPt/qZ48GbbZEJDR7V2tqiy6XuZ5OqLW4220IT4HDPWq2SCABb
 UIs3UVwUVosjMaCdnjIekDETddz16tPNK0cSsybhgA3QAvpaEumKd90XcybzlWZqvG0b
 fsWjH+Sn1Zg00yNiYcB7+NPjhpI/8+qHv6i5JLJQ3bNRsI7Kdyq6BeYFe+iEOAf0+YZR
 XQB2T3sDrjTUJuM05mkMeCFqmdC0tK9tlED+wYFhlY6H/unwHihSA0MCav08qgsRv1vQ
 IvTOB+jK4nvL5wFfg0YpvuxgmAR8o4VNJW4u6AfEkH91ouHxU4CyR6Z84qEb0w3d+O4V
 Yu0w==
X-Gm-Message-State: APjAAAVp8YaAL4SxUyte4l774XLq16j1Ej2NWyNdnrR8Tlyf9FJz/1By
 Fria0tluH/Q5RMwNCSW//iEJgakq0YBvlg==
X-Google-Smtp-Source: APXvYqwBMvyhcgyN3L9vu5Phmb+0gnr2oWqKyku8mzPnD31x4xTq4U2kebMAQhoRXFmQ5b4sqAdwcg==
X-Received: by 2002:a17:902:61:: with SMTP id 88mr11385850pla.17.1581316592317; 
 Sun, 09 Feb 2020 22:36:32 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id f15sm11070041pgj.30.2020.02.09.22.36.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Feb 2020 22:36:31 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 4/5] arm64: dts: mediatek: add mt8173 elm and hana board
Date: Mon, 10 Feb 2020 14:35:23 +0800
Message-Id: <20200210063523.133333-5-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
In-Reply-To: <20200210063523.133333-1-hsinyi@chromium.org>
References: <20200210063523.133333-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_223635_304645_6C52F30D 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Elm is Acer Chromebook R13. Hana is Lenovo Chromebook. Both uses mt8173
SoC.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 arch/arm64/boot/dts/mediatek/Makefile         |    3 +
 .../dts/mediatek/mt8173-elm-hana-rev7.dts     |   27 +
 .../boot/dts/mediatek/mt8173-elm-hana.dts     |   14 +
 .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   70 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dts   |   14 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1173 +++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8173.dtsi      |    1 -
 7 files changed, 1301 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 458bbc422a94..b45a45a565a1 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -6,5 +6,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-x20-dev.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-rfb1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-bananapi-bpi-r64.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana-rev7.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-evb.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
new file mode 100644
index 000000000000..44f6149c1307
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2019 MediaTek Inc.
+ */
+
+/dts-v1/;
+#include "mt8173-elm-hana.dtsi"
+
+/ {
+	model = "Google Hanawl";
+	compatible = "google,hana-rev7", "mediatek,mt8173";
+};
+
+&cpu_thermal {
+	trips {
+		cpu_crit: cpu_crit0 {
+			temperature = <100000>;
+			type = "critical";
+		};
+	};
+};
+
+&gpio_keys {
+	/delete-node/tablet_mode;
+	/delete-node/volume_down;
+	/delete-node/volume_up;
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
new file mode 100644
index 000000000000..c234296755e1
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2016 MediaTek Inc.
+ */
+
+/dts-v1/;
+#include "mt8173-elm-hana.dtsi"
+
+/ {
+	model = "Google Hana";
+	compatible = "google,hana-rev6", "google,hana-rev5",
+		     "google,hana-rev4", "google,hana-rev3",
+		     "google,hana", "mediatek,mt8173";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
new file mode 100644
index 000000000000..bdcd35cecad9
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
@@ -0,0 +1,70 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2016 MediaTek Inc.
+ */
+
+#include "mt8173-elm.dtsi"
+
+&i2c0 {
+	clock-frequency = <200000>;
+};
+
+&i2c3 {
+	touchscreen2: touchscreen@34 {
+		compatible = "melfas,mip4_ts";
+		reg = <0x34>;
+		interrupt-parent = <&pio>;
+		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	/*
+	 * Lenovo 100e Chromebook 2nd Gen (MTK) and Lenovo 300e Chromebook 2nd
+	 * Gen (MTK) are using synaptics touchscreen (hid-over-i2c driver) as a
+	 * second source touchscreen.
+	 */
+	touchscreen3: touchscreen@20 {
+		compatible = "hid-over-i2c";
+		reg = <0x20>;
+		hid-descr-addr = <0x0020>;
+		interrupt-parent = <&pio>;
+		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
+&i2c4 {
+	/*
+	 * Lenovo 100e Chromebook 2nd Gen (MTK) and Lenovo 300e Chromebook 2nd
+	 * Gen (MTK) are using synaptics trackpad (hid-over-i2c driver) as a
+	 * second source trackpad.
+	 */
+	trackpad2: trackpad@2c {
+		compatible = "hid-over-i2c";
+		interrupt-parent = <&pio>;
+		interrupts = <117 IRQ_TYPE_LEVEL_LOW>;
+		reg = <0x2c>;
+		hid-descr-addr = <0x0020>;
+		wakeup-source;
+	};
+};
+
+&mmc1 {
+	wp-gpios = <&pio 42 GPIO_ACTIVE_HIGH>;
+};
+
+&pio {
+	hdmi_mux_pins: hdmi_mux_pins {
+		pins2 {
+			pinmux = <MT8173_PIN_98_URTS1__FUNC_GPIO98>;
+			bias-pull-up;
+			output-high;
+		};
+	};
+
+	mmc1_pins_default: mmc1default {
+		pins_wp {
+			pinmux = <MT8173_PIN_42_DSI_TE__FUNC_GPIO42>;
+			input-enable;
+			bias-pull-up;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dts b/arch/arm64/boot/dts/mediatek/mt8173-elm.dts
new file mode 100644
index 000000000000..e9e4ac0b74b2
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2016 MediaTek Inc.
+ */
+
+/dts-v1/;
+#include "mt8173-elm.dtsi"
+
+/ {
+	model = "Google Elm";
+	compatible = "google,elm-rev8", "google,elm-rev7", "google,elm-rev6",
+		     "google,elm-rev5", "google,elm-rev4", "google,elm-rev3",
+		     "google,elm", "mediatek,mt8173";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
new file mode 100644
index 000000000000..a5a12b2599a4
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -0,0 +1,1173 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2016 MediaTek Inc.
+ */
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/gpio/gpio.h>
+#include "mt8173.dtsi"
+
+/ {
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0 0x40000000 0 0x80000000>;
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm0 0 1000000>;
+		power-supply = <&bl_fixed_reg>;
+		enable-gpios = <&pio 95 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&disp_pwm0_pins>;
+		status = "okay";
+	};
+
+	bl_fixed_reg: fixedregulator2 {
+		compatible = "regulator-fixed";
+		regulator-name = "bl_fixed";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		startup-delay-us = <1000>;
+		enable-active-high;
+		gpio = <&pio 32 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bl_fixed_pins>;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	gpio_keys: gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&gpio_keys_pins>;
+
+		lid {
+			label = "Lid";
+			gpios = <&pio 69 GPIO_ACTIVE_LOW>;
+			linux,code = <SW_LID>;
+			linux,input-type = <EV_SW>;
+			gpio-key,wakeup;
+		};
+
+		power {
+			label = "Power";
+			gpios = <&pio 14 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_POWER>;
+			debounce-interval = <30>;
+			gpio-key,wakeup;
+		};
+
+		tablet_mode {
+			label = "Tablet_mode";
+			gpios = <&pio 121 GPIO_ACTIVE_HIGH>;
+			linux,code = <SW_TABLET_MODE>;
+			linux,input-type = <EV_SW>;
+			gpio-key,wakeup;
+		};
+
+		volume_down {
+			label = "Volume_down";
+			gpios = <&pio 123 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEDOWN>;
+		};
+
+		volume_up {
+			label = "Volume_up";
+			gpios = <&pio 124 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEUP>;
+		};
+	};
+
+	panel: panel {
+		compatible = "lg,lp120up1";
+		power-supply = <&panel_fixed_3v3>;
+		ddc-i2c-bus = <&i2c0>;
+		backlight = <&backlight>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&ps8640_out>;
+			};
+		};
+	};
+
+	panel_fixed_3v3: regulator1 {
+		compatible = "regulator-fixed";
+		regulator-name = "PANEL_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&pio 41 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&panel_fixed_pins>;
+	};
+
+	ps8640_fixed_1v2: regulator2 {
+		compatible = "regulator-fixed";
+		regulator-name = "PS8640_1V2";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-enable-ramp-delay = <2000>;
+		enable-active-high;
+		regulator-boot-on;
+		gpio = <&pio 30 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ps8640_fixed_pins>;
+	};
+
+	sdio_fixed_3v3: fixedregulator0 {
+		compatible = "regulator-fixed";
+		regulator-name = "3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&pio 85 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdio_fixed_3v3_pins>;
+	};
+
+	sound: sound {
+		compatible = "mediatek,mt8173-rt5650";
+		mediatek,audio-codec = <&rt5650 &hdmi0>;
+		mediatek,platform = <&afe>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&aud_i2s2>;
+
+		mediatek,mclk = <1>;
+		codec-capture {
+			sound-dai = <&rt5650 1>;
+		};
+	};
+
+	hdmicon: connector {
+		compatible = "hdmi-connector";
+		label = "hdmi";
+		type = "a";
+		ddc-i2c-bus = <&hdmiddc0>;
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&hdmi0_out>;
+			};
+		};
+	};
+};
+
+&cec {
+	status = "okay";
+};
+
+&cpu0 {
+	proc-supply = <&mt6397_vpca15_reg>;
+};
+
+&cpu1 {
+	proc-supply = <&mt6397_vpca15_reg>;
+};
+
+&cpu2 {
+	proc-supply = <&da9211_vcpu_reg>;
+	sram-supply = <&mt6397_vsramca7_reg>;
+};
+
+&cpu3 {
+	proc-supply = <&da9211_vcpu_reg>;
+	sram-supply = <&mt6397_vsramca7_reg>;
+};
+
+&cpu_thermal {
+	sustainable-power = <4500>; /* milliwatts */
+	trips {
+		threshold: trip-point0 {
+			temperature = <60000>;
+		};
+
+		target: trip-point1 {
+			temperature = <65000>;
+		};
+	};
+};
+
+&dsi0 {
+	status = "okay";
+	ports {
+		port {
+			dsi0_out: endpoint {
+				remote-endpoint = <&ps8640_in>;
+			};
+		};
+	};
+};
+
+&dpi0 {
+	status = "okay";
+};
+
+&hdmi0 {
+	status = "okay";
+	ports {
+		port@1 {
+			reg = <1>;
+
+			hdmi0_out: endpoint {
+				remote-endpoint = <&hdmi_connector_in>;
+			};
+		};
+	};
+};
+
+&hdmi_phy {
+	status = "okay";
+	mediatek,ibias = <0xc>;
+};
+
+&i2c0 {
+	status = "okay";
+
+	rt5650: audio-codec@1a {
+		compatible = "realtek,rt5650";
+		reg = <0x1a>;
+		avdd-supply = <&mt6397_vgp1_reg>;
+		cpvdd-supply = <&mt6397_vcama_reg>;
+		interrupt-parent = <&pio>;
+		interrupts = <3 IRQ_TYPE_EDGE_BOTH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rt5650_irq>;
+		#sound-dai-cells = <1>;
+		realtek,dmic1-data-pin = <2>;
+		realtek,jd-mode = <2>;
+	};
+
+	ps8640: edp-bridge@8 {
+		compatible = "parade,ps8640";
+		reg = <0x8>;
+		powerdown-gpios = <&pio 127 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&pio 115 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ps8640_pins>;
+		vdd12-supply = <&ps8640_fixed_1v2>;
+		vdd33-supply = <&mt6397_vgp2_reg>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				ps8640_in: endpoint {
+					remote-endpoint = <&dsi0_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				ps8640_out: endpoint {
+					remote-endpoint = <&panel_in>;
+				};
+			};
+		};
+	};
+};
+
+&i2c1 {
+	clock-frequency = <1500000>;
+	status = "okay";
+
+	da9211: da9211@68 {
+		compatible = "dlg,da9211";
+		reg = <0x68>;
+		interrupt-parent = <&pio>;
+		interrupts = <15 IRQ_TYPE_LEVEL_LOW>;
+
+		regulators {
+			da9211_vcpu_reg: BUCKA {
+				regulator-name = "VBUCKA";
+				regulator-min-microvolt = < 700000>;
+				regulator-max-microvolt = <1310000>;
+				regulator-min-microamp  = <2000000>;
+				regulator-max-microamp  = <4400000>;
+				regulator-ramp-delay = <10000>;
+				regulator-always-on;
+				regulator-allowed-modes = <0 1>;
+			};
+
+			da9211_vgpu_reg: BUCKB {
+				regulator-name = "VBUCKB";
+				regulator-min-microvolt = < 700000>;
+				regulator-max-microvolt = <1310000>;
+				regulator-min-microamp  = <2000000>;
+				regulator-max-microamp  = <3000000>;
+				regulator-ramp-delay = <10000>;
+			};
+		};
+	};
+};
+
+&i2c2 {
+	status = "okay";
+
+	tpm: tpm@20 {
+		compatible = "infineon,slb9645tt";
+		reg = <0x20>;
+		powered-while-suspended;
+	};
+};
+
+&i2c3 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	touchscreen: touchscreen@10 {
+		compatible = "elan,ekth3500";
+		reg = <0x10>;
+		interrupt-parent = <&pio>;
+		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
+&i2c4 {
+	clock-frequency = <400000>;
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&trackpad_irq>;
+
+	trackpad: trackpad@15 {
+		compatible = "elan,ekth3000";
+		interrupt-parent = <&pio>;
+		interrupts = <117 IRQ_TYPE_LEVEL_LOW>;
+		reg = <0x15>;
+		vcc-supply = <&mt6397_vgp6_reg>;
+		wakeup-source;
+	};
+};
+
+&mipi_tx0 {
+	status = "okay";
+};
+
+&mmc0 {
+	status = "okay";
+	pinctrl-names = "default", "state_uhs";
+	pinctrl-0 = <&mmc0_pins_default>;
+	pinctrl-1 = <&mmc0_pins_uhs>;
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	cap-mmc-hw-reset;
+	hs400-ds-delay = <0x14015>;
+	mediatek,hs200-cmd-int-delay=<30>;
+	mediatek,hs400-cmd-int-delay=<14>;
+	mediatek,hs400-cmd-resp-sel-rising;
+	vmmc-supply = <&mt6397_vemc_3v3_reg>;
+	vqmmc-supply = <&mt6397_vio18_reg>;
+	assigned-clocks = <&topckgen CLK_TOP_MSDC50_0_SEL>;
+	assigned-clock-parents = <&topckgen CLK_TOP_MSDCPLL_D2>;
+	non-removable;
+};
+
+&mmc1 {
+	status = "okay";
+	pinctrl-names = "default", "state_uhs";
+	pinctrl-0 = <&mmc1_pins_default>;
+	pinctrl-1 = <&mmc1_pins_uhs>;
+	bus-width = <4>;
+	max-frequency = <200000000>;
+	cap-sd-highspeed;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	cd-gpios = <&pio 1 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&mt6397_vmch_reg>;
+	vqmmc-supply = <&mt6397_vmc_reg>;
+};
+
+&mmc3 {
+	status = "okay";
+	pinctrl-names = "default", "state_uhs";
+	pinctrl-0 = <&mmc3_pins_default>;
+	pinctrl-1 = <&mmc3_pins_uhs>;
+	bus-width = <4>;
+	max-frequency = <200000000>;
+	cap-sd-highspeed;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	keep-power-in-suspend;
+	enable-sdio-wakeup;
+	cap-sdio-irq;
+	vmmc-supply = <&sdio_fixed_3v3>;
+	vqmmc-supply = <&mt6397_vgp3_reg>;
+	non-removable;
+	cap-power-off-card;
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	btmrvl: btmrvl@2 {
+		compatible = "marvell,sd8897-bt";
+		reg = <2>;
+		interrupt-parent = <&pio>;
+		interrupts = <119 IRQ_TYPE_LEVEL_LOW>;
+		marvell,wakeup-pin = /bits/ 16 <0x0d>;
+		marvell,wakeup-gap-ms = /bits/ 16 <0x64>;
+	};
+
+	mwifiex: mwifiex@1 {
+		compatible = "marvell,sd8897";
+		reg = <1>;
+		interrupt-parent = <&pio>;
+		interrupts = <38 IRQ_TYPE_LEVEL_LOW>;
+		marvell,wakeup-pin = <3>;
+	};
+};
+
+&nor_flash {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&nor_gpio1_pins>;
+	bus-width = <8>;
+	max-frequency = <50000000>;
+	non-removable;
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+	};
+};
+
+&pio {
+	gpio-line-names = "EC_INT_1V8",
+			  "SD_CD_L",
+			  "ALC5514_IRQ",
+			  "ALC5650_IRQ",
+			  /*
+			   * AP_FLASH_WP_L is crossystem ABI. Schematics
+			   * call it SFWP_B.
+			   */
+			  "AP_FLASH_WP_L",
+			  "SFIN",
+			  "SFCS0",
+			  "SFHOLD",
+			  "SFOUT",
+			  "SFCK",
+			  "WRAP_EVENT_S_EINT10",
+			  "PMU_INT",
+			  "I2S2_WS_ALC5650",
+			  "I2S2_BCK_ALC5650",
+			  "PWR_BTN_1V8",
+			  "DA9212_IRQ",
+			  "IDDIG",
+			  "WATCHDOG",
+			  "CEC",
+			  "HDMISCK",
+			  "HDMISD",
+			  "HTPLG",
+			  "MSDC3_DAT0",
+			  "MSDC3_DAT1",
+			  "MSDC3_DAT2",
+			  "MSDC3_DAT3",
+			  "MSDC3_CLK",
+			  "MSDC3_CMD",
+			  "USB_C0_OC_FLAGB",
+			  "USBA_OC1_L",
+			  "PS8640_1V2_ENABLE",
+			  "THERM_ALERT_N",
+			  "PANEL_LCD_POWER_EN",
+			  "ANX7688_CHIP_PD_C",
+			  "EC_IN_RW_1V8",
+			  "ANX7688_1V_EN_C",
+			  "USB_DP_HPD_C",
+			  "TPM_DAVINT_N",
+			  "MARVELL8897_IRQ",
+			  "EN_USB_A0_PWR",
+			  "USBA_A0_OC_L",
+			  "EN_PP3300_DX_EDP",
+			  "",
+			  "SOC_I2C2_1V8_SDA_400K",
+			  "SOC_I2C2_1V8_SCL_400K",
+			  "SOC_I2C0_1V8_SDA_400K",
+			  "SOC_I2C0_1V8_SCL_400K",
+			  "EMMC_ID1",
+			  "EMMC_ID0",
+			  "MEM_CONFIG3",
+			  "EMMC_ID2",
+			  "MEM_CONFIG1",
+			  "MEM_CONFIG2",
+			  "BRD_ID2",
+			  "MEM_CONFIG0",
+			  "BRD_ID0",
+			  "BRD_ID1",
+			  "EMMC_DAT0",
+			  "EMMC_DAT1",
+			  "EMMC_DAT2",
+			  "EMMC_DAT3",
+			  "EMMC_DAT4",
+			  "EMMC_DAT5",
+			  "EMMC_DAT6",
+			  "EMMC_DAT7",
+			  "EMMC_CLK",
+			  "EMMC_CMD",
+			  "EMMC_RCLK",
+			  "PLT_RST_L",
+			  "LID_OPEN_1V8_L",
+			  "AUDIO_SPI_MISO_R",
+			  "",
+			  "AC_OK_1V8",
+			  "SD_DATA0",
+			  "SD_DATA1",
+			  "SD_DATA2",
+			  "SD_DATA3",
+			  "SD_CLK",
+			  "SD_CMD",
+			  "PWRAP_SPI0_MI",
+			  "PWRAP_SPI0_MO",
+			  "PWRAP_SPI0_CK",
+			  "PWRAP_SPI0_CSN",
+			  "",
+			  "",
+			  "WIFI_PDN",
+			  "RTC32K_1V8",
+			  "DISP_PWM0",
+			  "TOUCHSCREEN_INT_L",
+			  "",
+			  "SRCLKENA0",
+			  "SRCLKENA1",
+			  "PS8640_MODE_CONF",
+			  "TOUCHSCREEN_RESET_R",
+			  "PLATFORM_PROCHOT_L",
+			  "PANEL_POWER_EN",
+			  "REC_MODE_L",
+			  "EC_FW_UPDATE_L",
+			  "ACCEL2_INT_L",
+			  "HDMI_DP_INT",
+			  "ACCELGYRO3_INT_L",
+			  "ACCELGYRO4_INT_L",
+			  "SPI_EC_CLK",
+			  "SPI_EC_MI",
+			  "SPI_EC_MO",
+			  "SPI_EC_CSN",
+			  "SOC_I2C3_1V8_SDA_400K",
+			  "SOC_I2C3_1V8_SCL_400K",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "PS8640_SYSRSTN_1V8",
+			  "APIN_MAX98090_DOUT2",
+			  "TP_INT_1V8_L_R",
+			  "RST_USB_HUB_R",
+			  "BT_WAKE_L",
+			  "ACCEL1_INT_L",
+			  "TABLET_MODE_L",
+			  "",
+			  "V_UP_IN_L_R",
+			  "V_DOWN_IN_L_R",
+			  "SOC_I2C1_1V8_SDA_1M",
+			  "SOC_I2C1_1V8_SCL_1M",
+			  "PS8640_PDN_1V8",
+			  "MAX98090_LRCLK",
+			  "MAX98090_BCLK",
+			  "MAX98090_MCLK",
+			  "APOUT_MAX98090_DIN",
+			  "APIN_MAX98090_DOUT",
+			  "SOC_I2C4_1V8_SDA_400K",
+			  "SOC_I2C4_1V8_SCL_400K";
+
+	aud_i2s2: aud_i2s2 {
+		pins1 {
+			pinmux = <MT8173_PIN_128_I2S0_LRCK__FUNC_I2S1_WS>,
+				 <MT8173_PIN_129_I2S0_BCK__FUNC_I2S1_BCK>,
+				 <MT8173_PIN_130_I2S0_MCK__FUNC_I2S1_MCK>,
+				 <MT8173_PIN_131_I2S0_DATA0__FUNC_I2S1_DO_1>,
+				 <MT8173_PIN_12_EINT12__FUNC_I2S2_WS>,
+				 <MT8173_PIN_13_EINT13__FUNC_I2S2_BCK>,
+				 <MT8173_PIN_132_I2S0_DATA1__FUNC_I2S2_DI_2>;
+			bias-pull-down;
+		};
+	};
+
+	bl_fixed_pins: bl_fixed_pins {
+		pins1 {
+			pinmux = <MT8173_PIN_32_UTXD2__FUNC_GPIO32>;
+			output-low;
+		};
+	};
+
+	bt_wake_pins: bt_wake_pins {
+		pins1 {
+			pinmux = <MT8173_PIN_119_KPROW0__FUNC_GPIO119>;
+			bias-pull-up;
+		};
+	};
+
+	disp_pwm0_pins: disp_pwm0_pins {
+		pins1 {
+			pinmux = <MT8173_PIN_87_DISP_PWM0__FUNC_DISP_PWM0>;
+			output-low;
+		};
+	};
+
+	gpio_keys_pins: gpio_keys_pins {
+		volume_pins {
+			pinmux = <MT8173_PIN_123_KPCOL1__FUNC_GPIO123>,
+				 <MT8173_PIN_124_KPCOL2__FUNC_GPIO124>;
+			bias-pull-up;
+		};
+
+		tablet_mode_pins {
+			pinmux = <MT8173_PIN_121_KPROW2__FUNC_GPIO121>;
+			bias-pull-up;
+		};
+	};
+
+	hdmi_mux_pins: hdmi_mux_pins {
+		pins1 {
+			pinmux = <MT8173_PIN_36_DAISYNC__FUNC_GPIO36>;
+		};
+	};
+
+	i2c1_pins_a: i2c1 {
+		da9211_pins {
+			pinmux = <MT8173_PIN_15_EINT15__FUNC_GPIO15>;
+			bias-pull-up;
+		};
+	};
+
+	mmc0_pins_default: mmc0default {
+		pins_cmd_dat {
+			pinmux = <MT8173_PIN_57_MSDC0_DAT0__FUNC_MSDC0_DAT0>,
+				 <MT8173_PIN_58_MSDC0_DAT1__FUNC_MSDC0_DAT1>,
+				 <MT8173_PIN_59_MSDC0_DAT2__FUNC_MSDC0_DAT2>,
+				 <MT8173_PIN_60_MSDC0_DAT3__FUNC_MSDC0_DAT3>,
+				 <MT8173_PIN_61_MSDC0_DAT4__FUNC_MSDC0_DAT4>,
+				 <MT8173_PIN_62_MSDC0_DAT5__FUNC_MSDC0_DAT5>,
+				 <MT8173_PIN_63_MSDC0_DAT6__FUNC_MSDC0_DAT6>,
+				 <MT8173_PIN_64_MSDC0_DAT7__FUNC_MSDC0_DAT7>,
+				 <MT8173_PIN_66_MSDC0_CMD__FUNC_MSDC0_CMD>;
+			bias-pull-up;
+		};
+
+		pins_clk {
+			pinmux = <MT8173_PIN_65_MSDC0_CLK__FUNC_MSDC0_CLK>;
+			bias-pull-down;
+		};
+
+		pins_rst {
+			pinmux = <MT8173_PIN_68_MSDC0_RST___FUNC_MSDC0_RSTB>;
+			bias-pull-up;
+		};
+	};
+
+	mmc1_pins_default: mmc1default {
+		pins_cmd_dat {
+			pinmux = <MT8173_PIN_73_MSDC1_DAT0__FUNC_MSDC1_DAT0>,
+				 <MT8173_PIN_74_MSDC1_DAT1__FUNC_MSDC1_DAT1>,
+				 <MT8173_PIN_75_MSDC1_DAT2__FUNC_MSDC1_DAT2>,
+				 <MT8173_PIN_76_MSDC1_DAT3__FUNC_MSDC1_DAT3>,
+				 <MT8173_PIN_78_MSDC1_CMD__FUNC_MSDC1_CMD>;
+			input-enable;
+			drive-strength = <MTK_DRIVE_4mA>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		pins_clk {
+			pinmux = <MT8173_PIN_77_MSDC1_CLK__FUNC_MSDC1_CLK>;
+			bias-pull-down;
+			drive-strength = <MTK_DRIVE_4mA>;
+		};
+
+		pins_insert {
+			pinmux = <MT8173_PIN_1_EINT1__FUNC_GPIO1>;
+			bias-pull-up;
+		};
+	};
+
+	mmc3_pins_default: mmc3default {
+		pins_dat {
+			pinmux = <MT8173_PIN_22_MSDC3_DAT0__FUNC_MSDC3_DAT0>,
+				 <MT8173_PIN_23_MSDC3_DAT1__FUNC_MSDC3_DAT1>,
+				 <MT8173_PIN_24_MSDC3_DAT2__FUNC_MSDC3_DAT2>,
+				 <MT8173_PIN_25_MSDC3_DAT3__FUNC_MSDC3_DAT3>;
+			input-enable;
+			drive-strength = <MTK_DRIVE_8mA>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		pins_cmd {
+			pinmux = <MT8173_PIN_27_MSDC3_CMD__FUNC_MSDC3_CMD>;
+			input-enable;
+			drive-strength = <MTK_DRIVE_8mA>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		pins_clk {
+			pinmux = <MT8173_PIN_26_MSDC3_CLK__FUNC_MSDC3_CLK>;
+			bias-pull-down;
+			drive-strength = <MTK_DRIVE_8mA>;
+		};
+	};
+
+	mmc0_pins_uhs: mmc0 {
+		pins_cmd_dat {
+			pinmux = <MT8173_PIN_57_MSDC0_DAT0__FUNC_MSDC0_DAT0>,
+				 <MT8173_PIN_58_MSDC0_DAT1__FUNC_MSDC0_DAT1>,
+				 <MT8173_PIN_59_MSDC0_DAT2__FUNC_MSDC0_DAT2>,
+				 <MT8173_PIN_60_MSDC0_DAT3__FUNC_MSDC0_DAT3>,
+				 <MT8173_PIN_61_MSDC0_DAT4__FUNC_MSDC0_DAT4>,
+				 <MT8173_PIN_62_MSDC0_DAT5__FUNC_MSDC0_DAT5>,
+				 <MT8173_PIN_63_MSDC0_DAT6__FUNC_MSDC0_DAT6>,
+				 <MT8173_PIN_64_MSDC0_DAT7__FUNC_MSDC0_DAT7>,
+				 <MT8173_PIN_66_MSDC0_CMD__FUNC_MSDC0_CMD>;
+			input-enable;
+			drive-strength = <MTK_DRIVE_6mA>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+		};
+
+		pins_clk {
+			pinmux = <MT8173_PIN_65_MSDC0_CLK__FUNC_MSDC0_CLK>;
+			drive-strength = <MTK_DRIVE_6mA>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_01>;
+		};
+
+		pins_ds {
+			pinmux = <MT8173_PIN_67_MSDC0_DSL__FUNC_MSDC0_DSL>;
+			drive-strength = <MTK_DRIVE_10mA>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_01>;
+		};
+
+		pins_rst {
+			pinmux = <MT8173_PIN_68_MSDC0_RST___FUNC_MSDC0_RSTB>;
+			bias-pull-up;
+		};
+	};
+
+	mmc1_pins_uhs: mmc1 {
+		pins_cmd_dat {
+			pinmux = <MT8173_PIN_73_MSDC1_DAT0__FUNC_MSDC1_DAT0>,
+				 <MT8173_PIN_74_MSDC1_DAT1__FUNC_MSDC1_DAT1>,
+				 <MT8173_PIN_75_MSDC1_DAT2__FUNC_MSDC1_DAT2>,
+				 <MT8173_PIN_76_MSDC1_DAT3__FUNC_MSDC1_DAT3>,
+				 <MT8173_PIN_78_MSDC1_CMD__FUNC_MSDC1_CMD>;
+			input-enable;
+			drive-strength = <MTK_DRIVE_6mA>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		pins_clk {
+			pinmux = <MT8173_PIN_77_MSDC1_CLK__FUNC_MSDC1_CLK>;
+			drive-strength = <MTK_DRIVE_8mA>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+		};
+	};
+
+	mmc3_pins_uhs: mmc3 {
+		pins_dat {
+			pinmux = <MT8173_PIN_22_MSDC3_DAT0__FUNC_MSDC3_DAT0>,
+				 <MT8173_PIN_23_MSDC3_DAT1__FUNC_MSDC3_DAT1>,
+				 <MT8173_PIN_24_MSDC3_DAT2__FUNC_MSDC3_DAT2>,
+				 <MT8173_PIN_25_MSDC3_DAT3__FUNC_MSDC3_DAT3>;
+			input-enable;
+			drive-strength = <MTK_DRIVE_8mA>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		pins_cmd {
+			pinmux = <MT8173_PIN_27_MSDC3_CMD__FUNC_MSDC3_CMD>;
+			input-enable;
+			drive-strength = <MTK_DRIVE_8mA>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		pins_clk {
+			pinmux = <MT8173_PIN_26_MSDC3_CLK__FUNC_MSDC3_CLK>;
+			drive-strength = <MTK_DRIVE_8mA>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+		};
+	};
+
+	nor_gpio1_pins: nor {
+		pins1 {
+			pinmux = <MT8173_PIN_6_EINT6__FUNC_SFCS0>,
+				 <MT8173_PIN_7_EINT7__FUNC_SFHOLD>,
+				 <MT8173_PIN_8_EINT8__FUNC_SFIN>;
+			input-enable;
+			drive-strength = <MTK_DRIVE_4mA>;
+			bias-pull-up;
+		};
+
+		pins2 {
+			pinmux = <MT8173_PIN_5_EINT5__FUNC_SFOUT>;
+			drive-strength = <MTK_DRIVE_4mA>;
+			bias-pull-up;
+		};
+
+		pins_clk {
+			pinmux = <MT8173_PIN_9_EINT9__FUNC_SFCK>;
+			input-enable;
+			drive-strength = <MTK_DRIVE_4mA>;
+			bias-pull-up;
+		};
+	};
+
+	panel_fixed_pins: panel_fixed_pins {
+		pins1 {
+			pinmux = <MT8173_PIN_41_CMMCLK__FUNC_GPIO41>;
+		};
+	};
+
+	ps8640_pins: ps8640_pins {
+		pins1 {
+			pinmux = <MT8173_PIN_92_PCM_CLK__FUNC_GPIO92>,
+				 <MT8173_PIN_115_URTS0__FUNC_GPIO115>,
+				 <MT8173_PIN_127_LCM_RST__FUNC_GPIO127>;
+		};
+	};
+
+	ps8640_fixed_pins: ps8640_fixed_pins {
+		pins1 {
+			pinmux = <MT8173_PIN_30_URTS2__FUNC_GPIO30>;
+		};
+	};
+
+	rt5650_irq: rt5650_irq {
+		pins1 {
+			pinmux = <MT8173_PIN_3_EINT3__FUNC_GPIO3>;
+			bias-pull-down;
+		};
+	};
+
+	sdio_fixed_3v3_pins: sdio_fixed_3v3_pins {
+		pins1 {
+			pinmux = <MT8173_PIN_85_AUD_DAT_MOSI__FUNC_GPIO85>;
+			output-low;
+		};
+	};
+
+	spi_pins_a: spi1 {
+		pins1 {
+			pinmux = <MT8173_PIN_0_EINT0__FUNC_GPIO0>;
+			bias-pull-up;
+		};
+
+		pins_spi {
+			pinmux = <MT8173_PIN_102_MSDC2_DAT2__FUNC_SPI_CK_1_>,
+				 <MT8173_PIN_103_MSDC2_DAT3__FUNC_SPI_MI_1_>,
+				 <MT8173_PIN_104_MSDC2_CLK__FUNC_SPI_MO_1_>,
+				 <MT8173_PIN_105_MSDC2_CMD__FUNC_SPI_CS_1_>;
+			bias-disable;
+		};
+	};
+
+	trackpad_irq: trackpad_irq {
+		pins1 {
+			pinmux = <MT8173_PIN_117_URXD3__FUNC_GPIO117>;
+			input-enable;
+			bias-pull-up;
+		};
+	};
+
+	usb_pins: usb {
+		pins1 {
+			pinmux = <MT8173_PIN_101_MSDC2_DAT1__FUNC_GPIO101>;
+			output-high;
+			bias-disable;
+		};
+	};
+
+	wifi_wake_pins: wifi_wake_pins {
+		pins1 {
+			pinmux = <MT8173_PIN_38_CONN_RST__FUNC_GPIO38>;
+			bias-pull-up;
+		};
+	};
+};
+
+&pwm0 {
+	status = "okay";
+};
+
+&pwrap {
+	pmic: mt6397 {
+		compatible = "mediatek,mt6397";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		interrupt-parent = <&pio>;
+		interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+
+		clock: mt6397clock {
+			compatible = "mediatek,mt6397-clk";
+			#clock-cells = <1>;
+		};
+
+		pio6397: pinctrl {
+			compatible = "mediatek,mt6397-pinctrl";
+			pins-are-numbered;
+			gpio-controller;
+			#gpio-cells = <2>;
+		};
+
+		regulator: mt6397regulator {
+			compatible = "mediatek,mt6397-regulator";
+
+			mt6397_vpca15_reg: buck_vpca15 {
+				regulator-compatible = "buck_vpca15";
+				regulator-name = "vpca15";
+				regulator-min-microvolt = < 700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+				regulator-allowed-modes = <0 1>;
+			};
+
+			mt6397_vpca7_reg: buck_vpca7 {
+				regulator-compatible = "buck_vpca7";
+				regulator-name = "vpca7";
+				regulator-min-microvolt = < 700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12500>;
+				regulator-enable-ramp-delay = <115>;
+				regulator-always-on;
+			};
+
+			mt6397_vsramca15_reg: buck_vsramca15 {
+				regulator-compatible = "buck_vsramca15";
+				regulator-name = "vsramca15";
+				regulator-min-microvolt = < 700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+			};
+
+			mt6397_vsramca7_reg: buck_vsramca7 {
+				regulator-compatible = "buck_vsramca7";
+				regulator-name = "vsramca7";
+				regulator-min-microvolt = < 700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+			};
+
+			mt6397_vcore_reg: buck_vcore {
+				regulator-compatible = "buck_vcore";
+				regulator-name = "vcore";
+				regulator-min-microvolt = < 700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+			};
+
+			mt6397_vgpu_reg: buck_vgpu {
+				regulator-compatible = "buck_vgpu";
+				regulator-name = "vgpu";
+				regulator-min-microvolt = < 700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12500>;
+				regulator-enable-ramp-delay = <115>;
+			};
+
+			mt6397_vdrm_reg: buck_vdrm {
+				regulator-compatible = "buck_vdrm";
+				regulator-name = "vdrm";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1400000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+			};
+
+			mt6397_vio18_reg: buck_vio18 {
+				regulator-compatible = "buck_vio18";
+				regulator-name = "vio18";
+				regulator-min-microvolt = <1620000>;
+				regulator-max-microvolt = <1980000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+			};
+
+			mt6397_vtcxo_reg: ldo_vtcxo {
+				regulator-compatible = "ldo_vtcxo";
+				regulator-name = "vtcxo";
+				regulator-always-on;
+			};
+
+			mt6397_va28_reg: ldo_va28 {
+				regulator-compatible = "ldo_va28";
+				regulator-name = "va28";
+			};
+
+			mt6397_vcama_reg: ldo_vcama {
+				regulator-compatible = "ldo_vcama";
+				regulator-name = "vcama";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <218>;
+			};
+
+			mt6397_vio28_reg: ldo_vio28 {
+				regulator-compatible = "ldo_vio28";
+				regulator-name = "vio28";
+				regulator-always-on;
+			};
+
+			mt6397_vusb_reg: ldo_vusb {
+				regulator-compatible = "ldo_vusb";
+				regulator-name = "vusb";
+			};
+
+			mt6397_vmc_reg: ldo_vmc {
+				regulator-compatible = "ldo_vmc";
+				regulator-name = "vmc";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <218>;
+			};
+
+			mt6397_vmch_reg: ldo_vmch {
+				regulator-compatible = "ldo_vmch";
+				regulator-name = "vmch";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <218>;
+			};
+
+			mt6397_vemc_3v3_reg: ldo_vemc3v3 {
+				regulator-compatible = "ldo_vemc3v3";
+				regulator-name = "vemc_3v3";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <218>;
+			};
+
+			mt6397_vgp1_reg: ldo_vgp1 {
+				regulator-compatible = "ldo_vgp1";
+				regulator-name = "vcamd";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <240>;
+			};
+
+			mt6397_vgp2_reg: ldo_vgp2 {
+				regulator-compatible = "ldo_vgp2";
+				regulator-name = "vcamio";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <218>;
+			};
+
+			mt6397_vgp3_reg: ldo_vgp3 {
+				regulator-compatible = "ldo_vgp3";
+				regulator-name = "vcamaf";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <218>;
+			};
+
+			mt6397_vgp4_reg: ldo_vgp4 {
+				regulator-compatible = "ldo_vgp4";
+				regulator-name = "vgp4";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <218>;
+			};
+
+			mt6397_vgp5_reg: ldo_vgp5 {
+				regulator-compatible = "ldo_vgp5";
+				regulator-name = "vgp5";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-enable-ramp-delay = <218>;
+			};
+
+			mt6397_vgp6_reg: ldo_vgp6 {
+				regulator-compatible = "ldo_vgp6";
+				regulator-name = "vgp6";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <218>;
+				regulator-always-on;
+			};
+
+			mt6397_vibr_reg: ldo_vibr {
+				regulator-compatible = "ldo_vibr";
+				regulator-name = "vibr";
+				regulator-min-microvolt = <1300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <218>;
+			};
+		};
+
+		rtc: mt6397rtc {
+			compatible = "mediatek,mt6397-rtc";
+		};
+
+		syscfg_pctl_pmic: syscfg_pctl_pmic@c000 {
+			compatible = "mediatek,mt6397-pctl-pmic-syscfg",
+				     "syscon";
+			reg = <0 0x0000c000 0 0x0108>;
+		};
+	};
+};
+
+&spi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins_a>;
+	mediatek,pad-select = <1>;
+	status = "okay";
+	/* clients */
+	cros_ec: ec@0 {
+		compatible = "google,cros-ec-spi";
+		reg = <0x0>;
+		spi-max-frequency = <12000000>;
+		interrupt-parent = <&pio>;
+		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+		google,cros-ec-spi-msg-delay = <500>;
+
+		i2c_tunnel: i2c-tunnel0 {
+			compatible = "google,cros-ec-i2c-tunnel";
+			google,remote-bus = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			battery: sbs-battery@b {
+				compatible = "sbs,sbs-battery";
+				reg = <0xb>;
+				sbs,i2c-retry-count = <2>;
+				sbs,poll-retry-count = <1>;
+			};
+		};
+	};
+};
+
+&ssusb {
+	dr_mode = "host";
+	wakeup-source;
+	vusb33-supply = <&mt6397_vusb_reg>;
+	status = "okay";
+};
+
+&thermal {
+	bank0-supply = <&mt6397_vpca15_reg>;
+	bank1-supply = <&da9211_vcpu_reg>;
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&usb_host {
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb_pins>;
+	vusb33-supply = <&mt6397_vusb_reg>;
+	status = "okay";
+};
+
+#include <arm/cros-ec-keyboard.dtsi>
diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 2b7f566fb407..3e34396478dd 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -1440,4 +1440,3 @@ larb5: larb@19001000 {
 		};
 	};
 };
-
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
