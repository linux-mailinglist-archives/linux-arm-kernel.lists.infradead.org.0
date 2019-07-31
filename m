Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C95EA7C135
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fuJ6HvcouKpyHTAl3UXHsATv3eI58ffqDprSX0Kd8FM=; b=fSCYX3SNa0G1J8
	ZnYZP9GDhqJ0Zp8yJP3vCYQ/t5n29W6txq/WVqvk8XcjseErHs/e725Dq4yaFc9oInBHuJEphrSmr
	CNzrSI/Jg5peulUAmqkYb28PP87u02ZnbuyH7ReljMWl6iv036rlvEE/Qt+exqtKultpAjY+5zv1l
	G7gU74UwZyHtKPr0KEOFNF8jd002jySgoRberKaZmtWWLwj/cc3RfI8SZDEQTW7mPgpz8PQPvXdyn
	fBwcamJmwY3XUiwoNGtYtZe2FxyNZsMwiLU0y5nzxz5kNYQnNSxTPQ+FR/Wz841HOgmYADfeq5bj6
	NT5QYuDYyHZ5ILEImz8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsned-0005hg-Ke; Wed, 31 Jul 2019 12:24:27 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnc9-0002hH-FQ
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:21:55 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id A7B25FF803;
 Wed, 31 Jul 2019 12:21:50 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v3 16/19] arm64: dts: marvell: Add 7k/8k per-port PHYs in SATA
 nodes
Date: Wed, 31 Jul 2019 14:21:23 +0200
Message-Id: <20190731122126.3049-17-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_052153_847681_AA0CE545 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>, Russell King <linux@armlinux.org.uk>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fill-in the missing SATA phys/phy-names DT properties of Armada 7k/8k
based boards.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../arm64/boot/dts/marvell/armada-7040-db.dts |  5 +++++
 .../marvell/armada-8040-clearfog-gt-8k.dts    |  5 +++++
 .../arm64/boot/dts/marvell/armada-8040-db.dts | 18 ++++++++++++++++++
 .../boot/dts/marvell/armada-8040-mcbin.dtsi   | 19 +++++++++++++++++--
 arch/arm64/boot/dts/marvell/armada-cp110.dtsi | 10 ++++++++++
 5 files changed, 55 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-7040-db.dts b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
index f34ee87a0f56..45eb4197e603 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
@@ -219,6 +219,11 @@
 
 &cp0_sata0 {
 	status = "okay";
+
+	sata-port@1 {
+		phys = <&cp0_comphy3 1>;
+		phy-names = "cp0-sata0-1-phy";
+	};
 };
 
 &cp0_usb3_0 {
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index f275d9420d5b..1527c82177ab 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -348,6 +348,11 @@
 &cp1_sata0 {
 	pinctrl-0 = <&cp0_pci1_reset_pins>;
 	status = "okay";
+
+	sata-port@1 {
+		phys = <&cp1_comphy0 1>;
+		phy-names = "cp1-sata0-1-phy";
+	};
 };
 
 &cp1_mdio {
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-db.dts b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
index d6e9c014c2f9..66afed6c6245 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
@@ -143,6 +143,15 @@
 /* CON4 on CP0 expansion */
 &cp0_sata0 {
 	status = "okay";
+
+	sata-port@0 {
+		phys = <&cp0_comphy1 0>;
+		phy-names = "cp0-sata0-0-phy";
+	};
+	sata-port@1 {
+		phys = <&cp0_comphy3 1>;
+		phy-names = "cp0-sata0-1-phy";
+	};
 };
 
 /* CON9 on CP0 expansion */
@@ -273,6 +282,15 @@
 /* CON4 on CP1 expansion */
 &cp1_sata0 {
 	status = "okay";
+
+	sata-port@0 {
+		phys = <&cp1_comphy1 0>;
+		phy-names = "cp1-sata0-0-phy";
+	};
+	sata-port@1 {
+		phys = <&cp1_comphy3 1>;
+		phy-names = "cp1-sata0-1-phy";
+	};
 };
 
 /* CON9 on CP1 expansion */
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
index 205071b45a32..b8f28d62be5c 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
@@ -239,8 +239,13 @@
 };
 
 &cp0_sata0 {
-	/* CPM Lane 0 - U29 */
 	status = "okay";
+
+	/* CPM Lane 5 - U29 */
+	sata-port@1 {
+		phys = <&cp0_comphy5 1>;
+		phy-names = "cp0-sata0-1-phy";
+	};
 };
 
 &cp0_sdhci0 {
@@ -324,9 +329,19 @@
 };
 
 &cp1_sata0 {
+	status = "okay";
+
 	/* CPS Lane 1 - U32 */
+	sata-port@0 {
+		phys = <&cp1_comphy1 0>;
+		phy-names = "cp1-sata0-0-phy";
+	};
+
 	/* CPS Lane 3 - U31 */
-	status = "okay";
+	sata-port@1 {
+		phys = <&cp1_comphy3 1>;
+		phy-names = "cp1-sata0-1-phy";
+	};
 };
 
 &cp1_spi1 {
diff --git a/arch/arm64/boot/dts/marvell/armada-cp110.dtsi b/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
index 711f38029311..d81944902650 100644
--- a/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
@@ -309,7 +309,17 @@
 			interrupts = <107 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&CP110_LABEL(clk) 1 15>,
 				 <&CP110_LABEL(clk) 1 16>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			status = "disabled";
+
+			sata-port@0 {
+				reg = <0>;
+			};
+
+			sata-port@1 {
+				reg = <1>;
+			};
 		};
 
 		CP110_LABEL(xor0): xor@6a0000 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
