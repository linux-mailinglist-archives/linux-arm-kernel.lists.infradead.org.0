Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAC675409
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/uYclrCQXvvL6U4BuKpnrItlDkYlWX0PDNbu+aPU80=; b=q8dLYzU8qaK/jA
	o8NNpBz3XF4lXnS91ivrCXSI7kdIwA1R5nUdl7pTjpDZ2hCussZYOTWlnEHtdBj9O1kWOuF0FD0L8
	pmJ4DZ3ls79TlcPfm6Y/GKrt5JtPxxR29J9VG3sKbWTP3TGGf/7YMXDAEDHVBrV6d4ehFPb/RJ5Ma
	RuqzRtMSozdtrSTFvnFWiOIIBAVCeDnUdGemaPYrp6dUhu6ZLv2gcngYbeIIcEJlyxF0SzGfWAVPb
	EmdeFLQLDa5vwr5cteJhht+HpZrki1U/voxNwrUku0vdUe+TiWRtdPhP4cDNZULxPLpmDYyEUOsX9
	aa0af4DDRmyP/d8Oa0Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgc3-0004nk-RY; Thu, 25 Jul 2019 16:29:03 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgZy-0003gI-NU
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:26:57 +0000
Received: by mail-pl1-x643.google.com with SMTP id b7so23646740pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=80tYmqL3jsBkPxlNOR2hEGSylp1Ty1hHpS2HOV6h4L4=;
 b=BSc9E3yw8hMxmGPupKffzvPgXMBidX+DoggMrjJLEhD3et8Z0noPluiB2SQ8kXOPIn
 rulTwLWVtdPeTRYEnzHsTUOBxD3bo41hIgcICFJlKZxC0kFtHi4pg1p53Fgj+zW4HcCw
 hVrWlSG/J7D4DF4AkYFGoS4/udMR6y6BW7MTk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=80tYmqL3jsBkPxlNOR2hEGSylp1Ty1hHpS2HOV6h4L4=;
 b=uHXtoqwoy579FifaOAs2qZ8dXvbU/zw+u5x95bFeLhdt/WWMQWW/5KqGPpnq6fbHF/
 ko/uaziYiygunBCILzD5HVR1uswQWGFl9BkdGcFldWA/3anDboySiDtMZ5yL0bQOlisX
 ho4xzQWAlTklivZsMX7+/43fvwnA1t+I7Yad4DpptX97hqvLdXTWzD0jebukftlws6FP
 sV68xOjmDPqwlde4ZbS+KliL3niKFrW9TTlyuo88KiIWxo74aolEwGtWAEceBI957dVt
 +aWZt4ZzB5NDDAbzzKPRHAprQR3iykqWZSC0/Id7wPxi69437FgpQ4HLpKy0dBSPj247
 hwPQ==
X-Gm-Message-State: APjAAAUDkUg7ZNuq00PNEHeV3rcJS7X/f5VgUXSZ7hHHwlmmgFq/37Gf
 CeUmh3vUCu3PezPwXAO+mBv45A==
X-Google-Smtp-Source: APXvYqyinXUcCESrzCe4P2zNIO4kXjVoFJAci/FGWEiiLX6iqEUvhXiHsqA55CKQHer8T+G79bHTMA==
X-Received: by 2002:a17:902:f095:: with SMTP id
 go21mr93535115plb.58.1564072014094; 
 Thu, 25 Jul 2019 09:26:54 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id p187sm77749670pfg.89.2019.07.25.09.26.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:26:53 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 4/5] ARM: dts: rockchip: add veyron-fievel board
Date: Thu, 25 Jul 2019 09:26:41 -0700
Message-Id: <20190725162642.250709-5-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
In-Reply-To: <20190725162642.250709-1-mka@chromium.org>
References: <20190725162642.250709-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_092654_868185_E650FC91 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Also known as AOpen Chromebox Mini.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v3:
- patch added to the series
---
 arch/arm/boot/dts/Makefile                 |   1 +
 arch/arm/boot/dts/rk3288-veyron-fievel.dts | 299 +++++++++++++++++++++
 2 files changed, 300 insertions(+)
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-fievel.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 9159fa2cea90..9fd1e075c624 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -919,6 +919,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3288-tinker.dtb \
 	rk3288-tinker-s.dtb \
 	rk3288-veyron-brain.dtb \
