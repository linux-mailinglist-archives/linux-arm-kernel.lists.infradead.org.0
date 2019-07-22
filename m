Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D040A70132
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=J6nFw5yABBMxebfiFRvJwoBKsrEK9SNQsc4TyJ2aoh0=; b=bDC
	ZF9IFNB663St/oPkQFB+668Xze/rPnSQFtx+d18jANiN9CH60lUgFXxwdqS1LHqlGvbQkJevYKZl/
	uffj2Gv4wsiu+cmDdRinMFxmbTJdX0Sf+tZPG4bZ8b4WFPwPOyCLpCN1DvM2561+0XIP8fCKo+sOR
	5+cbHdzg/8uaIf5lnayZfjrhKOD6EEjDqCR8AYKVXSK5NUyCmDHI3xqK8lWfFyy6uFi2ob2zg83W7
	R95SkpHljwNS5/XyAcP/5x+upDqLhehZs1B5gWAWJJQ5YNo94ugpR/Jecc+opHeirvgjdARl0d6XU
	9CcF6PTMEf+1WIAS4uurYnnzzpucY0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYV7-00061o-Vg; Mon, 22 Jul 2019 13:37:14 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYUr-00061D-R3
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:36:59 +0000
Received: by mail-qk1-x741.google.com with SMTP id d15so28569561qkl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=nW+0o4HDcVTAkoaZmJpF4nK9I/Q9L/ZCdZUGuRKZljE=;
 b=QF0siUgKty4QyDoopOeIBOAUHe01dKM4PH5IsgfNWCAWf1o7TBGAWBdcH6zVWFcYMr
 TnFPP89+rg+4WvNboIqtKJ9C3vRpXhArR9X4omZz0BA9TYAD78dFAYcvlbfOIzXU5MEB
 byULjQz15lpWrGPvnO700iV//zI/lqGY/WOtUqQDdi8l48vKvmgP5uhPeIVeBC9BrDLA
 BKqffYIDqf5RP1XY+DdUnrjlJB2aJxWJ2kCbYHahnW2VYOPpU3zD3sA0/eaPa2X2L2Uh
 JnEFSICQ5StaQNV/x3cGRqVmRvrDIYVj1dYetSqJ2isZdm13uWohOU3BSF8048SEN06I
 s8RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nW+0o4HDcVTAkoaZmJpF4nK9I/Q9L/ZCdZUGuRKZljE=;
 b=S+mQeA1/d5qEhi+feBqKp2VdsmeEAE/c65OPYtjHQfpRF8H5BxzG3jcHqVbRVjQGXA
 bp5LI4OkenMQUMKffGHuo6GwQCH+A8QClxRbR0PTEXXQisB824rUl+JvOFq9lfiSil1H
 J4/TQa/fD9DLZv4rMtHI+nokOvcFNs+y7ayIqqRR2QsWqd/ZuUUY0QsHFEn3yIV0i6P6
 v0jt4eLSC+fLVUsU2N+gbOF7x5FpM1g3j8m+3poroKo4HOQ9DFl2CwWaQLZYorWgPRyX
 2B4OoPz7O/Su3P5sPBiTVnT513yQF8Au7PyxsEA5sK6Ot2ik9HI5JtZAxnKoabrx7onG
 ZXCg==
X-Gm-Message-State: APjAAAXoeOrdXemGbLoiCkSGlIyYv79kPhpS2V9DI86muoUnHAT4Ncd1
 as93brRgdSziRdjjLSmtGBI=
X-Google-Smtp-Source: APXvYqyGLDu0qQQ1XaR3oureOLC2rer/BTdrBbsv4bQGpDRyxNhcrUH5PaFokZd2NEhUduaeygv3Tg==
X-Received: by 2002:a37:aa06:: with SMTP id t6mr46606872qke.226.1563802616190; 
 Mon, 22 Jul 2019 06:36:56 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id
 x1sm16894599qkj.22.2019.07.22.06.36.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 06:36:55 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 1/2] ARM: dts: imx6qdl-wandboard: Add OV5645 camera support
