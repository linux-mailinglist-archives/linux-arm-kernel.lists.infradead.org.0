Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8610104477
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 20:45:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MjAEUHyKBPM2C0JiVuIkvzfWXF5pCvd4jfOUW5QU0tk=; b=C+7sHxw/rJXhft
	VWc+iiAwaP8ztmLpYIO+xOv3pujBGQ2hlu9O5y2InjYJ2VOowNuhzEtUlLkEZvzmwQ/w2k1WnOZ12
	c7p3vwr+1FTWvL2Q/HuIUGPhi1sDEjVMQdSGLTQ6WhN6gs76wGRg2+XsMgs0p/j5iI+s+mURV7e+D
	wtY7nangi7iiTmp0ek/tz6kgIMibwCYS5+mPeujgdlfscS5ACVWNb8aHjaymQMUqkAUss0c7/Q7eg
	jbQ8ATGb8w9M9FuykjXdDz1t/HepZWKNlUXXRLBvTkggHhlU3+LCmwOCCcOQK4gUqg5f7mIUY6lDw
	1cnSEx6qpuxcH7kCIkgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXVuf-0001R7-Ew; Wed, 20 Nov 2019 19:45:17 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXVuQ-0001BN-8Y
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 19:45:04 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAKJh0ha016754; Wed, 20 Nov 2019 20:44:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=o+X8AS60Eijt7vdoaqRux4/FQnWUKnnAr6CTV+AlGXM=;
 b=X8k7SKgaUjmjxDgXAXQdxnmhpNMsaptUcPY7z1F3uJXc/0NuOMiuz0Cv6hyVhWeaLFFg
 vtTGtUo8g/PMQnWFX+qmqoDmqrmqo7NkcOKiGxWxejqdOIegNYdGI7t6R2tR0ZHeUQXe
 49TnW9w6lDujkIAgLIlEUu9KpM0Ww8gL5LugaZ8faDWv62/K2CoJSSnBQEfmbrKWWhVO
 9ILx6W7KzVtj2TiWF+anxVimp5nDmZKwD1xXawdN5V6ZcXG8F39GSZv9+g2zHv8zdU0E
 +o4dbF4qiweG9vYlJJgHcxw3HXeJ+x539KRTXOGxvFHDtwEEPHx7UD5XzQhCpqisIs1e uw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wa9usfca3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 20 Nov 2019 20:44:51 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 88E39100034;
 Wed, 20 Nov 2019 20:44:46 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6CD952C6151;
 Wed, 20 Nov 2019 20:44:46 +0100 (CET)
Received: from localhost (10.75.127.48) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 20 Nov 2019 20:44:45
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <broonie@kernel.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <alexandre.torgue@st.com>
Subject: [PATCH v2] dt-bindings: spi: Convert stm32 QSPI bindings to
 json-schema
Date: Wed, 20 Nov 2019 20:44:44 +0100
Message-ID: <20191120194444.10540-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-20_06:2019-11-20,2019-11-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_114502_774350_A24887D3 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 QSPI binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
changes in version 2:
- fix subject
- remove useless minItems and maxItems
 .../devicetree/bindings/spi/spi-stm32-qspi.txt     | 47 ------------
 .../devicetree/bindings/spi/st,stm32-qspi.yaml     | 83 ++++++++++++++++++++++
 2 files changed, 83 insertions(+), 47 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt
 create mode 100644 Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml

diff --git a/Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt b/Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt
deleted file mode 100644
index bfc038b9478d..000000000000
--- a/Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt
+++ /dev/null
@@ -1,47 +0,0 @@
-* STMicroelectronics Quad Serial Peripheral Interface(QSPI)
-
-Required properties:
-- compatible: should be "st,stm32f469-qspi"
-- reg: the first contains the register location and length.
-       the second contains the memory mapping address and length
-- reg-names: should contain the reg names "qspi" "qspi_mm"
-- interrupts: should contain the interrupt for the device
-- clocks: the phandle of the clock needed by the QSPI controller
-- A pinctrl must be defined to set pins in mode of operation for QSPI transfer
-
-Optional properties:
-- resets: must contain the phandle to the reset controller.
-
-A spi flash (NOR/NAND) must be a child of spi node and could have some
-properties. Also see jedec,spi-nor.txt.
-
-Required properties:
-- reg: chip-Select number (QSPI controller may connect 2 flashes)
-- spi-max-frequency: max frequency of spi bus
-
-Optional properties:
-- spi-rx-bus-width: see ./spi-bus.txt for the description
-- dmas: DMA specifiers for tx and rx dma. See the DMA client binding,
-Documentation/devicetree/bindings/dma/dma.txt.
-- dma-names: DMA request names should include "tx" and "rx" if present.
-
-Example:
-
-qspi: spi@a0001000 {
-	compatible = "st,stm32f469-qspi";
-	reg = <0xa0001000 0x1000>, <0x90000000 0x10000000>;
-	reg-names = "qspi", "qspi_mm";
-	interrupts = <91>;
-	resets = <&rcc STM32F4_AHB3_RESET(QSPI)>;
-	clocks = <&rcc 0 STM32F4_AHB3_CLOCK(QSPI)>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_qspi0>;
-
-	flash@0 {
-		compatible = "jedec,spi-nor";
-		reg = <0>;
-		spi-rx-bus-width = <4>;
-		spi-max-frequency = <108000000>;
-		...
-	};
-};
diff --git a/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml b/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml
new file mode 100644
index 000000000000..3665a5fe6b7f
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/st,stm32-qspi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 Quad Serial Peripheral Interface (QSPI) bindings
+
+maintainers:
+  - Christophe Kerello <christophe.kerello@st.com>
+  - Patrice Chotard <patrice.chotard@st.com>
+
+allOf:
+  - $ref: "spi-controller.yaml#"
+
+properties:
+  compatible:
+    const: st,stm32f469-qspi
+
+  reg:
+    items:
+      - description: registers
+      - description: memory mapping
+
+  reg-names:
+    items:
+     - const: qspi
+     - const: qspi_mm
+
+  clocks:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  dmas:
+    items:
+      - description: tx DMA channel
+      - description: rx DMA channel
+
+  dma-names:
+    items:
+      - const: tx
+      - const: rx
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - interrupts
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    #include <dt-bindings/reset/stm32mp1-resets.h>
+    spi@58003000 {
+      compatible = "st,stm32f469-qspi";
+      reg = <0x58003000 0x1000>, <0x70000000 0x10000000>;
+      reg-names = "qspi", "qspi_mm";
+      interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
+      dmas = <&mdma1 22 0x10 0x100002 0x0 0x0>,
+             <&mdma1 22 0x10 0x100008 0x0 0x0>;
+      dma-names = "tx", "rx";
+      clocks = <&rcc QSPI_K>;
+      resets = <&rcc QSPI_R>;
+
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      flash@0 {
+        compatible = "jedec,spi-nor";
+        reg = <0>;
+        spi-rx-bus-width = <4>;
+        spi-max-frequency = <108000000>;
+      };
+    };
+
+...
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
