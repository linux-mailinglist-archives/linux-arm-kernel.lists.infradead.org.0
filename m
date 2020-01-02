Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EFD12E3C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 09:24:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+IsGVJqFNAVuidxtVa4j1vFcF6hzlE2nUTSNGlRNPrw=; b=IRXamhXkqbUrYl
	Q4mcfK8BWdFHVJtCCv363l4uxxnZoXdxoRWCMdon6n5SA07266azpV3+ARPs5g1cjP3IiXbHwyDEN
	P9MktDXXpuV8LYP0J/zrl+cYbiedMgAY4hbGqXgp4MtR0gBIW6OdVNRHfOQx0Jm6hC5Jd5rTiVuns
	v8fiDT8s/OVvdMx5hA5+HtF7XivB2u3rrzRDIpSqsFBDHhZvPchKhu8llRMxtnjSOyZw1molI0gqn
	uCjSb2SsOYeN1ddapQRShkiAPlXhm38BcThB6rfrhsKBP7yD9r1+yzmDSDKrNtckAutUoHoTagDWs
	Ly88rVZbOyhU2qcsvCbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imvm9-0004Zl-Em; Thu, 02 Jan 2020 08:24:13 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imvlX-0004BN-Me
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 08:23:39 +0000
Received: from sapphire.lan (unknown [192.168.100.188])
 by mx.tkos.co.il (Postfix) with ESMTP id 5D57944041A;
 Thu,  2 Jan 2020 10:23:32 +0200 (IST)
From: Baruch Siach <baruch@tkos.co.il>
To: Russell King <linux@armlinux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH 1/3] ARM: armada-38x-solidrun-microsom: move i2c0 to SOM DT
Date: Thu,  2 Jan 2020 10:23:26 +0200
Message-Id: <87fb5ab9674efaf5dbf5fed779926eccf248306b.1577953408.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_002335_999338_CC6E275F 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Dennis Gilmore <dennis@ausil.us>, Baruch Siach <baruch@tkos.co.il>,
 Aditya Prayoga <aditya@kobol.io>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move the i2c0 controller properties to the SOM .dtsi. This is
preparation for adding an i2c device at the SOM level.

Cc: Dennis Gilmore <dennis@ausil.us>
Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm/boot/dts/armada-388-clearfog.dtsi          | 5 -----
 arch/arm/boot/dts/armada-388-helios4.dts            | 5 -----
 arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi | 7 +++++++
 3 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/armada-388-clearfog.dtsi b/arch/arm/boot/dts/armada-388-clearfog.dtsi
index 0d81600ca247..a6edea6f50d1 100644
--- a/arch/arm/boot/dts/armada-388-clearfog.dtsi
+++ b/arch/arm/boot/dts/armada-388-clearfog.dtsi
@@ -111,11 +111,6 @@ &eth2 {
 };
 
 &i2c0 {
-	clock-frequency = <400000>;
-	pinctrl-0 = <&i2c0_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-
 	/*
 	 * PCA9655 GPIO expander, up to 1MHz clock.
 	 *  0-CON3 CLKREQ#
diff --git a/arch/arm/boot/dts/armada-388-helios4.dts b/arch/arm/boot/dts/armada-388-helios4.dts
index 705adfa8c680..fb49df2a3bce 100644
--- a/arch/arm/boot/dts/armada-388-helios4.dts
+++ b/arch/arm/boot/dts/armada-388-helios4.dts
@@ -140,11 +140,6 @@ usb3_phy: usb3-phy {
 	soc {
 		internal-regs {
 			i2c@11000 {
-				clock-frequency = <400000>;
-				pinctrl-0 = <&i2c0_pins>;
-				pinctrl-names = "default";
-				status = "okay";
-
 				/*
 				 * PCA9655 GPIO expander, up to 1MHz clock.
 				 *  0-Board Revision bit 0 #
diff --git a/arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi b/arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi
index 3a7f9c1ac346..cd39312fb50d 100644
--- a/arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi
+++ b/arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi
@@ -71,6 +71,13 @@ phy_dedicated: ethernet-phy@0 {
 	};
 };
 
+&i2c0 {
+	clock-frequency = <400000>;
+	pinctrl-0 = <&i2c0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &pinctrl {
 	microsom_phy_clk_pins: microsom-phy-clk-pins {
 		marvell,pins = "mpp45";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
