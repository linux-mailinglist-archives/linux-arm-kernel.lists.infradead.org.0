Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D0637A0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ByL/EDFrx0i4x2ly1HlcMPnavFybzLMbtzCD3c6pl4o=; b=n8nfxRRwaTakazkl4BQX4nzmvh
	gdVJfk27wFM4Or/RZ3q3lkNmFR0Zy+nZxMCfKdQZ4ivKkzG6QQ34f1G7tEZ+npfNGEZElLl6AryQE
	uLVQFBFziXIPyh7a5jkMcMgzSLo4s8idj4Pn9wF25rdXgzRAovlcu91ObeeUr6axjGpQI8iWIO3R2
	0g5nIIDecFsd8xqynxHd8QFWsbq8Ko0wHCx+B99beV8OK8SyCURoxDBbAO5t9IOtLRz4qkfg+Iz+H
	0vVoYdZKus6Y+70OaBDp5zMOrh8UTCULtFLMKoS8zYOo3tdEspewaEIuMf2VQjBsdtmPfA9eihIMe
	LX0JPBkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvbz-0002tJ-9c; Thu, 06 Jun 2019 16:51:35 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvbX-0002Vg-QA
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:51:09 +0000
Received: by mail-ed1-x544.google.com with SMTP id h10so4259378edi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 09:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5PNxcGwC+2v/A3mIrlXX6NGy0I4ZBqyu/22kY20nPjQ=;
 b=huhC3NMYKu2sbW+dvbwq39geQ7yj55AAuj6vLqWrjOv+Gyi573LEET4Zq+ofafOTLh
 b07kmCBzC3hXUffQds5gwjkiis7hk/G5o12aOjm0cl0GIQAt/gsVExpXPtwtwfGRjTC/
 UCxo9MjfBt4eJ5FP2JMD4uQI7TAPifPP0tElXbi05wzzRRHumq5fFzS5+mXSL+U0F9hJ
 GZGSftdoU+2zKg2OOvX4kkdWVciGUWZaS/5It40v+DPHD2asLGW3w/o9Ro3YUV6qL/yh
 VbjtJzNq7sWTloIOx181f+Abn08YW6JikYBHOZ6X6FVDZoZbZ1LivBIUdcQW8PLFo9Vz
 Ek6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5PNxcGwC+2v/A3mIrlXX6NGy0I4ZBqyu/22kY20nPjQ=;
 b=ELfp5AMFLzcqKr5/5zrqE+Ud9IWZYaD4FAfqaqKHFL2iG3fdK+WKqkNIx6SuJtXois
 fGy2NrvhX4AFlJatHLyxlk0wVENqO669CenZZaqXU1COht9VttHVv7WY0HwP0zZAatbK
 xvNZbCj1YyFOBAsJgPuqri/vaGu5MxPo+/j/axgK+9byJp0H4Fq6DzkunKMj//echjJO
 n+90pXZTLl3gQE7S6C8yjOurGjUV0VxsN7xon5n3LsfUQysobXeLDVuEjutAc+NCRTxY
 9/ZYU2o7GmbPoifS1XvAOFrm7g5Ke0A0epsI9PEQeFYVhylYYFI8veCcdEXS+aHL3ZEf
 XsWg==
X-Gm-Message-State: APjAAAWuyKcvPw+7SwZHl/CKsiieCOANPmgNgGW/1JC/F2PDinQoDuQ8
 vrkVf2EoYYKpkfE0tpJrlezS30zhOSo=
X-Google-Smtp-Source: APXvYqwN5ENGTSybk19GwQZPE1XCsc1zDKYWcCF4YLHxef3mOh+cAn0mGYJ8w1hD0Fh3fRxUTaCJtg==
X-Received: by 2002:a50:9601:: with SMTP id y1mr51649699eda.27.1559839865916; 
 Thu, 06 Jun 2019 09:51:05 -0700 (PDT)
Received: from localhost (ip1f10d6e1.dynamic.kabel-deutschland.de.
 [31.16.214.225])
 by smtp.gmail.com with ESMTPSA id a13sm558015edy.49.2019.06.06.09.51.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 09:51:05 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 2/2] ARM: dts: Add support for i.MX6 UltraLite DART
 Variscite Customboard
Date: Thu,  6 Jun 2019 18:47:02 +0200
Message-Id: <1559839624-12286-3-git-send-email-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559839624-12286-1-git-send-email-oliver.graute@gmail.com>
References: <1559839624-12286-1-git-send-email-oliver.graute@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_095107_858989_B62C14F3 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 oliver.graute@gmail.com, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds DeviceTree Bindings for the i.MX6 UltraLite DART NAND/WIFI

Signed-off-by: Oliver Graute <oliver.graute@gmail.com>
---
 arch/arm/boot/dts/Makefile                      |   1 +
 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts | 209 ++++++++++++++++++++++++
 2 files changed, 210 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 5559028..7f03ab5 100644
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
index 0000000..80b860a
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts
@@ -0,0 +1,209 @@
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
+		d16_led {
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
+	status = "okay";
+	phy-mode = "rgmii";
+	phy-reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
+	phy-handle = <&ethphy0>;
+};
+
+&fec2 {
+	status = "okay";
+	phy-mode = "rgmii";
+	phy-reset-gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
+	phy-handle = <&ethphy1>;
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
+	wm8731: codec@1a {
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
+	display0: display {
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
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog_1>;
+	imx6ul-evk {
+
+		pinctrl_rtc: rtcgrp {
+			fsl,pins = <
+				MX6UL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x1b0b0
+			>;
+		};
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
