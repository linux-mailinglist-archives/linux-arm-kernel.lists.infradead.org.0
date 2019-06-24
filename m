Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC61E519CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 19:41:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8igNr4nCz6UkhfwOSdFzOuJ48VIV/Mru2lmBxg6kkMc=; b=fzl1wnEGV7L2z6SgP9Ucc1TpDr
	olavOlkwMgiJVoYqudw04vHouoGK0W8SC24fbHfPsZCs5q3xlUt4LjNvKyjaQQh7WQyhknT9eio9b
	9PALIrGtueARSBHj4HxPdgxTOErDlVTF9Pm59c7Rwk/QCdacf6mUuKe3kpwo85e/3ROtWoHC7wrW2
	Ng30ELnY3jAoyzCG8VqTn+zDDjUUdJqKtNwxRmMhF+/sgbj6HEGJoh7N1pn7JzhhTH1G1+6TGrrkr
	7djqweESOiyshYg42HMYRlJ3tbW7zO9yUvmx0mFRwxzaVm8gURZo9DDOjVy55sSQuQlJ2gvGNA12F
	nJocvL/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfSyL-0000F3-9Z; Mon, 24 Jun 2019 17:41:41 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfSxW-0008Au-Ia
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 17:40:54 +0000
Received: by mail-ed1-x541.google.com with SMTP id e3so22876547edr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 10:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7G9hz19DpQMOp6xUIOTV29RIVUvIs4RqyPOZnJ3+kuc=;
 b=QcATPe/q75AXCQpILZkSYxvxZuX+nvVMhHyIKaH257464XhpoWfF1kA0yKxKPWGtV1
 C/xpC8cZdNkATT1TkazXzSvP5HPhbssuDiua8vWJ+Abh78C749y0G5BNu0NV8Wma1ODb
 pRroFTr0cWs1pAMNIM7wZM1FDLVcaiLEdcrkwVSo2rdDBujTz/d+7cTSz01rRA32oOXe
 3/4SO/cjKdBadss1eJEEML/PpeDIGZwkGRTt1bHRrqZVrqwLivQS5QYrUzwz9lmGdx2m
 bVGOxuvHLpCa+MzDPW5+8s1ES4u/XuKP99nj3RGDh9Kapj+BvdTz0nNeIMujPeoZoloa
 KBDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7G9hz19DpQMOp6xUIOTV29RIVUvIs4RqyPOZnJ3+kuc=;
 b=VK3tWVu8DsHIcMzcBLdQnHufvOtZrCATJbs6PilxqpvdySNNyiZHHW2H8katos4wK/
 QUwnC21kvrqErQccPlqhk9JcdQ2YlINnK6tZAqA863BnnhxMXp/Rfy7aEmfZ10uAcJgB
 LURE0KVbh4rs7da7IUAI8JT9Qrh50UsNpbnYvCLKMp7oP6g67jhWGkpBuGLOjZly+Yv/
 l1+QbjUCmUKSLV/t0frYqW7EeZ8l2V+ILqeBY/HGBthZ3DopILEMk6swAtgmxjUyjV0T
 hpeVdWkmCpEg8Bt8iNcClMyD98VKrd4w1UsSvQ83f6GOzvKsHlxtwXbFdbIxPF/8RCcM
 yj+A==
X-Gm-Message-State: APjAAAV2xPYejuEathQaK391lvRXs80WBCQccIWg49kPMmc7BI+1qIV4
 Tow7/tsygrsS/UVAu4T91fU=
X-Google-Smtp-Source: APXvYqx9X3oE8Zq3qnLXcp2vY0GKoHOdc0iFgpRY1QX/Odw7afke/4A7u4dYcN3iqnYOne65JA59vQ==
X-Received: by 2002:a17:906:e282:: with SMTP id
 gg2mr24192530ejb.38.1561398048655; 
 Mon, 24 Jun 2019 10:40:48 -0700 (PDT)
Received: from localhost (ip1f10d6e1.dynamic.kabel-deutschland.de.
 [31.16.214.225])
 by smtp.gmail.com with ESMTPSA id b25sm4068315eda.38.2019.06.24.10.40.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 10:40:48 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
To: oliver.graute@gmail.com
Subject: [PATCH 2/2] ARM: dts: Add support for i.MX6 UltraLite DART Variscite
 Customboard
Date: Mon, 24 Jun 2019 19:40:13 +0200
Message-Id: <1561398017-10548-3-git-send-email-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561398017-10548-1-git-send-email-oliver.graute@gmail.com>
References: <1561398017-10548-1-git-send-email-oliver.graute@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_104051_005172_536BE66E 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 narmstrong@baylibre.com, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds DeviceTree Source for the i.MX6 UltraLite DART NAND/WIFI

Signed-off-by: Oliver Graute <oliver.graute@gmail.com>
---
 arch/arm/boot/dts/Makefile                      |   1 +
 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts | 203 ++++++++++++++++++++++++
 2 files changed, 204 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index c4742af..5dc3fbf 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -577,6 +577,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
 	imx6ul-tx6ul-0010.dtb \
 	imx6ul-tx6ul-0011.dtb \
 	imx6ul-tx6ul-mainboard.dtb \
+	imx6ul-var-6ulcustomboard.dtb \
 	imx6ull-14x14-evk.dtb \
 	imx6ull-colibri-eval-v3.dtb \
 	imx6ull-colibri-wifi-eval-v3.dtb \
diff --git a/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts b/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts
new file mode 100644
index 0000000..59354e6
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts
@@ -0,0 +1,203 @@
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
+	compatible = "fsl,6ulcustomboard", "fsl,imx6ul";
+
+	backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm1 0 20000>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <6>;
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
+&gpc {
+	fsl,cpu_pupscr_sw2iso = <0x2>;
+	fsl,cpu_pupscr_sw = <0x1>;
+	fsl,cpu_pdnscr_iso2sw = <0x1>;
+	fsl,cpu_pdnscr_iso = <0x1>;
+	fsl,ldo-bypass = <0>; /* DCDC, ldo-enable */
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
+	pinctrl-0 = <&pinctrl_lcdif_dat
+		     &pinctrl_lcdif_ctrl>;
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
