Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FF3A072A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 18:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vBCjwsxuml7YBj+G1P5t/BHLBaXF0OIPlVJ3H4XE+yM=; b=TgN72/5ecvf39y4g387BlNOQFV
	ycy9u6HC1/FeARCMb4SmpRK/ZzGO4LlW8OapOpx8RuGCYmOVKD8d6ukvxJwP9D9IzQ+i2u4hOFGRN
	NYBQTjO4w8x4mTN1Z9Wfo5f+MOa0Lw+t7H50aWuHnVNvjrjtEJCgeNBOf/zYN1iHHk6i9vd1m7vy3
	aoYOnme97DjgTmG++wae/t0OvSrTzzSFAT/1f3gH26JRxu6BAi2hg2HekHCSPD/5cWS8dJiMPKinB
	lFkGYuAAK00i4ra5q4Aw0lbRciLisHYfNj819nrzzvT3Kk2CNOwtpZOnTxzybW1YUlwjegKgEhmXS
	Dn6daDNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i30gj-0007e6-2m; Wed, 28 Aug 2019 16:20:49 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i30g0-0006BO-HE
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 16:20:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id j16so394648wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 09:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6CPxEzCPe+o9sMen7nYO3ZlJyfdH9Q3b+f/rFJ1T2pI=;
 b=QCOO+UNRCCvVuf4EKPxQXeLZNKvq6i7ZUgCu4UpsHCrkUUPaF1N3SfADgtadxUiTq/
 AFQhnV52+KXMbzRxV/MvikLx7u5un+e99BgMaguyHcPqwrUQ/845bFI6VWRlih9yxs0w
 yZ4Fd/mYo+9ZZ5APmZMTW0c6nn7vXi9QjlUEyItj6mx8HCpvXzMQZjKQHjjNu9AqXv/v
 mWNGRmsBieyMGSTstp1SEC3FlbPxh5pJeMLl0Tyr/9r4KPlNQuwN5yLIpYeBPrHmw95/
 /kxJzPkTd5OV3mWd3UIIfvrxeSxjXP0LbFn7I5zLwQq+9icQDqlHiymtR8D24jPUef9q
 hl7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6CPxEzCPe+o9sMen7nYO3ZlJyfdH9Q3b+f/rFJ1T2pI=;
 b=jWI4LVaEVGhc5yfoT5U2dB+6LKX3P252GWQS/aSuG9Zu8ihQ/eHYBuMMHSLGxqMXfP
 Hqg2ZkVviO+gmnuB38OkOqcsZ7LcoN80dS5HZgg7ojjjOs8whg6i9u/oCUPZ5OBr6ZQs
 uvksMR/pqtvgOD4fMmYAkLGGS3wGw2fL22LX0inzxemmx1FVBA/5XH+7LiWdgkUDkKLy
 iUmRkz5H++atAJK816u+n6cLvkU8/GsaxXfc/Djtc82+Y4oXH2Fk4QXj+FpnpNAWU5+D
 Tdec8wFAa21eeQ+BgriAgJ80LB+WQhLAiSpMQm0Xdugp++GZLdjgbL9zsI+8SI9qZrNi
 hweA==
X-Gm-Message-State: APjAAAXfluZUXYHGDKTlHmcEJ4KKK5zIv8uPMTRLlXUp4xgwt3Y1kzsM
 yb6u+c1kuyVf32Paw0UtrCU=
X-Google-Smtp-Source: APXvYqz4mvANLqBJ6iYHhOnO7VYRJGveLbT37oi03HXIbLORmhrAG/UL+NaIAThvSHk2ydukz4ZAcw==
X-Received: by 2002:adf:efd2:: with SMTP id i18mr5591882wrp.145.1567009202563; 
 Wed, 28 Aug 2019 09:20:02 -0700 (PDT)
Received: from localhost ([31.16.217.87])
 by smtp.gmail.com with ESMTPSA id c21sm1927627wml.48.2019.08.28.09.20.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Aug 2019 09:20:01 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCHv5 2/2] ARM: dts: Add support for i.MX6 UltraLite DART
 Variscite Customboard
Date: Wed, 28 Aug 2019 18:19:18 +0200
Message-Id: <1567009160-21965-3-git-send-email-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567009160-21965-1-git-send-email-oliver.graute@gmail.com>
References: <1567009160-21965-1-git-send-email-oliver.graute@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_092004_683029_7E895E36 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 narmstrong@baylibre.com, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, oliver.graute@gmail.com,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds DeviceTree Source for the i.MX6 UltraLite DART NAND/WIFI