Date: Mon, 22 Jul 2019 10:36:50 -0300
Message-Id: <20190722133651.14729-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_063657_903632_C46D3047 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fabio Estevam <festevam@gmail.com>, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ezequiel Garcia <ezequiel@collabora.com>

imx6qdl-wandboard can be connected to a OV5645 camera via
MIPI CSI port. Add support for it.

PAD_GPIO_6 has been originally used for the Ethernet FEC
ERR006687 workaround, but it needs to be used to provide the
camera sensor clock, so adjust it accordingly.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx6qdl-wandboard.dtsi | 73 ++++++++++++++++++++++--
 arch/arm64/boot/dts/freescale/Makefile   |  1 +
 2 files changed, 70 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
index 50d9a989e06a..2cfb4112a467 100644
--- a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
@@ -33,6 +33,30 @@
 		spdif-out;
 	};
 
+	reg_1p5v: regulator-1p5v {
+		compatible = "regulator-fixed";
+		regulator-name = "1P5V";
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		regulator-always-on;
+	};
+
+	reg_1p8v: regulator-1p8v {
+		compatible = "regulator-fixed";
+		regulator-name = "1P8V";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+
+	reg_2p8v: regulator-2p8v {
+		compatible = "regulator-fixed";
+		regulator-name = "2P8V";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		regulator-always-on;
+	};
+
 	reg_2p5v: regulator-2p5v {
 		compatible = "regulator-fixed";
 		regulator-name = "2P5V";
@@ -94,6 +118,29 @@
 		VDDIO-supply = <&reg_3p3v>;
 		lrclk-strength = <3>;
 	};
+
+	camera@3c {
+		compatible = "ovti,ov5645";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ov5645>;
+		reg = <0x3c>;
+		clocks = <&clks IMX6QDL_CLK_CKO2>;
+		clock-names = "xclk";
+		clock-frequency = <24000000>;
+		vdddo-supply = <&reg_1p8v>;
+		vdda-supply = <&reg_2p8v>;
+		vddd-supply = <&reg_1p5v>;
+		enable-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio4 14 GPIO_ACTIVE_LOW>;
+
+		port {
+			ov5645_to_mipi_csi2: endpoint {
+				remote-endpoint = <&mipi_csi2_in>;
+				clock-lanes = <0>;
+				data-lanes = <1 2>;
+			};
+		};
+	};
 };
 
 &iomuxc {
@@ -128,7 +175,6 @@
 				MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b030
 				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b030
 				MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0x4001b0a8
-				MX6QDL_PAD_GPIO_6__ENET_IRQ		0x000b1
 			>;
 		};
 
@@ -152,6 +198,14 @@
 			>;
 		};
 
+		pinctrl_ov5645: ov5645grp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_3__CCM_CLKO2		0x000b0
+				MX6QDL_PAD_GPIO_6__GPIO1_IO06		0x1b0b0
+				MX6QDL_PAD_KEY_COL4__GPIO4_IO14		0x1b0b0
+			>;
+		};
+
 		pinctrl_spdif: spdifgrp {
 			fsl,pins = <
 				MX6QDL_PAD_ENET_RXD0__SPDIF_OUT		0x1b0b0
@@ -226,12 +280,23 @@
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii-id";
 	phy-reset-gpios = <&gpio3 29 GPIO_ACTIVE_LOW>;
-	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
-			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
-	fsl,err006687-workaround-present;
 	status = "okay";
 };
 
+&mipi_csi {
+	status = "okay";
+
+	port@0 {
+		reg = <0>;
+
+		mipi_csi2_in: endpoint {
+			remote-endpoint = <&ov5645_to_mipi_csi2>;
+			clock-lanes = <0>;
+			data-lanes = <1 2>;
+		};
+	};
+};
+
 &spdif {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_spdif>;
diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index c043aca66572..99627a499a73 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -23,6 +23,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-rdb.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mq-pico-pi.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