+	rk3288-veyron-fievel.dtb \
 	rk3288-veyron-jaq.dtb \
 	rk3288-veyron-jerry.dtb \
 	rk3288-veyron-mickey.dtb \
diff --git a/arch/arm/boot/dts/rk3288-veyron-fievel.dts b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
new file mode 100644
index 000000000000..a9716fc3f50a
--- /dev/null
+++ b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
@@ -0,0 +1,299 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Google Veyron Fievel Rev 0+ board device tree source
+ *
+ * Copyright 2016 Google, Inc
+ */
+
+/dts-v1/;
+#include "rk3288-veyron.dtsi"
+#include "rk3288-veyron-analog-audio.dtsi"
+
+/ {
+	model = "Google Fievel";
+	compatible = "google,veyron-fievel-rev8", "google,veyron-fievel-rev7",
+		     "google,veyron-fievel-rev6", "google,veyron-fievel-rev5",
+		     "google,veyron-fievel-rev4", "google,veyron-fievel-rev3",
+		     "google,veyron-fievel-rev2", "google,veyron-fievel-rev1",
+		     "google,veyron-fievel-rev0", "google,veyron-fievel",
+		     "google,veyron", "rockchip,rk3288";
+
+	/delete-node/ bt-activity;
+
+	ext_gmac: external-gmac-clock {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <125000000>;
+		clock-output-names = "ext_gmac";
+	};
+
+	/*
+	 * vcc33_pmuio and vcc33_io is sourced directly from vcc33_sys,
+	 * enabled by vcc_18
+	 */
+	vcc33_io: vcc33-io {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-name = "vcc33_io";
+	};
+
+	vcc5_host1: vcc5-host1-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio5 RK_PC1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&hub_usb1_pwr_en>;
+		regulator-name = "vcc5_host1";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc5_host2: vcc5-host2-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio5 RK_PC2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&hub_usb2_pwr_en>;
+		regulator-name = "vcc5_host2";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc5v_otg: vcc5v-otg-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_otg_pwr_en>;
+		regulator-name = "vcc5_otg";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+};
+
+&gmac {
+	status = "okay";
+
+	assigned-clocks = <&cru SCLK_MAC>;
+	assigned-clock-parents = <&ext_gmac>;
+	clock_in_out = "input";
+	phy-handle = <&ethphy>;
+	phy-mode = "rgmii";
+	phy-supply = <&vcc33_lan>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii_pins>, <&phy_rst>, <&phy_pmeb>, <&phy_int>;
+	resets = <&cru SRST_MAC>;
+	reset-names = "stmmaceth";
+	rx_delay = <0x10>;
+	tx_delay = <0x30>;
+
+	/* Reset for the RTL8211 PHY which requires a 10-ms reset pulse (low)
+	 * with a 30ms settling time. */
+	snps,reset-gpio = <&gpio4 RK_PB0 0>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 10000 30000>;
+	wakeup-source;
+
+	mdio0 {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy: ethernet-phy@1 {
+			reg = <1>;
+		};
+	};
+};
+
+&rk808 {
+	dvs-gpios = <&gpio7 RK_PB4 GPIO_ACTIVE_HIGH>,
+		    <&gpio7 RK_PB7 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pmic_int_l &dvs_1 &dvs_2>;
+
+	vcc6-supply = <&vcc33_sys>;
+	vcc10-supply = <&vcc33_sys>;
+	vcc11-supply = <&vcc_5v>;
+	vcc12-supply = <&vcc33_sys>;
+
+	regulators {
+		/delete-node/ LDO_REG1;
+
+		/* According to the schematic, vcc18_lcdt is for
+		 * HDMI_AVDD_1V8
+		 */
+		vcc18_lcdt: LDO_REG2 {
+			regulator-always-on;
+			regulator-boot-on;
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-name = "vdd18_lcdt";
+			regulator-state-mem {
+				regulator-on-in-suspend;
+				regulator-suspend-microvolt = <1800000>;
+			};
+		};
+
+		/* This is not a pwren anymore, but the real power supply,
+		 * vdd10_lcd for HDMI_AVDD_1V0
+		 */
+		vdd10_lcd: LDO_REG7 {
+			regulator-always-on;
+			regulator-boot-on;
+			regulator-min-microvolt = <1000000>;
+			regulator-max-microvolt = <1000000>;
+			regulator-name = "vdd10_lcd";
+			regulator-state-mem {
+				regulator-on-in-suspend;
+				regulator-suspend-microvolt = <1000000>;
+			};
+
+		};
+
+		/* for usb camera */
+		vcc33_ccd: LDO_REG8 {
+			regulator-always-on;
+			regulator-boot-on;
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-name = "vcc33_ccd";
+			regulator-state-mem {
+				regulator-on-in-suspend;
+				regulator-suspend-microvolt = <3300000>;
+			};
+		};
+
+		vcc33_lan: SWITCH_REG2 {
+			regulator-name = "vcc33_lan";
+		};
+	};
+};
+
+&sdio0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	btmrvl: btmrvl@2 {
+		compatible = "marvell,sd8897-bt";
+		reg = <2>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PD7 IRQ_TYPE_LEVEL_LOW>;
+		marvell,wakeup-pin = /bits/ 16 <13>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake>;
+	};
+};
+
+&vcc50_hdmi {
+	enable-active-high;
+	gpio = <&gpio5 RK_PC3 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&vcc50_hdmi_en>;
+};
+
+&vcc_5v {
+	enable-active-high;
+	gpio = <&gpio7 RK_PC5 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&drv_5v>;
+};
+
+&pinctrl {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <
+		/* Common for sleep and wake, but no owners */
+		&ddr0_retention
+		&ddrio_pwroff
+		&global_pwroff
+
+		/* Wake only */
+		&bt_dev_wake_awake
+		&pwr_led1_on
+
+		/* For usb bc1.2 */
+		&usb_otg_ilim_sel
+		&usb_usb_ilim_sel
+	>;
+
+	pinctrl-1 = <
+		/* Common for sleep and wake, but no owners */
+		&ddr0_retention
+		&ddrio_pwroff
+		&global_pwroff
+
+		/* Sleep only */
+		&bt_dev_wake_sleep
+		&pwr_led1_blink
+	>;
+
+	buck-5v {
+		drv_5v: drv-5v {
+			rockchip,pins = <7 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	gmac {
+		phy_rst: phy-rst {
+			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_output_high>;
+		};
+
+		phy_pmeb: phy-pmeb {
+			rockchip,pins = <0 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		phy_int: phy-int {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	hdmi {
+		vcc50_hdmi_en: vcc50-hdmi-en {
+			rockchip,pins = <5 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	leds {
+		pwr_led1_on: pwr-led1-on {
+			rockchip,pins = <7 RK_PA3 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+
+		pwr_led1_blink: pwr-led1-blink {
+			rockchip,pins = <7 RK_PA3 RK_FUNC_GPIO &pcfg_output_high>;
+		};
+	};
+
+	pmic {
+		dvs_1: dvs-1 {
+			rockchip,pins = <7 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		dvs_2: dvs-2 {
+			rockchip,pins = <7 RK_PB7 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	usb-bc12 {
+		usb_otg_ilim_sel: usb-otg-ilim-sel {
+			rockchip,pins = <6 RK_PC1 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+
+		usb_usb_ilim_sel: usb-usb-ilim-sel {
+			rockchip,pins = <5 RK_PB7 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+	};
+
+	usb-host {
+		hub_usb1_pwr_en: hub_usb1_pwr_en {
+			rockchip,pins = <5 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		hub_usb2_pwr_en: hub_usb2_pwr_en {
+			rockchip,pins = <5 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		usb_otg_pwr_en: usb_otg_pwr_en {
+			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
