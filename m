Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A878E184E30
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:56:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+Xk7Ire+IIuZ0hs1t55Kc3zywKbv35etJi5xuVSRTk=; b=l2cjMdoJy0qq2b
	rLeUutgd1SjrsWBfatWcJK8ZV5kS5PKxTz1+BNnF7Lcq+3Fm32R9RgTVMMDpIqdr1BB8byaw47W5i
	IGH4rb/IT49XdbHqvQqaYbaoqnvpfDwmDIBxCcScj27llJmi56xaUWA4538s1PPCx2EW+0uOO3pOY
	j4zScCDehqCKtRqX45hsaDoFXzuc+1dteUzgr9mYO3cT5EmxtjPch9XMUVuYegMpzLvQcpUcviK1e
	TrjaoGTjKXIdOWFYcMzoYm8wwZZDx4tHeaSgf6VpkEDhwcxPPWxTZXHdBaUTojqG4tIFNIcBKgyho
	TNJ2vOre8Tmiudx7pbXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCoYC-0000rR-W9; Fri, 13 Mar 2020 17:56:49 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCoXN-0000It-If
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 17:56:01 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02DHtrX9093567;
 Fri, 13 Mar 2020 12:55:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584122153;
 bh=9+M3/8GqrSV5XRtykrwOoSSg5AaxCJwgeHTmu7ukxlU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Q8z7MWVAGSnt9hBJFlwpwxZyci7w7/4hEMXNoeuNWlzIvNRTWZJ9k4kUfXu+aLOwC
 pWpLPEyYM/fyME7b0dSVyuQxbcf253hVD3oy0YZR787l4HThnYYTt8QbHbuZcFLd89
 cYe3nFQ92ZbebYOIymoDyKTwB0tL/aZTlvGwJp/M=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02DHtrdJ103231
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 13 Mar 2020 12:55:53 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 13
 Mar 2020 12:55:53 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 13 Mar 2020 12:55:52 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02DHtpJZ026883;
 Fri, 13 Mar 2020 12:55:52 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Tero Kristo <t-kristo@ti.com>, "David S
 . Miller" <davem@davemloft.net>, netdev <netdev@vger.kernel.org>, Roger
 Quadros <rogerq@ti.com>, <devicetree@vger.kernel.org>, Jakub Kicinski
 <kuba@kernel.org>
Subject: [PATCH net-next v3 04/10] dt-binding: ti: am65x: document mcu cpsw
 nuss
Date: Fri, 13 Mar 2020 19:55:05 +0200
Message-ID: <20200313175511.2155-5-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313175511.2155-1-grygorii.strashko@ti.com>
References: <20200313175511.2155-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_105557_732044_1A06D1B1 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document device tree bindings for The TI AM654x/J721E SoC Gigabit Ethernet MAC
(Media Access Controller - CPSW2G NUSS). The CPSW NUSS provides Ethernet packet
communication for the device.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 .../bindings/net/ti,k3-am654-cpsw-nuss.yaml   | 226 ++++++++++++++++++
 1 file changed, 226 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml

