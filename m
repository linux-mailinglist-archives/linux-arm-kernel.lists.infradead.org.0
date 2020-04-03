Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE9A19D8A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 16:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXyS/NN87KZPINI4XrJrq07rvWybycBhTFXBBCc7pog=; b=ElEEx9RH1l4QrA
	pYQCbNje//0coJN82MlzYiXkxeuJA6v1CdHxc6FhTO2WyhzgU2NBhJxQF+2De2rJHdq6Is8R0lMFk
	Q75VC/oCtYjJkkXz4/2oJdHNzPJJcEcX2U5stSs3vZoeZdfAWww5dztdWWCtrvHJho9UDJtIpP9uK
	NlG4YjvwjA+QpAb5Xc5mKpa+S6Op++1CGzu6u/mS1hlDEafpKSs+pjPvzIbfmD4TYJK3iMk+cHqhB
	cA+epOKIoWwTY5BlJDHUNa2qp8VkSdMDCTuRPYzpsoS5VbHW13y2wrhjZFZa6qPMo4JhjxODkLG5V
	e9yct2iIi8xRKdJ0SGBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKMx0-00082A-V0; Fri, 03 Apr 2020 14:05:39 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKMwW-0005yN-D2
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 14:05:11 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 033E3FWJ030927; Fri, 3 Apr 2020 16:04:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=43ojTxK/2ndKmW5gPukirPt8/ZqQPQjjKYKjgZ6+KJs=;
 b=NQXWDNA+6V6kY0r4mWWLdXLiqLAE5VLUPYIMRyVFibCGKl8ZxJFvqwOMEq5D+U+zd14o
 Q1ZDxjIrfe0r9vnLAc/SDDxiOlktWkMCRorHWxvAT9aTnPcePF71Cqg0YwhcD6gEjjDk
 2DeTE+ccPfvn1vQMMDjZFLPrtghtdDX4YCeRODqMO2+f8q5deIsJantgCW9gKTL9ScpB
 dj/7xvbQvNRORIAOSxAz6ka+Y0gfgbjqlPfFW4OcKF5npLMswMaK9vIByUPBv5EjRxR1
 VINDgUmONM2CP4hqfP/bdQDoacnhEjLyk5xHyBb4lZ/+z2YoLe0lfaLuHOLuWj47yxM4 2Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 302y54bpp3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 03 Apr 2020 16:04:52 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 780D210002A;
 Fri,  3 Apr 2020 16:04:47 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 684652B3A7E;
 Fri,  3 Apr 2020 16:04:47 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 3 Apr 2020 16:04:45 +0200
From: Christophe Roullier <christophe.roullier@st.com>
To: <davem@davemloft.net>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mripard@kernel.org>, <martin.blumenstingl@googlemail.com>,
 <alexandru.ardelean@analog.com>, <narmstrong@baylibre.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH V2 2/2] dt-bindings: net: dwmac: Convert stm32 dwmac to DT
 schema
Date: Fri, 3 Apr 2020 16:04:15 +0200
Message-ID: <20200403140415.29641-3-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200403140415.29641-1-christophe.roullier@st.com>
References: <20200403140415.29641-1-christophe.roullier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-03_11:2020-04-03,
 2020-04-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_070508_849669_B7F508B5 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, christophe.roullier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert stm32 dwmac to DT schema.

Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
---
 .../devicetree/bindings/net/stm32-dwmac.txt   |  44 -----
 .../devicetree/bindings/net/stm32-dwmac.yaml  | 150 ++++++++++++++++++
 2 files changed, 150 insertions(+), 44 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/stm32-dwmac.txt
 create mode 100644 Documentation/devicetree/bindings/net/stm32-dwmac.yaml

