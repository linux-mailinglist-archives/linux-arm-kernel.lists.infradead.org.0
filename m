Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C10261ADA39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 11:40:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0PL2Nu++RVplAH7vMg1XGK+7iLOWVr+TROq4V3Qb3LA=; b=LBdKjeyAHodTef
	sZRuDebnXwgjxmbSPkQj+sRTNEgFzs/oNdWMviZJIV502jwK7ol206UBR/MdCJUKDwrq4aFF7Ssa4
	xNArWvvGxdB7rcT1EBDOsyPbwnoA8vS1qz1jtdOVviSpkA+WenH7Z+EKN337Nmuy3nodYNC9XRJ2B
	pQCvrAwcFBNWbFVTUWfz9MnpGmYUYbQtczU2igdaYu4m0UADTcOpf791YeSS7fBCVb5OKpOopKsVg
	IBOmpN8QESQJcJrZUEfh+YczZuhT0oiP3Isit9J558X1QSGEYduiw71Odtod6+oHOeS8DkjPfhIXM
	YGcwHYgsqeUwRrSK810Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPNTb-00054z-Gn; Fri, 17 Apr 2020 09:39:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPNT4-0004or-9P; Fri, 17 Apr 2020 09:39:29 +0000
X-UUID: c63c136a42134790a79c9d8f512e572c-20200417
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=nlQt2nILmeAfYJZD/GIkb4joRWVtFPqP0QhTiRZjBjk=; 
 b=Me4PoBJI1bq+ucic0Gq8gupzIALR/utRpHGhSSk8A4gMzm+8lGRIU3OY11VPpcEugnXFCJAMNpWRhlo53QmFYkfF5CDZrfR8E3/wUN08ovCbimwdRCNVyjK/Eh1K43xYYPzeqp6BAebMY0DFIrjm4ylJUfdBur786ov4Gbl4YPE=;
X-UUID: c63c136a42134790a79c9d8f512e572c-20200417
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chuanjia.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1095728834; Fri, 17 Apr 2020 01:39:16 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 17 Apr 2020 02:39:20 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 17 Apr 2020 17:39:20 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 17 Apr 2020 17:39:17 +0800
From: <chuanjia.liu@mediatek.com>
To: <robh+dt@kernel.org>, <bhelgaas@google.com>, <matthias.bgg@gmail.com>,
 <lorenzo.pieralisi@arm.com>, <amurray@thegoodpenguin.co.uk>
Subject: [PATCH 1/4] dt-bindings: PCI: Mediatek: Update PCIe binding
Date: Fri, 17 Apr 2020 17:35:02 +0800
Message-ID: <20200417093505.13978-2-chuanjia.liu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200417093505.13978-1-chuanjia.liu@mediatek.com>
References: <20200417093505.13978-1-chuanjia.liu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_023926_337653_04470CA6 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, ryder.lee@mediatek.com,
 srv_heupstream@mediatek.com, "chuanjia.liu" <Chuanjia.Liu@mediatek.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 jianjun.wang@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "chuanjia.liu" <Chuanjia.Liu@mediatek.com>

There are two independent PCIe controllers in MT2712/MT7622 platform,
and each of them should contain an independent MSI domain.

In current architecture, MSI domain will be inherited from the root
bridge, and all of the devices will share the same MSI domain.
Hence that, the PCIe devices will not work properly if the irq number
which required is more than 32.

Split the PCIe node for MT2712/MT7622 platform to fix MSI issue and
comply with the hardware design.

Signed-off-by: chuanjia.liu <Chuanjia.Liu@mediatek.com>
---
 .../bindings/pci/mediatek-pcie-cfg.yaml       |  38 ++++++
 .../devicetree/bindings/pci/mediatek-pcie.txt | 120 ++++++++++++------
 2 files changed, 117 insertions(+), 41 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/mediatek-pcie-cfg.yaml

diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie-cfg.yaml b/Documentation/devicetree/bindings/pci/mediatek-pcie-cfg.yaml
new file mode 100644
index 000000000000..4d2835ab4858
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/mediatek-pcie-cfg.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/mediatek-pcie-cfg.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek PCIECFG controller
+
+maintainers:
+  - Chuanjia Liu <chuanjia.liu@mediatek.com>
+  - Jianjun Wang <jianjun.wang@mediatek.com>
+
+description: |
+  The MediaTek PCIECFG controller controls some feature about
+  LTSSM, ASPM and so on.
+
+properties:
+  compatible:
+      items:
+        - enum:
+            - mediatek,mt7622-pciecfg
+            - mediatek,mt7629-pciecfg
+        - const: syscon
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    pciecfg: pciecfg@1a140000 {
+        compatible = "mediatek,mt7622-pciecfg", "syscon";
+        reg = <0 0x1a140000 0 0x1000>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie.txt b/Documentation/devicetree/bindings/pci/mediatek-pcie.txt
index 7468d666763a..039288f4f96b 100644
--- a/Documentation/devicetree/bindings/pci/mediatek-pcie.txt
+++ b/Documentation/devicetree/bindings/pci/mediatek-pcie.txt
@@ -8,7 +8,7 @@ Required properties:
 	"mediatek,mt7623-pcie"
 	"mediatek,mt7629-pcie"
 - device_type: Must be "pci"
-- reg: Base addresses and lengths of the PCIe subsys and root ports.
+- reg: Base addresses and lengths of the root ports.
 - reg-names: Names of the above areas to use during resource lookup.
 - #address-cells: Address representation for root ports (must be 3)
 - #size-cells: Size representation for root ports (must be 2)
@@ -19,10 +19,10 @@ Required properties:
    - sys_ckN :transaction layer and data link layer clock
   Required entries for MT2701/MT7623:
    - free_ck :for reference clock of PCIe subsys
-  Required entries for MT2712/MT7622:
+  Required entries for MT2712/MT7622/MT7629:
    - ahb_ckN :AHB slave interface operating clock for CSR access and RC
 	      initiated MMIO access
-  Required entries for MT7622:
+  Required entries for MT7622/MT7629:
    - axi_ckN :application layer MMIO channel operating clock
    - aux_ckN :pe2_mac_bridge and pe2_mac_core operating clock when
 	      pcie_mac_ck/pcie_pipe_ck is turned off
@@ -47,10 +47,13 @@ Required properties for MT7623/MT2701:
 - reset-names: Must be "pcie-rst0", "pcie-rst1", "pcie-rstN".. based on the
   number of root ports.
 
-Required properties for MT2712/MT7622:
+Required properties for MT2712/MT7622/MT7629:
 -interrupts: A list of interrupt outputs of the controller, must have one
 	     entry for each PCIe port
 
+Required properties for MT7622/MT7629:
+- mediatek,pcie-subsys: Should be a phandle of the pciecfg node.
+
 In addition, the device tree node must have sub-nodes describing each
 PCIe port interface, having the following mandatory properties:
 
@@ -143,27 +146,25 @@ Examples for MT7623:
 
 Examples for MT2712:
 
-	pcie: pcie@11700000 {
+	pcie0: pcie@11700000 {
 		compatible = "mediatek,mt2712-pcie";
 		device_type = "pci";
-		reg = <0 0x11700000 0 0x1000>,
-		      <0 0x112ff000 0 0x1000>;
-		reg-names = "port0", "port1";
+		reg = <0 0x11700000 0 0x1000>;
+		reg-names = "port0";
 		#address-cells = <3>;
 		#size-cells = <2>;
-		interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+		interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "pcie_irq";
 		clocks = <&topckgen CLK_TOP_PE2_MAC_P0_SEL>,
-			 <&topckgen CLK_TOP_PE2_MAC_P1_SEL>,
-			 <&pericfg CLK_PERI_PCIE0>,
-			 <&pericfg CLK_PERI_PCIE1>;
-		clock-names = "sys_ck0", "sys_ck1", "ahb_ck0", "ahb_ck1";
-		phys = <&pcie0_phy PHY_TYPE_PCIE>, <&pcie1_phy PHY_TYPE_PCIE>;
-		phy-names = "pcie-phy0", "pcie-phy1";
+			 <&pericfg CLK_PERI_PCIE0>;
+		clock-names = "sys_ck0", "ahb_ck0";
+		phys = <&u3port0 PHY_TYPE_PCIE>;
+		phy-names = "pcie-phy0";
 		bus-range = <0x00 0xff>;
-		ranges = <0x82000000 0 0x20000000  0x0 0x20000000  0 0x10000000>;
+		ranges = <0x82000000 0 0x20000000  0x0 0x20000000  0 0x8000000>;
+		status = "disabled";
 
-		pcie0: pcie@0,0 {
+		slot0: pcie@0,0 {
 			reg = <0x0000 0 0 0 0>;
 			#address-cells = <3>;
 			#size-cells = <2>;
@@ -180,8 +181,27 @@ Examples for MT2712:
 				#interrupt-cells = <1>;
 			};
 		};
+	};
 
-		pcie1: pcie@1,0 {
+	pcie1: pcie@112ff000 {
+		compatible = "mediatek,mt2712-pcie";
+		device_type = "pci";
+		reg = <0 0x112ff000 0 0x1000>;
+		reg-names = "port1";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "pcie_irq";
+		clocks = <&topckgen CLK_TOP_PE2_MAC_P1_SEL>,
+			 <&pericfg CLK_PERI_PCIE1>;
+		clock-names = "sys_ck1", "ahb_ck1";
+		phys = <&u3port1 PHY_TYPE_PCIE>;
+		phy-names = "pcie-phy1";
+		bus-range = <0x00 0xff>;
+		ranges = <0x82000000 0 0x28000000  0x0 0x28000000  0 0x8000000>;
+		status = "disabled";
+
+		slot1: pcie@1,0 {
 			reg = <0x0800 0 0 0 0>;
 			#address-cells = <3>;
 			#size-cells = <2>;
@@ -202,39 +222,31 @@ Examples for MT2712:
 
 Examples for MT7622:
 
-	pcie: pcie@1a140000 {
+	pcie0: pcie@1a143000 {
 		compatible = "mediatek,mt7622-pcie";
 		device_type = "pci";
-		reg = <0 0x1a140000 0 0x1000>,
-		      <0 0x1a143000 0 0x1000>,
-		      <0 0x1a145000 0 0x1000>;
-		reg-names = "subsys", "port0", "port1";
+		reg = <0 0x1a143000 0 0x1000>;
+		reg-names = "port0";
+		mediatek,pcie-cfg = <&pciecfg>;
 		#address-cells = <3>;
 		#size-cells = <2>;
-		interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_LOW>,
-			     <GIC_SPI 229 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-names = "pcie_irq";
 		clocks = <&pciesys CLK_PCIE_P0_MAC_EN>,
-			 <&pciesys CLK_PCIE_P1_MAC_EN>,
 			 <&pciesys CLK_PCIE_P0_AHB_EN>,
-			 <&pciesys CLK_PCIE_P1_AHB_EN>,
 			 <&pciesys CLK_PCIE_P0_AUX_EN>,
-			 <&pciesys CLK_PCIE_P1_AUX_EN>,
 			 <&pciesys CLK_PCIE_P0_AXI_EN>,
-			 <&pciesys CLK_PCIE_P1_AXI_EN>,
 			 <&pciesys CLK_PCIE_P0_OBFF_EN>,
-			 <&pciesys CLK_PCIE_P1_OBFF_EN>,
-			 <&pciesys CLK_PCIE_P0_PIPE_EN>,
-			 <&pciesys CLK_PCIE_P1_PIPE_EN>;
-		clock-names = "sys_ck0", "sys_ck1", "ahb_ck0", "ahb_ck1",
-			      "aux_ck0", "aux_ck1", "axi_ck0", "axi_ck1",
-			      "obff_ck0", "obff_ck1", "pipe_ck0", "pipe_ck1";
-		phys = <&pcie0_phy PHY_TYPE_PCIE>, <&pcie1_phy PHY_TYPE_PCIE>;
-		phy-names = "pcie-phy0", "pcie-phy1";
+			 <&pciesys CLK_PCIE_P0_PIPE_EN>;
+		clock-names = "sys_ck0", "ahb_ck0", "aux_ck0",
+			      "axi_ck0", "obff_ck0", "pipe_ck0";
+
 		power-domains = <&scpsys MT7622_POWER_DOMAIN_HIF0>;
 		bus-range = <0x00 0xff>;
-		ranges = <0x82000000 0 0x20000000  0x0 0x20000000  0 0x10000000>;
+		ranges = <0x82000000 0 0x20000000  0 0x20000000  0 0x8000000>;
+		status = "disabled";
 
-		pcie0: pcie@0,0 {
+		slot0: pcie@0,0 {
 			reg = <0x0000 0 0 0 0>;
 			#address-cells = <3>;
 			#size-cells = <2>;
@@ -251,8 +263,34 @@ Examples for MT7622:
 				#interrupt-cells = <1>;
 			};
 		};
+	};
+
+	pcie1: pcie@1a145000 {
+		compatible = "mediatek,mt7622-pcie";
+		device_type = "pci";
+		reg = <0 0x1a145000 0 0x1000>;
+		reg-names = "port1";
+		mediatek,pcie-cfg = <&pciecfg>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-names = "pcie_irq";
+		clocks = <&pciesys CLK_PCIE_P1_MAC_EN>,
+			 /* designer has connect RC1 with p0_ahb clock */
+			 <&pciesys CLK_PCIE_P0_AHB_EN>,
+			 <&pciesys CLK_PCIE_P1_AUX_EN>,
+			 <&pciesys CLK_PCIE_P1_AXI_EN>,
+			 <&pciesys CLK_PCIE_P1_OBFF_EN>,
+			 <&pciesys CLK_PCIE_P1_PIPE_EN>;
+		clock-names = "sys_ck1", "ahb_ck1", "aux_ck1",
+			      "axi_ck1", "obff_ck1", "pipe_ck1";
+
+		power-domains = <&scpsys MT7622_POWER_DOMAIN_HIF0>;
+		bus-range = <0x00 0xff>;
+		ranges = <0x82000000 0 0x28000000  0 0x28000000  0 0x8000000>;
+		status = "disabled";
 
-		pcie1: pcie@1,0 {
+		slot1: pcie@1,0 {
 			reg = <0x0800 0 0 0 0>;
 			#address-cells = <3>;
 			#size-cells = <2>;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