diff --git a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
new file mode 100644
index 000000000000..c28b5c925377
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
@@ -0,0 +1,226 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/ti,k3-am654-cpsw-nuss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: The TI AM654x/J721E SoC Gigabit Ethernet MAC (Media Access Controller) Device Tree Bindings
+
+maintainers:
+  - Grygorii Strashko <grygorii.strashko@ti.com>
+  - Sekhar Nori <nsekhar@ti.com>
+
+description:
+  The TI AM654x/J721E SoC Gigabit Ethernet MAC (CPSW2G NUSS) has two ports
+  (one external) and provides Ethernet packet communication for the device.
+  CPSW2G NUSS features - the Reduced Gigabit Media Independent Interface (RGMII),
+  Reduced Media Independent Interface (RMII), the Management Data
+  Input/Output (MDIO) interface for physical layer device (PHY) management,
+  new version of Common Platform Time Sync (CPTS), updated Address Lookup
+  Engine (ALE).
+  One external Ethernet port (port 1) with selectable RGMII/RMII interfaces and
+  an internal Communications Port Programming Interface (CPPI5) (Host port 0).
+  Host Port 0 CPPI Packet Streaming Interface interface supports 8 TX channels
+  and one RX channels and operating by TI AM654x/J721E NAVSS Unified DMA
+  Peripheral Root Complex (UDMA-P) controller.
+  The CPSW2G NUSS is integrated into device MCU domain named MCU_CPSW0.
+
+  Additional features
+  priority level Quality Of Service (QOS) support (802.1p)
+  Support for Audio/Video Bridging (P802.1Qav/D6.0)
+  Support for IEEE 1588 Clock Synchronization (2008 Annex D, Annex E and Annex F)
+  Flow Control (802.3x) Support
+  Time Sensitive Network Support
+  IEEE P902.3br/D2.0 Interspersing Express Traffic
+  IEEE 802.1Qbv/D2.2 Enhancements for Scheduled Traffic
+  Configurable number of addresses plus VLANs
+  Configurable number of classifier/policers
+  VLAN support, 802.1Q compliant, Auto add port VLAN for untagged frames on
+  ingress, Auto VLAN removal on egress and auto pad to minimum frame size.
+  RX/TX csum offload
+
+  Specifications can be found at
+    http://www.ti.com/lit/ug/spruid7e/spruid7e.pdf
+    http://www.ti.com/lit/ug/spruil1a/spruil1a.pdf
+
+properties:
+  "#address-cells": true
+  "#size-cells": true
+
+  compatible:
+    oneOf:
+      - const: ti,am654-cpsw-nuss
+      - const: ti,j721e-cpsw-nuss
+
+  reg:
+    maxItems: 1
+    description:
+       The physical base address and size of full the CPSW2G NUSS IO range
+
+  reg-names:
+    items:
+      - const: cpsw_nuss
+
+  ranges: true
+
+  dma-coherent: true
+
+  clocks:
+    description: CPSW2G NUSS functional clock
+
+  clock-names:
+    items:
+      - const: fck
+
+  power-domains:
+    maxItems: 1
+
+  dmas:
+    minItems: 9
+    maxItems: 9
+
+  dma-names:
+    items:
+      - const: tx0
+      - const: tx1
+      - const: tx2
+      - const: tx3
+      - const: tx4
+      - const: tx5
+      - const: tx6
+      - const: tx7
+      - const: rx
+
+  pinctrl-names: true
+
+  ethernet-ports:
+    type: object
+    properties:
+      '#address-cells':
+        const: 1
+      '#size-cells':
+        const: 0
+
+    patternProperties:
+      "^port@[0-9]+$":
+          type: object
+          description: CPSW2G NUSS external ports
+
+          allOf:
+            - $ref: ethernet-controller.yaml#
+
+          properties:
+            reg:
+              items:
+                - const: 1
+              description: CPSW port number
+
+            phys:
+              maxItems: 1
+              description:  phandle on phy-gmii-sel PHY
+
+            label:
+              description: label associated with this port
+
+            ti,mac-only:
+              $ref: /schemas/types.yaml#definitions/flag
+              description:
+                Specifies the port works in mac-only mode.
+
+            ti,syscon-efuse:
+              $ref: /schemas/types.yaml#definitions/phandle-array
+              description:
+                Phandle to the system control device node which provides access
+                to efuse IO range with MAC addresses
+
+          required:
+            - reg
+            - phys
+
+  mdio:
+    type: object
+    allOf:
+      - $ref: "ti,davinci-mdio.yaml#"
+    description:
+      CPSW MDIO bus.
+
+patternProperties:
+  "^pinctrl-[0-9]+$": true
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - ranges
+  - clocks
+  - clock-names
+  - power-domains
+  - dmas
+  - dma-names
+  - '#address-cells'
+  - '#size-cells'
+
+examples:
+  - |
+    #include <dt-bindings/pinctrl/k3.h>
+    #include <dt-bindings/soc/ti,sci_pm_domain.h>
+    #include <dt-bindings/net/ti-dp83867.h>
+
+    mcu_cpsw: ethernet@46000000 {
+        compatible = "ti,am654-cpsw-nuss";
+        #address-cells = <2>;
+        #size-cells = <2>;
+        reg = <0x0 0x46000000 0x0 0x200000>;
+        reg-names = "cpsw_nuss";
+        ranges = <0x0 0x0 0x46000000 0x0 0x200000>;
+        dma-coherent;
+        clocks = <&k3_clks 5 10>;
+        clock-names = "fck";
+        power-domains = <&k3_pds 5 TI_SCI_PD_EXCLUSIVE>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&mcu_cpsw_pins_default &mcu_mdio_pins_default>;
+
+        dmas = <&mcu_udmap 0xf000>,
+               <&mcu_udmap 0xf001>,
+               <&mcu_udmap 0xf002>,
+               <&mcu_udmap 0xf003>,
+               <&mcu_udmap 0xf004>,
+               <&mcu_udmap 0xf005>,
+               <&mcu_udmap 0xf006>,
+               <&mcu_udmap 0xf007>,
+               <&mcu_udmap 0x7000>;
+        dma-names = "tx0", "tx1", "tx2", "tx3", "tx4", "tx5", "tx6", "tx7",
+                    "rx";
+
+        ethernet-ports {
+              #address-cells = <1>;
+              #size-cells = <0>;
+
+              cpsw_port1: port@1 {
+                    reg = <1>;
+                    ti,mac-only;
+                    label = "port1";
+                    ti,syscon-efuse = <&mcu_conf 0x200>;
+                    phys = <&phy_gmii_sel 1>;
+
+                    phy-mode = "rgmii-rxid";
+                    phy-handle = <&phy0>;
+              };
+        };
+
+        davinci_mdio: mdio@f00 {
+              compatible = "ti,cpsw-mdio","ti,davinci_mdio";
+              reg = <0x0 0xf00 0x0 0x100>;
+              #address-cells = <1>;
+              #size-cells = <0>;
+              clocks = <&k3_clks 5 10>;
+              clock-names = "fck";
+              bus_freq = <1000000>;
+
+              phy0: ethernet-phy@0 {
+                    reg = <0>;
+                    ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+                    ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+              };
+        };
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
