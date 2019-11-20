Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A13B1103C6F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 14:44:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g+l9YG2xWstUC3jffc0BOKZ++Fii+5TlKfr3aUiI4rw=; b=IljkirWs1B6JWj
	akzQqocFNstcYAO6EonmISHKdhY6zt4k2JiIhuQRdAbUzMOqCdLNR0PpT9lPT2tKfnpdFIX2/18DQ
	pgPyu0oo4xfnRzRXaw6PxbZHitxis4cZ3NKFPDs+Q5TVBrv67Ijg6yiNF4RQhJdHBqxqkiYlP/sJF
	xLHoaX4tJ2WEjc3u58ypdOmMmtsm9Xow86HP7OvlxezIliiAEScfYYPA6Zguk4eYUvWCZc7GSRT47
	6cxeRFCnU/KsWNE72hcpyDO6HSfvtU+PxRYTIsch7qL554XXFPbfv/MTmKN5UkmUH718+9MGg+0aM
	x2L55n8vBnA/e3IxqBew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQH5-00074N-Lo; Wed, 20 Nov 2019 13:44:03 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQGw-00073Q-CQ
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 13:43:56 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAKDbVIB031076; Wed, 20 Nov 2019 14:43:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=l2oEHQGrIM4V5LvnrIZMo4o2Hgyea9ZVNyLN4gpA8XM=;
 b=mk1X5g3m47C67kcYK+k5ht2NtO+hcFisgT36JNuOBoTfnYsKEVMy9i6ytErtcfMZCl57
 qnsyZ6Zy0TBAPBtdK7EkSwEkkyWZIxt2+8jYkTbV6vXGxtqmSIwsGmXQ9Dv2puqvaZxL
 m6UREJMCpn0DOVqaD88+GtzSmTBFhPhoE8jQXIIWD00e5aqW7oBqpFF2vbBh+N9jXdos
 0o/N5rbqK8evm1FxFUyL9JSjei56ZC4HUDuK5R8b/10PWAWCnwTO8uZOoVEEQWuskF20
 fdLlmZBAfC5XcMlYgYwU/FhSdrC6WCdLNmUfh82fzAZ1Z7tQYjmm+6yzNnXmkOZggyWF Hg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wa9up69qa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 20 Nov 2019 14:43:45 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4AA4010002A;
 Wed, 20 Nov 2019 14:43:44 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 175782BAB68;
 Wed, 20 Nov 2019 14:43:44 +0100 (CET)
Received: from localhost (10.75.127.50) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 20 Nov 2019 14:43:43
 +0100
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <robh+dt@kernel.org>
Subject: [PATCH] dt-bindings: i2c: stm32: Migrate i2c-stm32 documentation to
 yaml
Date: Wed, 20 Nov 2019 14:43:43 +0100
Message-ID: <1574257423-26754-1-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-20_04:2019-11-15,2019-11-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_054354_770062_9006DC18 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The document was migrated to Yaml format and renamed st,stm32-i2c.yaml

Signed-off-by: Alain Volmat <alain.volmat@st.com>
---
 .../devicetree/bindings/i2c/i2c-stm32.txt          |  65 ---------
 .../devicetree/bindings/i2c/st,stm32-i2c.yaml      | 157 +++++++++++++++++++++
 2 files changed, 157 insertions(+), 65 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-stm32.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-stm32.txt b/Documentation/devicetree/bindings/i2c/i2c-stm32.txt