diff --git a/Documentation/devicetree/bindings/net/stm32-dwmac.txt b/Documentation/devicetree/bindings/net/stm32-dwmac.txt
deleted file mode 100644
index a90eef11dc46..000000000000
--- a/Documentation/devicetree/bindings/net/stm32-dwmac.txt
+++ /dev/null
@@ -1,44 +0,0 @@
-STMicroelectronics STM32 / MCU DWMAC glue layer controller
-
-This file documents platform glue layer for stmmac.
-Please see stmmac.txt for the other unchanged properties.
-
-The device node has following properties.
-
-Required properties:
-- compatible:  For MCU family should be "st,stm32-dwmac" to select glue, and
-	       "snps,dwmac-3.50a" to select IP version.
-	       For MPU family should be "st,stm32mp1-dwmac" to select
-	       glue, and "snps,dwmac-4.20a" to select IP version.
-- clocks: Must contain a phandle for each entry in clock-names.
-- clock-names: Should be "stmmaceth" for the host clock.
-	       Should be "mac-clk-tx" for the MAC TX clock.
-	       Should be "mac-clk-rx" for the MAC RX clock.
-	       For MPU family need to add also "ethstp" for power mode clock
-- interrupt-names: Should contain a list of interrupt names corresponding to
-           the interrupts in the interrupts property, if available.
-		   Should be "macirq" for the main MAC IRQ
-		   Should be "eth_wake_irq" for the IT which wake up system
-- st,syscon : Should be phandle/offset pair. The phandle to the syscon node which
-	       encompases the glue register, and the offset of the control register.
-
-Optional properties:
-- clock-names:     For MPU family "eth-ck" for PHY without quartz
-- st,eth-clk-sel (boolean) : set this property in RGMII PHY when you want to select RCC clock instead of ETH_CLK125.
-- st,eth-ref-clk-sel (boolean) :  set this property in RMII mode when you have PHY without crystal 50MHz and want to select RCC clock instead of ETH_REF_CLK.
-
-Example:
-
-	ethernet@40028000 {
-		compatible = "st,stm32-dwmac", "snps,dwmac-3.50a";
-		reg = <0x40028000 0x8000>;
-		reg-names = "stmmaceth";
-		interrupts = <0 61 0>, <0 62 0>;
-		interrupt-names = "macirq", "eth_wake_irq";
-		clock-names = "stmmaceth", "mac-clk-tx", "mac-clk-rx";
-		clocks = <&rcc 0 25>, <&rcc 0 26>, <&rcc 0 27>;
-		st,syscon = <&syscfg 0x4>;
-		snps,pbl = <8>;
-		snps,mixed-burst;
-		dma-ranges;
-	};
diff --git a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
new file mode 100644
index 000000000000..f559293dbab5
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
@@ -0,0 +1,150 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/net/stm32-dwmac.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: STMicroelectronics STM32 / MCU DWMAC glue layer controller
+
+maintainers:
+  - Alexandre Torgue <alexandre.torgue@st.com>
+  - Christophe Roullier <christophe.roullier@st.com>
+
+description:
+  This file documents platform glue layer for stmmac.
+
+# We need a select here so we don't match all nodes with 'snps,dwmac'
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - st,stm32-dwmac
+          - st,stm32mp1-dwmac
+  required:
+    - compatible
+
+allOf:
+  - $ref: "snps,dwmac.yaml#"
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - st,stm32mp1-dwmac
+          - const: snps,dwmac-4.20a
+      - items:
+          - enum:
+              - st,stm32-dwmac
+          - const: snps,dwmac-4.10a
+      - items:
+          - enum:
+              - st,stm32-dwmac
+          - const: snps,dwmac-3.50a
+
+  clocks:
+    minItems: 3
+    maxItems: 5
+    items:
+        - description: GMAC main clock
+        - description: MAC TX clock
+        - description: MAC RX clock
+        - description: For MPU family, used for power mode
+        - description: For MPU family, used for PHY without quartz
+
+  clock-names:
+    minItems: 3
+    maxItems: 5
+    contains:
+      enum:
+        - stmmaceth
+        - mac-clk-tx
+        - mac-clk-rx
+        - ethstp
+        - eth-ck
+
+  st,syscon:
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/phandle-array"
+    description:
+      Should be phandle/offset pair. The phandle to the syscon node which
+      encompases the glue register, and the offset of the control register
+
+  st,eth-clk-sel:
+    description:
+      set this property in RGMII PHY when you want to select RCC clock instead of ETH_CLK125.
+    type: boolean
+
+  st,eth-ref-clk-sel:
+    description:
+      set this property in RMII mode when you have PHY without crystal 50MHz and want to
+      select RCC clock instead of ETH_REF_CLK.
+    type: boolean
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - st,syscon
+
+examples:
+ - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    #include <dt-bindings/reset/stm32mp1-resets.h>
+    #include <dt-bindings/mfd/stm32h7-rcc.h>
+    //Example 1
+     ethernet0: ethernet@5800a000 {
+           compatible = "st,stm32mp1-dwmac", "snps,dwmac-4.20a";
+           reg = <0x5800a000 0x2000>;
+           reg-names = "stmmaceth";
+           interrupts = <&intc GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
+           interrupt-names = "macirq";
+           clock-names = "stmmaceth",
+                     "mac-clk-tx",
+                     "mac-clk-rx",
+                     "ethstp",
+                     "eth-ck";
+           clocks = <&rcc ETHMAC>,
+                <&rcc ETHTX>,
+                <&rcc ETHRX>,
+                <&rcc ETHSTP>,
+                <&rcc ETHCK_K>;
+           st,syscon = <&syscfg 0x4>;
+           snps,pbl = <2>;
+           snps,axi-config = <&stmmac_axi_config_0>;
+           snps,tso;
+           phy-mode = "rgmii";
+       };
+
+    //Example 2 (MCU example)
+     ethernet1: ethernet@40028000 {
+           compatible = "st,stm32-dwmac", "snps,dwmac-3.50a";
+           reg = <0x40028000 0x8000>;
+           reg-names = "stmmaceth";
+           interrupts = <0 61 0>, <0 62 0>;
+           interrupt-names = "macirq", "eth_wake_irq";
+           clock-names = "stmmaceth", "mac-clk-tx", "mac-clk-rx";
+           clocks = <&rcc 0 25>, <&rcc 0 26>, <&rcc 0 27>;
+           st,syscon = <&syscfg 0x4>;
+           snps,pbl = <8>;
+           snps,mixed-burst;
+           dma-ranges;
+           phy-mode = "mii";
+       };
+
+    //Example 3
+     ethernet2: ethernet@40027000 {
+           compatible = "st,stm32-dwmac", "snps,dwmac-4.10a";
+           reg = <0x40028000 0x8000>;
+           reg-names = "stmmaceth";
+           interrupts = <61>;
+           interrupt-names = "macirq";
+           clock-names = "stmmaceth", "mac-clk-tx", "mac-clk-rx";
+           clocks = <&rcc 62>, <&rcc 61>, <&rcc 60>;
+           st,syscon = <&syscfg 0x4>;
+           snps,pbl = <8>;
+           phy-mode = "mii";
+       };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
