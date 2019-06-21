Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 140D24E45D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:42:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9FcLuAGHlXSKNJpdeqXzdGQUij965z5GVLBKJfhhdrw=; b=EEp1h48VIciGR+kFM6blLjBrgu
	l6xWvl9TGOGpLyvWsksVkqQh9Btf69P7b1d9O46NGw6cmENpR6+fFoB5rQEQMTSaQQhH0+iXtWV/O
	GtecWbyLxaOSDfK9shUA/luWd3YragyeQye3O5PK8TZNAzYT4X8PBruvvOM2t3esIgks+lDjCytmK
	MuOnaT/9yC3NQJ5ONVUR82E6jE+YUpP7lNeBSTG3u9JLZrsyNbBLyEoVm6spbnuUZFwPb9/PJftBt
	NpVA0ab9V2dargy7eVrc1gmec6E2dGD3X/iaYdF62T2IfcnHSI0hij7x1mRPeEcQjW5K5b0tscd0I
	dtaeku9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heG46-00020r-MG; Fri, 21 Jun 2019 09:42:39 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFgG-0002tV-TT
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:18:02 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id AEAFF25BE91;
 Fri, 21 Jun 2019 19:16:38 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 742149434C1; Fri, 21 Jun 2019 11:16:35 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 44/53] arm64: dts: renesas: hihope-common: Add USB 2.0 support
Date: Fri, 21 Jun 2019 11:16:22 +0200
Message-Id: <734d277f412ae9e6ea9f2ee7a6b5f1b3deadf2fc.1561107232.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561107232.git.horms+renesas@verge.net.au>
References: <cover.1561107232.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021801_308803_45E1923D 
X-CRM114-Status: GOOD (  10.69  )
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

Add USB 2.0 support to the HiHope RZ/G2M.

Signed-off-by: Fabrizio Castro <fabrizio.castro@bp.renesas.com>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm64/boot/dts/renesas/hihope-common.dtsi | 76 ++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/hihope-common.dtsi b/arch/arm64/boot/dts/renesas/hihope-common.dtsi
index 12047ee65a97..18763ca553f7 100644
--- a/arch/arm64/boot/dts/renesas/hihope-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/hihope-common.dtsi
@@ -35,6 +35,17 @@
 		regulator-always-on;
 	};
 
+	vbus0_usb2: regulator-vbus0-usb2 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "USB20_VBUS0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+
+		gpio = <&gpio6 16 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
 	vccq_sdhi0: regulator-vccq-sdhi0 {
 		compatible = "regulator-gpio";
 
@@ -49,6 +60,14 @@
 	};
 };
 
+&ehci0 {
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
 &extal_clk {
 	clock-frequency = <16666666>;
 };
@@ -57,6 +76,28 @@
 	clock-frequency = <32768>;
 };
 
+&gpio6 {
+	usb1-reset {
+		gpio-hog;
+		gpios = <10 GPIO_ACTIVE_LOW>;
+		output-low;
+		line-name = "usb1-reset";
+	};
+};
+
+&hsusb {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&ohci1 {
+	status = "okay";
+};
+
 &pcie_bus_clk {
 	clock-frequency = <100000000>;
 };
@@ -92,6 +133,23 @@
 		function = "sdhi3";
 		power-source = <1800>;
 	};
+
+	usb0_pins: usb0 {
+		groups = "usb0";
+		function = "usb0";
+	};
+
+	usb1_pins: usb1 {
+		mux {
+			groups = "usb1";
+			function = "usb1";
+		};
+
+		ovc {
+			pins = "GP_6_27";
+			bias-pull-up;
+		};
+	};
 };
 
 &rwdt {
@@ -135,5 +193,23 @@
 	mmc-hs200-1_8v;
 	non-removable;
 	fixed-emmc-driver-type = <1>;
+};
+
+&usb_extal_clk {
+	clock-frequency = <50000000>;
+};
+
+&usb2_phy0 {
+	pinctrl-0 = <&usb0_pins>;
+	pinctrl-names = "default";
+
+	vbus-supply = <&vbus0_usb2>;
+	status = "okay";
+};
+
+&usb2_phy1 {
+	pinctrl-0 = <&usb1_pins>;
+	pinctrl-names = "default";
+
 	status = "okay";
 };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
