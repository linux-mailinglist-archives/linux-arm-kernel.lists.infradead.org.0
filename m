Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFD416B04F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:33:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P/NHDl8x+ZgQBn3qHiU6D+LjRekUHDlcy4+s3V7SLro=; b=f+BUuXkDhpfROmbvOvUI034IKo
	rfdI7KjInK8yxoE1ga0wgkHG3WHA8JXPzJrsvkAFLRvF5p+kV6JiqQ12sXbx5Jf2yNvGbKLJY3Plo
	VuO2cwe465fr9yfdf5bkBm5KNh4SL0Ru06r8xF4CMiWGSu/jSid+3H1nLZAsMLohfYbMqvQAdse8E
	DjbKq1R4/xbXjjFBO3pD80Fd/nPGIIPUciMXin5hVCgAliZJud8XIv9InlYXLGlO9Lf3W+3uQlFLV
	4SGXMYKI2TIs9govOT654VT0KM3cthN5errH2d0cNZ9OeMnzaegUcAZrMAQEHV8SnVX2dn2XuB8zh
	tRcP8+tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JTf-000211-6A; Mon, 24 Feb 2020 19:33:15 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6JSl-0001KT-8u
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 19:32:20 +0000
Received: by mail-qk1-x744.google.com with SMTP id m9so4507536qke.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 11:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jg1UzSjYJ/jtnTFi785GUt2OLxICkqXhVvnXvurXdS0=;
 b=p75UrLu1Noy47PXDiJEVmmqUg68iRgy7hoGmEAVQTPfT970Sv9RmwSAaOo8qE/8YWA
 +13cqB4iMKCgCbNoxGSiaD4hAFbiYAjRhkW2p26MZlvKBSIgN9OZ+i4Qaajl9psDB9gW
 qVsfVQze0tta/X6nB+hjHKGQfu6rQqqFAaEmshRtXUW3cHddjqIiuVrjIrXs1X3wfN3w
 0S3qve+X9kLU/6FwubjW9pL/rhc8CPEKjAujj76zNwxBhADBwY2It8hYvpawpcj5+LSq
 6SDEH5VS9LYJMGlNTqsmeQYRsab9sVp55hr0TwpQ/MZXBinDGmyBHoSRcD4yixv8DI9B
 o+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jg1UzSjYJ/jtnTFi785GUt2OLxICkqXhVvnXvurXdS0=;
 b=KWQAv/fW207fO5m3Sav0SrWo6gTXCHmsnBo0d0BOwvVIFycM50q4J6GhI4BKzoPjMe
 MvyuowZXAPFaVzF99SqOPsleP+aGlKKktYfMVNPdkNVdLaEtP97wK8wMynGioreRTwOW
 3B8gl/UF+9FcXs46ZCS3uqEZgBmxWmzClx1j6ypbnNs0kh7WHfUJ1AxTTcwdPhNHHMxJ
 pHwrOcMzQXeUN8taOzp9z2uPDALZ3HIKbMdCNYIrFGqHNRBXq60olTftWuKGHVnEscth
 zAVkGdJX5AviEL+YUGS83nCgEu4RkDRgVIYUWk/GCPERcYEoRgJ6GULP+ekeiztuintX
 9D2g==
X-Gm-Message-State: APjAAAX5sdyJK6JSQ22gs9/xi62tTmWtp9WAzzDe7wYE+M7SA+raSqZt
 I+1ntqgQdibcnQ8org/5SHU=
X-Google-Smtp-Source: APXvYqwSMaI+ag9DQuL7zs9jkyIQT8Q1RcsJgHkZVZ2VCre6Qri2qAynIf3LMChKIwpeKB/rCh8Xyw==
X-Received: by 2002:a05:620a:7f5:: with SMTP id
 k21mr26536572qkk.493.1582572737827; 
 Mon, 24 Feb 2020 11:32:17 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:482:5bb::2])
 by smtp.gmail.com with ESMTPSA id g2sm6182497qkb.27.2020.02.24.11.32.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 11:32:17 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 4/6] ARM: dts: imx7d-pico: Add support for the nymph baseboard
