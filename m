Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F534E371
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ejLyQTWpUTQ2T5y4uNIXivcaqPI08HiO5XTRwBG4Ppg=; b=KgzPlW89EQzj2hqeHayHEUR4gQ
	zcsGaqnRdOuANM7YEsHoLM92tnsjPyWHCR+3LbPSRypLACPHolHFWA0Q7fSyMKsNH9ZW0toMUssz+
	m/ShyC4FhbJwLRp1lGGXw8rd5LShTBtMawcVmd7Hxy9i3IGodgVPatFak+rs5SVICoAa5DhADIxO8
	rOyym2gM5mwcCtUSVS8fB4UFpwSuVKTzi6+SF+gXeUQnyN40ARyug5tzeCHLfPrHHlU7ZqZP0UE+9
	g4NmHxjOBwtme5KELsZfbG9HzmTJlr4SNF35WkWg+nPfOJ4qEJ+QJl3VIuQQE9SwwGvult/nmpqFP
	0sru3D4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFmW-0000fY-Nu; Fri, 21 Jun 2019 09:24:28 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFcv-0008OY-KQ
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:14:35 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id F11FD25BE54;
 Fri, 21 Jun 2019 19:13:54 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 295DC940F24; Fri, 21 Jun 2019 11:13:51 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 10/22] ARM: dts: r8a779x: Configure PMIC IRQ pinmux
Date: Fri, 21 Jun 2019 11:13:37 +0200
Message-Id: <185555ff994eaf0a992ec52221a9b05f645ecd22.1561104194.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561104194.git.horms+renesas@verge.net.au>
References: <cover.1561104194.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021434_334968_270ECC19 
X-CRM114-Status: GOOD (  11.07  )
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
Cc: Simon Horman <horms+renesas@verge.net.au>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Marek Vasut <marek.vasut+renesas@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Vasut <marek.vasut+renesas@gmail.com>

The PMIC IRQ line pin multiplexing configuration is missing from the DTs.
Since the line is configured correctly by default, the system works fine.
However, add the IRQ line pin multiplexing configuration for completeness.

Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm/boot/dts/r8a7790-lager.dts   | 7 +++++++
 arch/arm/boot/dts/r8a7790-stout.dts   | 7 ++++++-
 arch/arm/boot/dts/r8a7791-koelsch.dts | 7 +++++++
 arch/arm/boot/dts/r8a7791-porter.dts  | 7 +++++++
 arch/arm/boot/dts/r8a7792-blanche.dts | 7 +++++++
 arch/arm/boot/dts/r8a7793-gose.dts    | 7 +++++++
 6 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/r8a7790-lager.dts b/arch/arm/boot/dts/r8a7790-lager.dts
index 7b9508e83d46..d637b9727808 100644
--- a/arch/arm/boot/dts/r8a7790-lager.dts
+++ b/arch/arm/boot/dts/r8a7790-lager.dts
@@ -423,6 +423,8 @@
 	 */
 	i2cpwr: i2c-13 {
 		compatible = "i2c-demux-pinctrl";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_irq_pins>;
 		i2c-parent = <&iic3>, <&i2c3>;
 		i2c-bus-name = "i2c-pwr";
 		#address-cells = <1>;
@@ -615,6 +617,11 @@
 		function = "iic3";
 	};
 
+	pmic_irq_pins: pmicirq {
+		groups = "intc_irq2";
+		function = "intc";
+	};
+
 	hsusb_pins: hsusb {
 		groups = "usb0_ovc_vbus";
 		function = "usb0";
diff --git a/arch/arm/boot/dts/r8a7790-stout.dts b/arch/arm/boot/dts/r8a7790-stout.dts
index 7a7d3b84d1a6..ad68e6034b43 100644
--- a/arch/arm/boot/dts/r8a7790-stout.dts
+++ b/arch/arm/boot/dts/r8a7790-stout.dts
@@ -179,6 +179,11 @@
 		function = "iic3";
 	};
 