Signed-off-by: Oliver Graute <oliver.graute@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm/boot/dts/Makefile                      |   1 +
 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts | 196 ++++++++++++++++++++++++
 2 files changed, 197 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index a24a6a1..a2a69e4 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -579,6 +579,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
 	imx6ul-tx6ul-0010.dtb \
 	imx6ul-tx6ul-0011.dtb \
 	imx6ul-tx6ul-mainboard.dtb \
+	imx6ul-var-6ulcustomboard.dtb \
 	imx6ull-14x14-evk.dtb \
 	imx6ull-colibri-eval-v3.dtb \
 	imx6ull-colibri-wifi-eval-v3.dtb \
diff --git a/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts b/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts
new file mode 100644
index 00000000..1861b34
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts
@@ -0,0 +1,196 @@
+// SPDX-License-Identifier: (GPL-2.0)
+/*
+ * Support for Variscite DART-6UL Module
+ *
+ * Copyright (C) 2015 Freescale Semiconductor, Inc.
+ * Copyright (C) 2015-2016 Variscite Ltd. - http://www.variscite.com
+ * Copyright (C) 2018-2019 Oliver Graute <oliver.graute@gmail.com>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include "imx6ul-imx6ull-var-dart-common.dtsi"
+
+/ {
+	model = "Variscite i.MX6 UltraLite Carrier-board";
+	compatible = "variscite,6ulcustomboard", "fsl,imx6ul";
+
+	backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm1 0 20000>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <6>;
+		status = "okay";
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		user {
+			gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_BACK>;
+			gpio-key,wakeup;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		d16-led {
+			gpios = <&gpio4 20 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "wm8731audio";
+		simple-audio-card,widgets =
+			"Headphone", "Headphone Jack",
+			"Line", "Line Jack",
+			"Microphone", "Mic Jack";
+		simple-audio-card,routing =
+			"Headphone Jack", "RHPOUT",
+			"Headphone Jack", "LHPOUT",
+			"LLINEIN", "Line Jack",
+			"RLINEIN", "Line Jack",
+			"MICIN", "Mic Bias",
+			"Mic Bias", "Mic Jack";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&sound_master>;
+		simple-audio-card,frame-master = <&sound_master>;
+
+		sound_master: simple-audio-card,cpu {
+				sound-dai = <&sai2>;
+		};
+	};
+};
+
+&can1 {
+	status = "okay";
+};
+
+&can2 {
+	status = "okay";
+};
+
+&fec1 {
+	phy-mode = "rgmii";
+	phy-reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
+	phy-handle = <&ethphy0>;
+	status = "okay";
+};
+
+&fec2 {
+	phy-mode = "rgmii";
+	phy-reset-gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
+	phy-handle = <&ethphy1>;
+	status = "okay";
+};
+
+&i2c1 {
+	clock-frequency = <400000>;
+	status = "okay";
+};
+
+&i2c2 {
+	clock_frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	wm8731: audio-codec@1a {
+		#sound-dai-cells = <0>;
+		compatible = "wlf,wm8731";
+		reg = <0x1a>;
+		clocks = <&clks IMX6UL_CLK_SAI2>;
+		clock-names = "mclk";
+	};
+
+	touchscreen@38 {
+		compatible = "edt,edt-ft5x06";
+		reg = <0x38>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <4 0>;
+		touchscreen-size-x = <800>;
+		touchscreen-size-y = <480>;
+		touchscreen-inverted-x;
+		touchscreen-inverted-y;
+		wakeup-source;
+	};
+
+	rtc@68 {
+		compatible = "dallas,ds1337";
+		reg = <0x68>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_rtc>;
+		interrupt-parent = <&gpio5>;
+		interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
+	};
+};
+
+&lcdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lcdif>;
+	display = <&display0>;
+	status = "okay";
+
+	display0: display0 {
+		bits-per-pixel = <16>;
+		bus-width = <24>;
+
+		display-timings {
+			native-mode = <&timing0>;
+			timing0: timing0 {
+				clock-frequency =<35000000>;
+				hactive = <800>;
+				vactive = <480>;
+				hfront-porch = <40>;
+				hback-porch = <40>;
+				hsync-len = <48>;
+				vback-porch = <29>;
+				vfront-porch = <13>;
+				vsync-len = <3>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+				de-active = <1>;
+				pixelclk-active = <0>;
+			};
+		};
+	};
+};
+
+&pwm1 {
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&uart3 {
+	status = "okay";
+};
+
+&usbotg1 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usbotg2 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_rtc: rtcgrp {
+		fsl,pins = <
+			MX6UL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x1b0b0
+		>;
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
