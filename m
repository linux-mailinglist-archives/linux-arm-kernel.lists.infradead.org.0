Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B19136CA1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:59:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8AKBYqq/JJHuLjEtqZ0gwMuoNzCkZ8ZmEFPs4lwt21E=; b=pCiQUBXkVQTlNO9tz7PF5zkWwA
	EFIkabSrnyNjmnZpfNShf1dsTPXhgsSuM07dmAoc/zj+RiHFM5RnyheXIL4hZZk4kdpwPkig6oduk
	hIISdyRnsQtukpcx+LSH8aCPBZNqMgbeLff84g6TGgXQ0KIn4vMe7HGteRKexO2pEbfmVSM0SwYs2
	Iy7xAMIlweiNf0E9ZOtZNbfBvwtrHhu8dnhR00d/n/GZbC66yxc1TAeXzYPYJipHboY91pprcaXaX
	NmiIxVe4RuZZxVgWa6jw66IkqVY8yN5Z3uqWVpJvX89f3TEi79KtG/0Tz+PX5I9YYiNLADZlIcuDd
	PR0pqPFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipswe-0003TN-RE; Fri, 10 Jan 2020 11:59:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipssF-0006se-Cp
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 11:54:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C452D1474;
 Fri, 10 Jan 2020 03:54:42 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 48F7D3F534;
 Fri, 10 Jan 2020 03:54:41 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH 14/14] net: axienet: Update devicetree binding documentation
Date: Fri, 10 Jan 2020 11:54:15 +0000
Message-Id: <20200110115415.75683-15-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110115415.75683-1-andre.przywara@arm.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_035443_571421_F9CA53BF 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, Robert Hancock <hancock@sedsystems.ca>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds documentation about the newly introduced, optional
"xlnx,addrwidth" property to the binding documentation.

While at it, clarify the wording on some properties, replace obsolete
.txt file references with their new .yaml counterparts, and add a more
modern example, using the axistream-connected property.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../bindings/net/xilinx_axienet.txt           | 57 ++++++++++++++++---
 1 file changed, 50 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/xilinx_axienet.txt b/Documentation/devicetree/bindings/net/xilinx_axienet.txt
index 7360617cdedb..78c278c5200f 100644
--- a/Documentation/devicetree/bindings/net/xilinx_axienet.txt
+++ b/Documentation/devicetree/bindings/net/xilinx_axienet.txt
@@ -12,7 +12,8 @@ sent and received through means of an AXI DMA controller. This driver
 includes the DMA driver code, so this driver is incompatible with AXI DMA
 driver.
 
-For more details about mdio please refer phy.txt file in the same directory.
+For more details about mdio please refer to the ethernet-phy.yaml file in
+the same directory.
 
 Required properties:
 - compatible	: Must be one of "xlnx,axi-ethernet-1.00.a",
@@ -27,14 +28,14 @@ Required properties:
 		  instead, and only the Ethernet core interrupt is optionally
 		  specified here.
 - phy-handle	: Should point to the external phy device.
-		  See ethernet.txt file in the same directory.
-- xlnx,rxmem	: Set to allocated memory buffer for Rx/Tx in the hardware
+		  See the ethernet-controller.yaml file in the same directory.
+- xlnx,rxmem	: Size of the RXMEM buffer in the hardware, in bytes.
 
 Optional properties:
-- phy-mode	: See ethernet.txt
+- phy-mode	: See ethernet-controller.yaml.
 - xlnx,phy-type	: Deprecated, do not use, but still accepted in preference
 		  to phy-mode.
-- xlnx,txcsum	: 0 or empty for disabling TX checksum offload,
+- xlnx,txcsum	: 0 for disabling TX checksum offload (default if omitted),
 		  1 to enable partial TX checksum offload,
 		  2 to enable full TX checksum offload
 - xlnx,rxcsum	: Same values as xlnx,txcsum but for RX checksum offload
@@ -48,10 +49,20 @@ Optional properties:
 		       If this is specified, the DMA-related resources from that
 		       device (DMA registers and DMA TX/RX interrupts) rather
 		       than this one will be used.
- - mdio		: Child node for MDIO bus. Must be defined if PHY access is
+- mdio		: Child node for MDIO bus. Must be defined if PHY access is
 		  required through the core's MDIO interface (i.e. always,
 		  unless the PHY is accessed through a different bus).
 
+Required properties for axistream-connected subnode:
+- reg		: Address and length of the AXI DMA controller MMIO space.
+- interrupts	: A list of 2 interrupts: TX DMA and RX DMA, in that order.
+
+Optional properties for axistream-connected subnode:
+- xlnx,addrwidth: Specifies the configured address width of the DMA. Newer
+		  versions of the IP allow setting this to a value between
+		  32 and 64. Defaults to 32 bits if not specified.
+
+
 Example:
 	axi_ethernet_eth: ethernet@40c00000 {
 		compatible = "xlnx,axi-ethernet-1.00.a";
@@ -60,7 +71,7 @@ Example:
 		interrupts = <2 0 1>;
 		clocks = <&axi_clk>;
 		phy-mode = "mii";
-		reg = <0x40c00000 0x40000 0x50c00000 0x40000>;
+		reg = <0x40c00000 0x40000>, <0x50c00000 0x40000>;
 		xlnx,rxcsum = <0x2>;
 		xlnx,rxmem = <0x800>;
 		xlnx,txcsum = <0x2>;
@@ -74,3 +85,35 @@ Example:
 			};
 		};
 	};
+    -----------------
+	axi_ethernet_eth: ethernet@7fe00000 {
+		compatible = "acme,fpga-ethernet", "xlnx,axi-ethernet-1.00.a";
+		reg = <0 0x7fe00000 0 0x40000>;
+		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&soc_refclk100mhz>;
+
+		phy-mode = "sgmii";
+		phy-handle = <&phy0>;
+
+		xlnx,rxmem = <4096>;
+		axistream-connected = <&axi_dma_eth>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		axi_dma_eth: axi_dma_ethernet@7fe40000 {
+			reg = <0 0x7fe40000 0 0x10000>;
+			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+			xlnx,addrwidth = <40>;
+		};
+
+		axi_ethernetlite_0_mdio: mdio {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			phy0: phy@1 {
+				compatible = "ethernet-phy-ieee802.3-c22";
+				reg = <1>;
+			};
+		};
+	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
