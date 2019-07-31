Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E197C7C13A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3/8ULHfTonuY6DyKl2ks3H3+hZJv6mhv0dHU0XtmGM=; b=PF/G7nCU5gSOXR
	vOG+EZBfkqR49rb4FRlQfgglcaxf+urDx/ua4fW+QUby0h26z0ZbqE+04G8H24jOONx4CM3zkrynq
	Yf0a1uGpZRf65+KQv4HWiy8P+m+PAi7KUXnLIgdp/XUoml1zpC7F6vgYDL5/7NeLiSXAyNJnqDzv0
	6d0+rJpEudTSfve7TlIRoUe9J1x+oro60CftLsuV6k25mLoFqpRG75uMwLOUuCClkUg56NGYpagQ4
	WeucR8s8trJVcZIKNv1/5iPkmLumEj/O0o9yU7V+eIz5UYspNnegX4W0BYA4SlB2u3h4l9EMXLR0t
	Wr0ApTIcZKNdc70ZEEWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnfT-00081u-Fc; Wed, 31 Jul 2019 12:25:19 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsncC-0002kk-CX
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:21:58 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 7E31EFF813;
 Wed, 31 Jul 2019 12:21:53 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v3 18/19] arm64: dts: marvell: Add 7k/8k PHYs in PCIe nodes
Date: Wed, 31 Jul 2019 14:21:25 +0200
Message-Id: <20190731122126.3049-19-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_052156_759725_3AB7D299 
X-CRM114-Status: GOOD (  12.71  )
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

Fill-in the missing PCIe phys/phy-names DT properties of Armada 7k/8k
based boards.

The MacchiatoBin is a bit particular as the Armada8k-PCI IP supports
x4 link widths and in this case the PHY for each lane must be
referenced.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-7040-db.dts         |  2 ++
 .../boot/dts/marvell/armada-8040-clearfog-gt-8k.dts    |  2 ++
 arch/arm64/boot/dts/marvell/armada-8040-db.dts         | 10 ++++++++++
 arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi     |  4 ++++
 4 files changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-7040-db.dts b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
index 81bea91468f7..d1160edf57e0 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
@@ -124,6 +124,8 @@
 
 &cp0_pcie2 {
 	status = "okay";
+	phys = <&cp0_comphy5 2>;
+	phy-names = "cp0-pcie2-x1-phy";
 };
 
 &cp0_i2c0 {
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index 281209aa7f2c..bcb0421c7ac0 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -243,6 +243,8 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&cp0_pci0_reset_pins &cp0_wlan_disable_pins>;
 	reset-gpios = <&cp0_gpio2 0 GPIO_ACTIVE_LOW>;
+	phys = <&cp0_comphy0 0>;
+	phy-names = "cp0-pcie0-x1-phy";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-db.dts b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
index 1086d53fd1b9..9746969e8da9 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
@@ -108,11 +108,15 @@
 
 /* CON6 on CP0 expansion */
 &cp0_pcie0 {
+	phys = <&cp0_comphy0 0>;
+	phy-names = "cp0-pcie0-x1-phy";
 	status = "okay";
 };
 
 /* CON5 on CP0 expansion */
 &cp0_pcie2 {
+	phys = <&cp0_comphy5 2>;
+	phy-names = "cp0-pcie2-x1-phy";
 	status = "okay";
 };
 
@@ -198,16 +202,22 @@
 
 /* CON6 on CP1 expansion */
 &cp1_pcie0 {
+	phys = <&cp1_comphy0 0>;
+	phy-names = "cp1-pcie0-x1-phy";
 	status = "okay";
 };
 
 /* CON7 on CP1 expansion */
 &cp1_pcie1 {
+	phys = <&cp1_comphy4 1>;
+	phy-names = "cp1-pcie1-x1-phy";
 	status = "okay";
 };
 
 /* CON5 on CP1 expansion */
 &cp1_pcie2 {
+	phys = <&cp1_comphy5 2>;
+	phy-names = "cp1-pcie2-x1-phy";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
index 6b9941d92e20..a2c099a12e55 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
@@ -186,6 +186,10 @@
 	reset-gpios = <&cp0_gpio2 20 GPIO_ACTIVE_LOW>;
 	ranges = <0x81000000 0x0 0xf9010000 0x0 0xf9010000 0x0 0x10000
 		  0x82000000 0x0 0xc0000000 0x0 0xc0000000 0x0 0x20000000>;
+	phys = <&cp0_comphy0 0>, <&cp0_comphy1 0>,
+	       <&cp0_comphy2 0>, <&cp0_comphy3 0>;
+	phy-names = "cp0-pcie0-x4-lane0-phy", "cp0-pcie0-x4-lane1-phy",
+		    "cp0-pcie0-x4-lane2-phy", "cp0-pcie0-x4-lane3-phy";
 	status = "okay";
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