Date: Mon, 24 Feb 2020 16:31:58 -0300
Message-Id: <20200224193200.2773-4-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200224193200.2773-1-festevam@gmail.com>
References: <20200224193200.2773-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_113219_325260_C10C4300 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: robh+dt@kernel.org, Fabio Estevam <festevam@gmail.com>,
 otavio@ossystems.com.br, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the imx7d pico board with nymph baseboard combination.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../devicetree/bindings/arm/fsl.yaml          |  1 +
 arch/arm/boot/dts/Makefile                    |  1 +
 arch/arm/boot/dts/imx7d-pico-nymph.dts        | 84 +++++++++++++++++++
 3 files changed, 86 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx7d-pico-nymph.dts

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 098aee4930a0..70cec470916c 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -288,6 +288,7 @@ properties:
               - novtech,imx7d-meerkat96   # i.MX7 Meerkat96 Board
               - technexion,imx7d-pico-dwarf   # TechNexion i.MX7D Pico-Dwarf
               - technexion,imx7d-pico-hobbit  # TechNexion i.MX7D Pico-Hobbit
+              - technexion,imx7d-pico-nymph   # TechNexion i.MX7D Pico-Nymph
               - technexion,imx7d-pico-pi      # TechNexion i.MX7D Pico-Pi
               - toradex,colibri-imx7d                   # Colibri iMX7 Dual Module
               - toradex,colibri-imx7d-emmc              # Colibri iMX7 Dual 1GB (eMMC) Module
diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 888eaa8b1f92..f401809c8123 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -617,6 +617,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
 	imx7d-nitrogen7.dtb \
 	imx7d-pico-dwarf.dtb \
 	imx7d-pico-hobbit.dtb \
+	imx7d-pico-nymph.dtb \
 	imx7d-pico-pi.dtb \
 	imx7d-sbc-imx7.dtb \
 	imx7d-sdb.dtb \
diff --git a/arch/arm/boot/dts/imx7d-pico-nymph.dts b/arch/arm/boot/dts/imx7d-pico-nymph.dts
new file mode 100644
index 000000000000..28615905b311
--- /dev/null
+++ b/arch/arm/boot/dts/imx7d-pico-nymph.dts
@@ -0,0 +1,84 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+//
+// Copyright 2015 Technexion Ltd.
+//
+// Author: Wig Cheng  <wig.cheng@technexion.com>
+//	   Richard Hu <richard.hu@technexion.com>
+//	   Tapani Utriainen <tapani@technexion.com>
+/dts-v1/;
+
+#include "imx7d-pico.dtsi"
+/ {
+	model = "TechNexion PICO-IMX7 and NYMPH baseboard";
+	compatible = "technexion,imx7d-pico-nymph", "fsl,imx7d";
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_leds>;
+
+		led {
+			label = "gpio-led";
+			gpios = <&gpio2 13 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	sound {
+		compatible = "fsl,imx-audio-sgtl5000";
+		model = "imx7d-sgtl5000";
+		audio-cpu = <&sai1>;
+		audio-codec = <&sgtl5000>;
+		audio-routing =
+			"LINE_IN", "Line In Jack",
+			"MIC_IN", "Mic Jack",
+			"Mic Jack", "Mic Bias",
+			"Headphone Jack", "HP_OUT";
+	};
+
+	sys_mclk: clock-sys-mclk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24576000>;
+	};
+};
+
+&i2c1 {
+	clock_frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	sgtl5000: codec@a {
+		reg = <0x0a>;
+		compatible = "fsl,sgtl5000";
+		clocks = <&sys_mclk>;
+		VDDA-supply = <&reg_2p5v>;
+		VDDIO-supply = <&reg_3p3v>;
+	};
+
+	adc@52 {
+		compatible = "ti,adc081c";
+		reg = <0x52>;
+		vref-supply = <&reg_2p5v>;
+	};
+};
+
+&i2c2 {
+	clock_frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	rtc@68 {
+		compatible = "dallas,ds1337";
+		reg = <0x68>;
+	};
+};
+
+&iomuxc {
+	pinctrl_gpio_leds: gpioledsgrp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_DATA13__GPIO2_IO13	0x14
+		>;
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
