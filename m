Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A5A701AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=h39wHsFv9g+FpWIowMhO3bb1NMoDor6u8Oe3CHb/B6U=; b=iY0
	Ilh10DVYZCSNaurnBALk7cXH8+zkVSNLdNiNPqoZZH7CWP0SgY8DEXXTrDwMFB42OOuWy+ug/6pST
	kmHvZ7amAqg06aowK6PBlaiyhZPQ3JPLHcVovdkerH5ZbGBts/V/m67sqq8k77zMo5L0g1rVcjT0K
	fV11ZjzqUZjQgXjBaVyOeV8AY9WgjpkiS6/ZYLH/77ba9E8BFGgHuTiwt2o0+3SySLDIvOFYgytet
	ZE79RdbAcoHkSthjuiQ/2tKsLB8RFcmUprznuQT7EezOx4NkGwK160gflR0pjC+KbgndzOwjFFl94
	+X83ge+jFwvyKc8K5Mkp3OK9sexAXsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYh4-00061i-U3; Mon, 22 Jul 2019 13:49:34 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYdU-0003QO-G6
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:45:53 +0000
Received: by mail-qt1-x842.google.com with SMTP id z4so38578090qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=X1MaQvCq7gYi922e7BpFn5osLNhpu9SvVjpekPA8xss=;
 b=fer/rkn0WmaQ9IJGi9KLu/yafo5+aH0ohYfHOUu4yyNcmJbGE0+U++FPX6DVb6AlGP
 /HzkUuy6s+qcZUXFT0U2Zd8y7HOkqUmf7WnT+zF6HXZhINWkVNUjpihbGmz01nEJB2wH
 J2EV7Uv9oWZzqJPC1jxJyDzVUU3Bb5CcoHnoZQFsvjRWNtIMSkR8Fn2eqdshVlFdTHl/
 jPqp1yA36YDB/1Dlq3/1PB9KHRVXMxYPtUFTW7xugnJrfXdMJd0MMa4GZKdvBge0K07b
 MzfWBZZsyNCUZIB65DAtHgDJRxQWoUIVZNrrDU3IdwogEddt/xPFJzpfadl5oO0nNGe1
 9ZgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=X1MaQvCq7gYi922e7BpFn5osLNhpu9SvVjpekPA8xss=;
 b=MD0qlLliP0FZegqLMtYzGER7bbLz1XfB0RH6FQq+dxdRyrnoTJPG0xfWryh5IqNqjc
 YWGBtrn7vPpyrJSQ+Hv+F14UItAXUEOrb0y56CUwNdIRjBZqGMrF4TPvmiun6G3eRDkt
 RKt5SSPX2IxJvkc5J3On6WeijT4lkcfdXx6GSpqQdqJWv3Rkbb2EjGqoMlj0EdMRZV40
 80eC7oot52IjGpuff/O4j1lB/Oh7iOrzLf96kGttLFjhtL16Gvj9/UfEOsH8bl2s5Lkk
 L5yElywMjiTaaJSAEQj55D6vMgu6yGotgfqtNAkzJ6kRlcO8Eoh3UdlxlnIwb/THK2c+
 MRVA==
X-Gm-Message-State: APjAAAV18ze6nRwSodO2bN1GD0XVFU9YF8q134FaKdG/tvTnO7wjsb2U
 FoOsg2k7+FxzZR1t/+BWXHA=
X-Google-Smtp-Source: APXvYqyW+sD8UZ8U1D5asxL39xq/uw3nQy1cWTD7xMUEAHRv5jS4FRRku9N3OLLb6SRe2e+iOYhvlw==
X-Received: by 2002:a0c:b999:: with SMTP id v25mr51527720qvf.36.1563803151325; 
 Mon, 22 Jul 2019 06:45:51 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id
 v75sm20062268qka.38.2019.07.22.06.45.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 06:45:50 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 1/2] ARM: dts: imx6qdl-wandboard: Add OV5645 camera support
Date: Mon, 22 Jul 2019 10:45:45 -0300
Message-Id: <20190722134546.15094-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064552_595216_D5132046 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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
Changes since v1:
- Remove unrelated change in Makefile

 arch/arm/boot/dts/imx6qdl-wandboard.dtsi | 73 ++++++++++++++++++++++--
 1 file changed, 69 insertions(+), 4 deletions(-)

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
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