+	pmic_irq_pins: pmicirq {
+		groups = "intc_irq2";
+		function = "intc";
+	};
+
 	usb0_pins: usb0 {
 		groups = "usb0";
 		function = "usb0";
@@ -317,7 +322,7 @@
 
 &iic3 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&iic3_pins>;
+	pinctrl-0 = <&iic3_pins &pmic_irq_pins>;
 	status = "okay";
 
 	pmic@58 {
diff --git a/arch/arm/boot/dts/r8a7791-koelsch.dts b/arch/arm/boot/dts/r8a7791-koelsch.dts
index e6580aa0cea3..a116bfc11f0b 100644
--- a/arch/arm/boot/dts/r8a7791-koelsch.dts
+++ b/arch/arm/boot/dts/r8a7791-koelsch.dts
@@ -540,6 +540,11 @@
 		function = "intc";
 	};
 
+	pmic_irq_pins: pmicirq {
+		groups = "intc_irq2";
+		function = "intc";
+	};
+
 	sdhi0_pins: sd0 {
 		groups = "sdhi0_data4", "sdhi0_ctrl";
 		function = "sdhi0";
@@ -776,6 +781,8 @@
 };
 
 &i2c6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pmic_irq_pins>;
 	status = "okay";
 	clock-frequency = <100000>;
 
diff --git a/arch/arm/boot/dts/r8a7791-porter.dts b/arch/arm/boot/dts/r8a7791-porter.dts
index fefdf8238bbe..e08d257f5d0c 100644
--- a/arch/arm/boot/dts/r8a7791-porter.dts
+++ b/arch/arm/boot/dts/r8a7791-porter.dts
@@ -228,6 +228,11 @@
 		function = "intc";
 	};
 
+	pmic_irq_pins: pmicirq {
+		groups = "intc_irq2";
+		function = "intc";
+	};
+
 	sdhi0_pins: sd0 {
 		groups = "sdhi0_data4", "sdhi0_ctrl";
 		function = "sdhi0";
@@ -373,6 +378,8 @@
 };
 
 &i2c6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pmic_irq_pins>;
 	status = "okay";
 	clock-frequency = <100000>;
 
diff --git a/arch/arm/boot/dts/r8a7792-blanche.dts b/arch/arm/boot/dts/r8a7792-blanche.dts
index b6fa80c3b07e..b7af14de7c8e 100644
--- a/arch/arm/boot/dts/r8a7792-blanche.dts
+++ b/arch/arm/boot/dts/r8a7792-blanche.dts
@@ -234,6 +234,11 @@
 		groups = "du1_rgb666", "du1_sync", "du1_disp";
 		function = "du1";
 	};
+
+	pmic_irq_pins: pmicirq {
+		groups = "intc_irq2";
+		function = "intc";
+	};
 };
 
 &rwdt {
@@ -314,6 +319,8 @@
 	pmic@58 {
 		compatible = "dlg,da9063";
 		reg = <0x58>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_irq_pins>;
 		interrupt-parent = <&irqc>;
 		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
 		interrupt-controller;
diff --git a/arch/arm/boot/dts/r8a7793-gose.dts b/arch/arm/boot/dts/r8a7793-gose.dts
index f51601af89a2..9984ebf06695 100644
--- a/arch/arm/boot/dts/r8a7793-gose.dts
+++ b/arch/arm/boot/dts/r8a7793-gose.dts
@@ -514,6 +514,11 @@
 		function = "intc";
 	};
 
+	pmic_irq_pins: pmicirq {
+		groups = "intc_irq2";
+		function = "intc";
+	};
+
 	sdhi0_pins: sd0 {
 		groups = "sdhi0_data4", "sdhi0_ctrl";
 		function = "sdhi0";
@@ -711,6 +716,8 @@
 };
 
 &i2c6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pmic_irq_pins>;
 	status = "okay";
 	clock-frequency = <100000>;
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
