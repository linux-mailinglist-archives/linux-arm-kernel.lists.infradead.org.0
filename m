Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C1F4E395
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M1dUGbAKqg4BXrTXsTFK8qeiAbHAZqUJtaZwVCAnYA4=; b=BRd3Ty/vmvBYEjGDhopYqnK14e
	dM5YsMUsf76GgjuS8Auxghs+2TeqEgjfJtAbdJZM9gL/16NSEn/9iKxhSQ/SFHIJP14EYZKYrRpzw
	Qb1vFzK+/g09gmf9dOvSHBotRdAkwacssswxcDk+gpnHpv2gslQc3+VqSkw2j20++ksf3hunTPK4b
	oE7gaIX/Y0zYTKl0bSg1V70vElPdHcMSvZeNCHFTkkkGTNUga2Xh5yGgtz+FDRDIu6K1i9+An2W8M
	n3MwTMKCyT09MK/8fQSGO2hrqGw+nIUwxsjjLJUPrCJu1jsRX7TRwEmrHsZJ3hQiYilVhQt/o/L3w
	jtOO0hXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFtC-00084z-H8; Fri, 21 Jun 2019 09:31:22 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFf4-0002tV-3c
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:16:47 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id A349B25BE08;
 Fri, 21 Jun 2019 19:16:36 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id AC684940CB2; Fri, 21 Jun 2019 11:16:32 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 07/53] arm64: dts: renesas: cat874: Add HDMI video support
Date: Fri, 21 Jun 2019 11:15:45 +0200
Message-Id: <94fc0ee22a5cb3a744a38906a55323fd6ac793fa.1561107232.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561107232.git.horms+renesas@verge.net.au>
References: <cover.1561107232.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021646_434717_37C8E3BD 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
 Simon Horman <horms+renesas@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabrizio Castro <fabrizio.castro@bp.renesas.com>

The CAT874 board comes with a HDMI connector, managed by
a TDA19988BET chip, connected to the RZ/G2E SoC via DPAD.
This patch adds the necessary support to the board DT.

Signed-off-by: Fabrizio Castro <fabrizio.castro@bp.renesas.com>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts | 82 +++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts b/arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts
index 013a48c01211..06239503093b 100644
--- a/arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts
+++ b/arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts
@@ -22,6 +22,17 @@
 		stdout-path = "serial0:115200n8";
 	};
 
+	hdmi-out {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_out: endpoint {
+				remote-endpoint = <&tda19988_out>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -74,6 +85,31 @@
 		states = <3300000 1
 			  1800000 0>;
 	};
+
+	x13_clk: x13 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <74250000>;
+	};
+};
+
+&du {
+	pinctrl-0 = <&du_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	clocks = <&cpg CPG_MOD 724>,
+		 <&cpg CPG_MOD 723>,
+		 <&x13_clk>;
+	clock-names = "du.0", "du.1", "dclkin.0";
+
+	ports {
+		port@0 {
+			endpoint {
+				remote-endpoint = <&tda19988_in>;
+			};
+		};
+	};
 };
 
 &ehci0 {
@@ -85,6 +121,39 @@
 	clock-frequency = <48000000>;
 };
 
+&i2c0 {
+	status = "okay";
+	clock-frequency = <100000>;
+
+	tda19988: tda19988@70 {
+		compatible = "nxp,tda998x";
+		reg = <0x70>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
+
+		video-ports = <0x234501>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				tda19988_in: endpoint {
+					remote-endpoint = <&du_out_rgb>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				tda19988_out: endpoint {
+					remote-endpoint = <&hdmi_con_out>;
+				};
+			};
+		};
+	};
+};
+
 &i2c1 {
 	pinctrl-0 = <&i2c1_pins>;
 	pinctrl-names = "default";
@@ -98,6 +167,13 @@
 	};
 };
 
+&lvds0 {
+	status = "okay";
+
+	clocks = <&cpg CPG_MOD 727>, <&x13_clk>, <&extal_clk>;
+	clock-names = "fck", "dclkin.0", "extal";
+};
+
 &ohci0 {
 	dr_mode = "host";
 	status = "okay";
@@ -113,6 +189,12 @@
 };
 
 &pfc {
+	du_pins: du {
+		groups = "du_rgb888", "du_clk_out_0", "du_sync", "du_disp",
+			 "du_clk_in_0";
+		function = "du";
+	};
+
 	i2c1_pins: i2c1 {
 		groups = "i2c1_b";
 		function = "i2c1";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