deleted file mode 100644
index ce3df2fff6c8..000000000000
--- a/Documentation/devicetree/bindings/i2c/i2c-stm32.txt
+++ /dev/null
@@ -1,65 +0,0 @@
-* I2C controller embedded in STMicroelectronics STM32 I2C platform
-
-Required properties:
-- compatible: Must be one of the following
-  - "st,stm32f4-i2c"
-  - "st,stm32f7-i2c"
-- reg: Offset and length of the register set for the device
-- interrupts: Must contain the interrupt id for I2C event and then the
-  interrupt id for I2C error.
-- resets: Must contain the phandle to the reset controller.
-- clocks: Must contain the input clock of the I2C instance.
-- A pinctrl state named "default" must be defined to set pins in mode of
-  operation for I2C transfer
-- #address-cells = <1>;
-- #size-cells = <0>;
-
-Optional properties:
-- clock-frequency: Desired I2C bus clock frequency in Hz. If not specified,
-  the default 100 kHz frequency will be used.
-  For STM32F4 SoC Standard-mode and Fast-mode are supported, possible values are
-  100000 and 400000.
-  For STM32F7, STM32H7 and STM32MP1 SoCs, Standard-mode, Fast-mode and Fast-mode
-  Plus are supported, possible values are 100000, 400000 and 1000000.
-- dmas: List of phandles to rx and tx DMA channels. Refer to stm32-dma.txt.
-- dma-names: List of dma names. Valid names are: "rx" and "tx".
-- i2c-scl-rising-time-ns: I2C SCL Rising time for the board (default: 25)
-  For STM32F7, STM32H7 and STM32MP1 only.
-- i2c-scl-falling-time-ns: I2C SCL Falling time for the board (default: 10)
-  For STM32F7, STM32H7 and STM32MP1 only.
-  I2C Timings are derived from these 2 values
-- st,syscfg-fmp: Use to set Fast Mode Plus bit within SYSCFG when Fast Mode
-  Plus speed is selected by slave.
-	1st cell: phandle to syscfg
-	2nd cell: register offset within SYSCFG
-	3rd cell: register bitmask for FMP bit
-  For STM32F7, STM32H7 and STM32MP1 only.
-
-Example:
-
-	i2c@40005400 {
-		compatible = "st,stm32f4-i2c";
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x40005400 0x400>;
-		interrupts = <31>,
-			     <32>;
-		resets = <&rcc 277>;
-		clocks = <&rcc 0 149>;
-		pinctrl-0 = <&i2c1_sda_pin>, <&i2c1_scl_pin>;
-		pinctrl-names = "default";
-	};
-
-	i2c@40005400 {
-		compatible = "st,stm32f7-i2c";
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x40005400 0x400>;
-		interrupts = <31>,
-			     <32>;
-		resets = <&rcc STM32F7_APB1_RESET(I2C1)>;
-		clocks = <&rcc 1 CLK_I2C1>;
-		pinctrl-0 = <&i2c1_sda_pin>, <&i2c1_scl_pin>;
-		pinctrl-names = "default";
-		st,syscfg-fmp = <&syscfg 0x4 0x1>;
-	};
diff --git a/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml b/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
new file mode 100644
index 000000000000..0f51a6ed0e9b
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
@@ -0,0 +1,157 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/st,stm32-i2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: I2C controller embedded in STMicroelectronics STM32 I2C platform
+
+maintainers:
+  - Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - st,stm32f7-i2c
+    then:
+      properties:
+        i2c-scl-rising-time-ns:
+          description: I2C SCL Rising time for the board
+          $ref: /schemas/types.yaml#/definitions/uint32
+          default: 25
+
+        i2c-scl-falling-time-ns:
+          description: I2C SCL Falling time for the board
+          $ref: /schemas/types.yaml#/definitions/uint32
+          default: 10
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - st,stm32f4-i2c
+    then:
+      properties:
+        clock-frequency:
+          description: Desired I2C bus clock frequency in Hz. If not specified,
+                       the default 100 kHz frequency will be used.
+                       For STM32F4 SoC Standard-mode and Fast-mode are
+                       supported, possible values are 100000 and 400000.
+          default: 100000
+          enum: [100000, 400000]
+    else:
+      properties:
+        clock-frequency:
+          description: Desired I2C bus clock frequency in Hz. If not specified,
+                       the default 100 kHz frequency will be used.
+                       For STM32F7, STM32H7 and STM32MP1 SoCs, Standard-mode,
+                       Fast-mode and Fast-mode Plus are supported, possible
+                       values are 100000, 400000 and 1000000.
+          default: 100000
+          enum: [100000, 400000, 1000000]
+
+        st,syscfg-fmp:
+          $ref: "/schemas/types.yaml#/definitions/phandle-array"
+          description: Use to set Fast Mode Plus bit within SYSCFG when
+                       Fast Mode Plus speed is selected by slave. Should be
+                       phandle/offset/mask
+          items:
+            - description: phandle to syscfg
+            - description: register offset within syscfg
+            - description: register bitmask for FMP bit
+
+properties:
+  compatible:
+    enum:
+      - st,stm32f4-i2c
+      - st,stm32f7-i2c
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 2
+    items:
+      - description: interrupt ID for I2C event
+      - description: interrupt ID for I2C error
+
+  resets:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  dmas:
+    items:
+      - description: RX DMA Channel phandle
+      - description: TX DMA Channel phandle
+    minItems: 2
+    maxItems: 2
+
+  dma-names:
+    items:
+      - const: rx
+      - const: tx
+    minItems: 2
+    maxItems: 2
+
+required:
+  - compatible
+  - '#address-cells'
+  - '#size-cells'
+  - reg
+  - interrupts
+  - resets
+  - clocks
+
+examples:
+  - |
+    #include <dt-bindings/mfd/stm32f7-rcc.h>
+    #include <dt-bindings/clock/stm32fx-clock.h>
+    //Example 1 (with st,stm32f4-i2c compatible)
+      i2c@40005400 {
+          compatible = "st,stm32f4-i2c";
+          #address-cells = <1>;
+          #size-cells = <0>;
+          reg = <0x40005400 0x400>;
+          interrupts = <31>,
+                       <32>;
+          resets = <&rcc 277>;
+          clocks = <&rcc 0 149>;
+      };
+
+    //Example 2 (with st,stm32f7-i2c compatible)
+      i2c@40005800 {
+          compatible = "st,stm32f7-i2c";
+          #address-cells = <1>;
+          #size-cells = <0>;
+          reg = <0x40005800 0x400>;
+          interrupts = <31>,
+                       <32>;
+          resets = <&rcc STM32F7_APB1_RESET(I2C1)>;
+          clocks = <&rcc 1 CLK_I2C1>;
+      };
+
+    //Example 3 (with st,stm32f7-i2c compatible on stm32mp)
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    #include <dt-bindings/reset/stm32mp1-resets.h>
+      i2c@40013000 {
+          compatible = "st,stm32f7-i2c";
+          #address-cells = <1>;
+          #size-cells = <0>;
+          reg = <0x40013000 0x400>;
+          interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
+                       <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+          clocks = <&rcc I2C2_K>;
+          resets = <&rcc I2C2_R>;
+          i2c-scl-rising-time-ns = <185>;
+          i2c-scl-falling-time-ns = <20>;
+          st,syscfg-fmp = <&syscfg 0x4 0x2>;
+      };
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
