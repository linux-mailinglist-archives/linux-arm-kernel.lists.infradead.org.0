Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 944B94E37E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WjctMPaCq816jlRADsjHkFKroNtZBATgvaRjAtlFiK4=; b=FJbUmfl21qnqmJ3nlEVAwvjSyh
	OEARX5xGQ1jdJ7Q9nHSmbcAF9laUU1J9502HSpdlNxQ24ozReNaV57mpVCyPE3YwN+ryfk0HMKUF+
	Z3sERd7rNxDeHTeorfSwvxI8reLb03FQ5SEUfC4z7FzyWQS75QTCgcNpoSqQ12t7W0BuJLpPCiaR2
	XXQUB+1VhoFx27L54OG02AQRYa3oAPoYaS93lz2wbbBdNs/gWJRrO+tfqkC/58ysi7LOP3JFWnf3r
	gz0zNVtd5LjgzkRBY+WjfRER4VQe9rcqdhp56xcdNnlSRNHfXrQGqwsNXvWj++Qst2Ik/Ew2DH0zZ
	iNH0mqag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFoJ-0003Sg-6V; Fri, 21 Jun 2019 09:26:19 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFdA-0008OY-5O
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:14:49 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 57BE125BE67;
 Fri, 21 Jun 2019 19:13:55 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id A40509413C0; Fri, 21 Jun 2019 11:13:51 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 17/22] ARM: dts: rza2mevb: sort nodes of rza2mevb board
Date: Fri, 21 Jun 2019 11:13:44 +0200
Message-Id: <1de78ccbda7835da6e1a75d5860267afb4f393f3.1561104194.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561104194.git.horms+renesas@verge.net.au>
References: <cover.1561104194.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021448_584675_1821187C 
X-CRM114-Status: GOOD (  11.82  )
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
Cc: Yoshihiro Kaneko <ykaneko0929@gmail.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Simon Horman <horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yoshihiro Kaneko <ykaneko0929@gmail.com>

This patch sorts the nodes of arch/arm/boot/dts/r7s9210-rza2mevb.dts.

* Sort subnodes of root ("/") node alphabetically
* Sort following top-level nodes alphabetically
* Sort subnodes of pinctrl alphabetically

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
[simon: rebase and sort new ehci nodes]
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm/boot/dts/r7s9210-rza2mevb.dts | 104 ++++++++++++++++-----------------
 1 file changed, 52 insertions(+), 52 deletions(-)

diff --git a/arch/arm/boot/dts/r7s9210-rza2mevb.dts b/arch/arm/boot/dts/r7s9210-rza2mevb.dts
index e140168da573..49c40065741b 100644
--- a/arch/arm/boot/dts/r7s9210-rza2mevb.dts
+++ b/arch/arm/boot/dts/r7s9210-rza2mevb.dts
@@ -26,11 +26,6 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory@40000000 {
-		device_type = "memory";
-		reg = <0x40000000 0x00800000>;	 /* HyperRAM */
-	};
-
 	lbsc {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -46,6 +41,41 @@
 			gpios = <&pinctrl RZA2_PIN(PORTC, 1) GPIO_ACTIVE_HIGH>;
 		};
 	};
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x40000000 0x00800000>;	 /* HyperRAM */
+	};
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&ether0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&eth0_pins>;
+	status = "okay";
+	renesas,no-ether-link;
+	phy-handle = <&phy0>;
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+	};
+};
+
+&ether1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&eth1_pins>;
+	status = "okay";
+	renesas,no-ether-link;
+	phy-handle = <&phy1>;
+	phy1: ethernet-phy@1 {
+		reg = <0>;
+	};
 };
 
 /* EXTAL */
@@ -53,23 +83,16 @@
 	clock-frequency = <24000000>;	/* 24MHz */
 };
 
-/* RTC_X1 */
-&rtc_x1_clk {
-	clock-frequency = <32768>;
+/* High resolution System tick timers */
+&ostm0 {
+	status = "okay";
 };
 
-/* USB_X1 */
-&usb_x1_clk {
-	clock-frequency = <48000000>;
+&ostm1 {
+	status = "okay";
 };
 
 &pinctrl {
-	/* Serial Console */
-	scif4_pins: serial4 {
-		pinmux = <RZA2_PINMUX(PORT9, 0, 4)>,	/* TxD4 */
-			 <RZA2_PINMUX(PORT9, 1, 4)>;	/* RxD4 */
-	};
-
 	eth0_pins: eth0 {
 		pinmux = <RZA2_PINMUX(PORTE, 0, 7)>, /* REF50CK0 */
 			 <RZA2_PINMUX(PORT6, 1, 7)>, /* RMMI0_TXDEN */
@@ -98,6 +121,12 @@
 			 <RZA2_PINMUX(PORTL, 1, 5)>; /* IRQ5 */
 	};
 
+	/* Serial Console */
+	scif4_pins: serial4 {
+		pinmux = <RZA2_PINMUX(PORT9, 0, 4)>,	/* TxD4 */
+			 <RZA2_PINMUX(PORT9, 1, 4)>;	/* RxD4 */
+	};
+
 	sdhi0_pins: sdhi0 {
 		pinmux = <RZA2_PINMUX(PORT5, 0, 3)>,	/* SD0_CD */
 			 <RZA2_PINMUX(PORT5, 1, 3)>;	/* SD0_WP */
@@ -121,13 +150,9 @@
 	};
 };
 
-/* High resolution System tick timers */
-&ostm0 {
-	status = "okay";
-};
-
-&ostm1 {
-	status = "okay";
+/* RTC_X1 */
+&rtc_x1_clk {
+	clock-frequency = <32768>;
 };
 
 /* Serial Console */
@@ -138,28 +163,6 @@
 	status = "okay";
 };
 
-&ether0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&eth0_pins>;
-	status = "okay";
-	renesas,no-ether-link;
-	phy-handle = <&phy0>;
-	phy0: ethernet-phy@0 {
-		reg = <0>;
-	};
-};
-
-&ether1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&eth1_pins>;
-	status = "okay";
-	renesas,no-ether-link;
-	phy-handle = <&phy1>;
-	phy1: ethernet-phy@1 {
-		reg = <0>;
-	};
-};
-
 &sdhi0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdhi0_pins>;
@@ -182,10 +185,6 @@
 	status = "okay";
 };
 
-&ehci0 {
-	status = "okay";
-};
-
 /* USB-1 as Host */
 &usb2_phy1 {
 	pinctrl-names = "default";
@@ -194,6 +193,7 @@
 	status = "okay";
 };
 
-&ehci1 {
-	status = "okay";
+/* USB_X1 */
+&usb_x1_clk {
+	clock-frequency = <48000000>;
 };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
