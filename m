Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE314EC52
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c5dDCEqo07cudbfGPA0rQu20LLDlsoR4jGuMYcEn8t8=; b=qsbOEHgh/tMxifFWRQTrtehjIs
	3V6eEvgxbMEDvFHlz0XKDeRQb/OjBTEWs1n+73WjBgH+b0Z84bRbtfP3kheRs0YZS1ZCJYrK/GQ0c
	GkcCQviInZuG8bbK3/6yHXfrkM86Kt7g3wTPcu/skeO0Ybq0EjkSz7JCCBvSqC5ZIjr9jnQ2QRXLx
	i3jLJuTPdE21PYIcCakzOY6Jn/YWLHXTG54TssY73j9HiuDO4iKQt9lHREsmbx2DU8wZoSToOZx+K
	4ARN6Cdq9kvZPx5d+nllUT0Jl/XjS7PXiYFzSrG51e/6Ux9kH4TcO8qdqLpgd2pEUECbJ0/qheezm
	dsL6A6jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLew-0006L0-9S; Fri, 21 Jun 2019 15:41:02 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLcx-0003jv-VU
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:39:04 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 730822009FC;
 Fri, 21 Jun 2019 17:38:56 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6502C200071;
 Fri, 21 Jun 2019 17:38:56 +0200 (CEST)
Received: from fsr-ub1664-016.ea.freescale.net
 (fsr-ub1664-016.ea.freescale.net [10.171.71.216])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id E7B4B20629;
 Fri, 21 Jun 2019 17:38:55 +0200 (CEST)
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next 4/6] arm64: dts: fsl: ls1028a: Add Felix switch port
 DT node
Date: Fri, 21 Jun 2019 18:38:50 +0300
Message-Id: <1561131532-14860-5-git-send-email-claudiu.manoil@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
References: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083900_421119_65A87A52 
X-CRM114-Status: GOOD (  10.00  )
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Allan Nielsen <Allan.Nielsen@microsemi.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the switch device node, available on PF5, so that the
switch port sub-nodes (net devices) can be linked to
corresponding board specific phy nodes (external ports) or
have their link mode defined (internal ports).
The switch device features 6 ports, 4 with external links
and 2 internally facing to the ls1028a SoC and connected via
fixed links to 2 internal enetc ethernet controller ports.
Add the corresponding enetc internal port device nodes,
mapped to PF2 and PF6 PCIe functions.
And don't forget to enable the 4MB BAR4 in the root complex
ECAM space, where the switch registers are mapped.

Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
---
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 58 ++++++++++++++++++-
 1 file changed, 57 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 4cdf84c63320..2462dd936212 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -421,7 +421,9 @@
 				  /* PF1: VF0-1 BAR0 - non-prefetchable memory */
 				  0x82000000 0x0 0x00000000  0x1 0xf8210000  0x0 0x020000
 				  /* PF1: VF0-1 BAR2 - prefetchable memory */
-				  0xc2000000 0x0 0x00000000  0x1 0xf8230000  0x0 0x020000>;
+				  0xc2000000 0x0 0x00000000  0x1 0xf8230000  0x0 0x020000
+				  /* BAR4 (PF5) - non-prefetchable memory */
+				  0x82000000 0x0 0x00000000  0x1 0xfc000000  0x0 0x400000>;
 
 			enetc_port0: ethernet@0,0 {
 				compatible = "fsl,enetc";
@@ -431,12 +433,66 @@
 				compatible = "fsl,enetc";
 				reg = <0x000100 0 0 0 0>;
 			};
+			ethernet@0,2 {
+				compatible = "fsl,enetc";
+				reg = <0x000200 0 0 0 0>;
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
 			ethernet@0,4 {
 				compatible = "fsl,enetc-ptp";
 				reg = <0x000400 0 0 0 0>;
 				clocks = <&clockgen 4 0>;
 				little-endian;
 			};
+			switch@0,5 {
+				compatible = "mscc,felix-switch";
+				reg = <0x000500 0 0 0 0>;
+
+				ethernet-ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					/* external ports */
+					switch_port0: port@0 {
+						reg = <0>;
+					};
+					switch_port1: port@1 {
+						reg = <1>;
+					};
+					switch_port2: port@2 {
+						reg = <2>;
+					};
+					switch_port3: port@3 {
+						reg = <3>;
+					};
+					/* internal to-cpu ports */
+					port@4 {
+						reg = <4>;
+						fixed-link {
+							speed = <1000>;
+							full-duplex;
+						};
+					};
+					port@5 {
+						reg = <5>;
+						fixed-link {
+							speed = <1000>;
+							full-duplex;
+						};
+					};
+				};
+			};
+			ethernet@0,6 {
+				compatible = "fsl,enetc";
+				reg = <0x000600 0 0 0 0>;
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
 		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
