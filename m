Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B9E7C130
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:23:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+DoCMvcW2+lXNofFw37I928G1E52SbZxHPPO0jdmdQ=; b=aIv1k3tbiVYoL4
	3HCcrMqRTJXFyt3mDwhXFxzmWWf/fd6CR5qmt5Ksk6ROANJLKHQGXHmDkTBIo4iqa2ciuD2VpuRZa
	LhsZS35xaJEyRpPJ2H95dh2r9eVdI1ncM0GR09tI5KGa/I6W3QxDsCOGt6M1rU8HwoIiSijZM3FTq
	SJInFDRxIY28RGEIXJeol9UDm1xNAdVJpVy+jq0Apysje0mb41dR8o4uv3noXGYGupbBA45v5aaJC
	EhPPzLHW7jpemWWU/VyiYM2+1CXnkA+wHd1PyF8C1d5tBzWCkp151E6T3qDMzQb4yZTxc3ZE8F3Ah
	Zq1DSZquA2GGvMvIUSJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsne1-0004pI-Lm; Wed, 31 Jul 2019 12:23:49 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnc6-0002dT-Fe
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:21:52 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id C6029FF802;
 Wed, 31 Jul 2019 12:21:46 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v3 13/19] dt-bindings: phy: Add Marvell COMPHY clocks
Date: Wed, 31 Jul 2019 14:21:20 +0200
Message-Id: <20190731122126.3049-14-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_052150_690491_5FCB1715 
X-CRM114-Status: GOOD (  11.92  )
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

Marvell CP110 COMPHY block is fed by 3 clocks. Describe each of them in the
bindings.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/phy/phy-mvebu-comphy.txt       | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt b/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
index cf2cd86db267..8c60e6985950 100644
--- a/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
+++ b/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
@@ -25,6 +25,13 @@ Required properties:
 - #address-cells: should be 1.
 - #size-cells: should be 0.
 
+Optional properlties:
+
+- clocks: pointers to the reference clocks for this device (CP110 only),
+          consequently: MG clock, MG Core clock, AXI clock.
+- clock-names: names of used clocks for CP110 only, must be :
+               "mg_clk", "mg_core_clk" and "axi_clk".
+
 A sub-node is required for each comphy lane provided by the comphy.
 
 Required properties (child nodes):
@@ -39,6 +46,9 @@ Examples:
 		compatible = "marvell,comphy-cp110";
 		reg = <0x120000 0x6000>;
 		marvell,system-controller = <&cpm_syscon0>;
+		clocks = <&CP110_LABEL(clk) 1 5>, <&CP110_LABEL(clk) 1 6>,
+			 <&CP110_LABEL(clk) 1 18>;
+		clock-names = "mg_clk", "mg_core_clk", "axi_clk";
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
