Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19F97C139
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:25:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8l3Te9sHZPknDRBZ3Ot6MdHdbkO1T4fIt899OxKL5lg=; b=G/7JzqTp+5dyyD
	7FcksC5UwNEcP10GUKXJkH29+aUQrwKlhR12xGiE66Yi3+Eu1jR+UNavIK2kXL6NQs1NzoRVJe8kc
	c5DHoPMI6+WyznJg0lfFMu7GqarBmv2Mb2e3IG+I6Z8mhCh+/0M6ofRFYGDvmrmydEmgnvd9cquj3
	J1jIlFOWBD1rR+lmQeBoRiFNx3WZVpLa2bszVfP2l+tccrcy/xZ7tpWZNmjkEQmP1u56HQ6KwFP1y
	0aGGjuuixRDCGLZDvwuG5IIgFzWaoRA2FwcjfTP8/DIUgbsZOLed2jL5VpjdAYlYyp0JDoAu1yWMn
	SK7Y1jMUgwWozsQBJKfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnfM-0006aG-Rg; Wed, 31 Jul 2019 12:25:12 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsncB-0002jC-4b
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:21:56 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 0608AFF814;
 Wed, 31 Jul 2019 12:21:51 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v3 17/19] arm64: dts: marvell: Add 7k/8k PHYs in USB3 nodes
Date: Wed, 31 Jul 2019 14:21:24 +0200
Message-Id: <20190731122126.3049-18-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_052155_357337_70885894 
X-CRM114-Status: GOOD (  11.73  )
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

Fill-in the missing USB3 phys/phy-names DT properties of Armada 7k/8k
based boards. Only update nodes actually enabling USB3 in the default
(mainline) configuration. A few USB nodes are enabled but there is
only USB2 working on them.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-7040-db.dts             | 4 ++++
 arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 2 ++
 arch/arm64/boot/dts/marvell/armada-8040-db.dts             | 2 ++
 arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi         | 2 ++
 4 files changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-7040-db.dts b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
index 45eb4197e603..81bea91468f7 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
@@ -228,11 +228,15 @@
 
 &cp0_usb3_0 {
 	usb-phy = <&cp0_usb3_0_phy>;
+	phys = <&cp0_comphy1 0>;
+	phy-names = "cp0-usb3h0-comphy";
 	status = "okay";
 };
 
 &cp0_usb3_1 {
 	usb-phy = <&cp0_usb3_1_phy>;
+	phys = <&cp0_comphy4 1>;
+	phy-names = "cp0-usb3h1-comphy";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index 1527c82177ab..281209aa7f2c 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -474,5 +474,7 @@
 
 &cp1_usb3_0 {
 	usb-phy = <&usb3h0_phy>;
+	phys = <&cp1_comphy2 0>;
+	phy-names = "cp1-usb3h0-comphy";
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-db.dts b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
index 66afed6c6245..1086d53fd1b9 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
@@ -163,6 +163,8 @@
 /* CON10 on CP0 expansion */
 &cp0_usb3_1 {
 	usb-phy = <&cp0_usb3_1_phy>;
+	phys = <&cp0_comphy4 1>;
+	phy-names = "cp0-usb3h1-comphy";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
index b8f28d62be5c..6b9941d92e20 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
@@ -359,5 +359,7 @@
 &cp1_usb3_0 {
 	/* CPS Lane 2 - CON7 */
 	usb-phy = <&usb3h0_phy>;
+	phys = <&cp1_comphy2 0>;
+	phy-names = "cp1-usb3h0-comphy";
 	status = "okay";
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
