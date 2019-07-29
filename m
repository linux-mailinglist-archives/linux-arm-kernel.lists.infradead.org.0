Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F357F7892C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 12:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Inq0wUX4mskkUYfVLFXOgtbX85qSU8yawpX8NRTR9Yk=; b=HhSPShXrRpIOiEPuUXSfY/h9u/
	hmpEweOp3F6vh5xnKIG/lYPyOAbCL0S9hZLObV4tr/g617ueElWkeAwXIbwlReWe4VjZQrTRgla3/
	kIAurr9xgBtcPJlF52qboipPnrSGv6lqN23Om/BmuDB8GDKt68gEMBXpIwqwmVIjCkdtEIJsz17sJ
	mth36PSuDeEUGjBFnpKXQmsl46E0Uwf2Mn7PdRczvgiw3aJdF3UuTd/b1z54Yh/kvlNR58O6TiPyA
	AhD7HyNeg6wpAO/KtGs027lEDYBnbRffVez3jw7Iqiiqd7pHozHiXMs5ZiI/i0NMiXELoc6/QrhXT
	W1TAhdKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs2WT-0005MT-LS; Mon, 29 Jul 2019 10:04:53 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs2VU-0004ee-Rr
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 10:03:55 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 35D8F2014D2;
 Mon, 29 Jul 2019 12:03:51 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 260172014CE;
 Mon, 29 Jul 2019 12:03:51 +0200 (CEST)
Received: from fsr-ub1664-016.ea.freescale.net
 (fsr-ub1664-016.ea.freescale.net [10.171.71.216])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id B199A205F3;
 Mon, 29 Jul 2019 12:03:50 +0200 (CEST)
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next v3 4/4] arm64: dts: fsl: ls1028a: Enable eth port1 on
 the ls1028a QDS board
Date: Mon, 29 Jul 2019 13:03:47 +0300
Message-Id: <1564394627-3810-5-git-send-email-claudiu.manoil@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564394627-3810-1-git-send-email-claudiu.manoil@nxp.com>
References: <1564394627-3810-1-git-send-email-claudiu.manoil@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_030353_172873_B268AADC 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: andrew@lunn.ch, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LS1028a has one Ethernet management interface. On the QDS board, the
MDIO signals are multiplexed to either on-board AR8035 PHY device or
to 4 PCIe slots allowing for SGMII cards.
To enable the Ethernet ENETC Port 1, which can only be connected to a
RGMII PHY, the multiplexer needs to be configured to route the MDIO to
the AR8035 PHY.  The MDIO/MDC routing is controlled by bits 7:4 of FPGA
board config register 0x54, and value 0 selects the on-board RGMII PHY.
The FPGA board config registers are accessible on the i2c bus, at address
0x66.

The PF3 MDIO PCIe integrated endpoint device allows for centralized access
to the MDIO bus.  Add the corresponding devicetree node and set it to be
the MDIO bus parent.

Signed-off-by: Alex Marginean <alexandru.marginean@nxp.com>
Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
---
v1 - none
v2 - none
v3 - none

 .../boot/dts/freescale/fsl-ls1028a-qds.dts    | 40 +++++++++++++++++++
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi |  6 +++
 2 files changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
index de6ef39f3118..663c4b728c07 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
@@ -85,6 +85,26 @@
 			system-clock-frequency = <25000000>;
 		};
 	};
+
+	mdio-mux {
+		compatible = "mdio-mux-multiplexer";
+		mux-controls = <&mux 0>;
+		mdio-parent-bus = <&enetc_mdio_pf3>;
+		#address-cells=<1>;
+		#size-cells = <0>;
+
+		/* on-board RGMII PHY */
+		mdio@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+
+			qds_phy1: ethernet-phy@5 {
+				/* Atheros 8035 */
+				reg = <5>;
+			};
+		};
+	};
 };
 
 &duart0 {
@@ -164,6 +184,26 @@
 			};
 		};
 	};
+
+	fpga@66 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "fsl,ls1028aqds-fpga", "fsl,fpga-qixis-i2c",
+			     "simple-mfd";
+		reg = <0x66>;
+
+		mux: mux-controller {
+			compatible = "reg-mux";
+			#mux-control-cells = <1>;
+			mux-reg-masks = <0x54 0xf0>; /* 0: reg 0x54, bits 7:4 */
+		};
+	};
+
+};
+
+&enetc_port1 {
+	phy-handle = <&qds_phy1>;
+	phy-connection-type = "rgmii-id";
 };
 
 &sai1 {
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 7975519b4f56..de71153fda00 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -536,6 +536,12 @@
 				compatible = "fsl,enetc";
 				reg = <0x000100 0 0 0 0>;
 			};
+			enetc_mdio_pf3: mdio@0,3 {
+				compatible = "fsl,enetc-mdio";
+				reg = <0x000300 0 0 0 0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 			ethernet@0,4 {
 				compatible = "fsl,enetc-ptp";
 				reg = <0x000400 0 0 0 0>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
