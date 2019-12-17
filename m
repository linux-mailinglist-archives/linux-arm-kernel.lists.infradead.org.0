Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA3C122786
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 10:23:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWgDprzigWLEBCLRFUoHSWT1C0cV+yaWy9CqfCdWwkI=; b=REeIciaHiQjBJM
	FcfNSfCQk6J7prtoalJsUDn9jR1McU4m32pygGEB/aDrHCUahYlUwFf9kaHeCdJN8pnQh7Pu+OZIz
	r3GmSzAFR2onWOc0oZ7w9oDUuV2EvYUBquPWh8cVnEN3ds4VjvGav1Fr0G2FZo62RbGOoiZudY0I6
	OB3657jDOPR7J77IAH9deivxukWHyntczTAo6hNuOGvLG5nqHRrC0wBnz+a8RsV2yZytb7DSR1SrM
	46Q4CcBnPvPPIe+HDXPmQDjL6J+QAwhr/B3nZnOhIVHLEk7tU8nJ2Wkb3qyZeA9s3i2/Uq6xzRwyT
	hEN7niuiu0auzMQ76lOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih94n-0000v0-QB; Tue, 17 Dec 2019 09:23:33 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih93u-0000D4-EK
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 09:22:41 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBH9IGLo018300; Tue, 17 Dec 2019 10:22:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=y85RULneSqRLkucNO/BxQQngvS4kK/vupk/yGXgg4uo=;
 b=rDffxKBeY4knMnXLfQ+AYgsr2jFKbLfafrOxbr58dG4RJUqBLqFYe8349gtv50eEz+ye
 InXlIXuqsdfE+llOCK3Rzy1bPs+QaoBh/PRt43HGOy3ObhH2oeL3bMx7Qrwky27PYRRP
 XAWOunj6h4VHw3m7popZ4gWHSSYWEgfm9vYxepQd7X2easq2aHMUk2+wghIXYYPMLAVD
 PiT8wMpLitdgo69WoNxgw2+yPX1WRJ0vhBSWISAgdPMike04hUmsy8mD28R2zjEGW9Gc
 FXvGO+6aHJZs6W2Qd74XM2VRg9Yxk2+YeqJ4lmMCnROaaIjD5Q6OPras7WheRRg4m2eJ ZQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wvnredwwe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 17 Dec 2019 10:22:33 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C058710002A;
 Tue, 17 Dec 2019 10:22:32 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id AAB902A64E4;
 Tue, 17 Dec 2019 10:22:32 +0100 (CET)
Received: from localhost (10.75.127.50) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 17 Dec 2019 10:22:32
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 3/6] dt-bindings: dma: Convert stm32 DMAMUX bindings to
 json-schema
Date: Tue, 17 Dec 2019 10:21:58 +0100
Message-ID: <20191217092201.20022-4-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191217092201.20022-1-benjamin.gaignard@st.com>
References: <20191217092201.20022-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-17_01:2019-12-16,2019-12-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_012238_767048_5BC3F651 
X-CRM114-Status: GOOD (  17.84  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 DMAMUX binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 .../devicetree/bindings/dma/st,stm32-dmamux.yaml   | 52 ++++++++++++++
 .../devicetree/bindings/dma/stm32-dmamux.txt       | 84 ----------------------
 2 files changed, 52 insertions(+), 84 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml
 delete mode 100644 Documentation/devicetree/bindings/dma/stm32-dmamux.txt

diff --git a/Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml b/Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml
new file mode 100644
index 000000000000..915bc4af9568
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/st,stm32-dmamux.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 DMA MUX (DMA request router) bindings
+
+maintainers:
+  - Amelie Delaunay <amelie.delaunay@st.com>
+
+allOf:
+  - $ref: "dma-router.yaml#"
+
+properties:
+  "#dma-cells":
+    const: 3
+
+  compatible:
+    const: st,stm32h7-dmamux
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - dma-masters
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    #include <dt-bindings/reset/stm32mp1-resets.h>
+    dma-router@40020800 {
+      compatible = "st,stm32h7-dmamux";
+      reg = <0x40020800 0x3c>;
+      #dma-cells = <3>;
+      dma-requests = <128>;
+      dma-channels = <16>;
+      dma-masters = <&dma1 &dma2>;
+      clocks = <&timer_clk>;
+    };
+
+...
+
diff --git a/Documentation/devicetree/bindings/dma/stm32-dmamux.txt b/Documentation/devicetree/bindings/dma/stm32-dmamux.txt
deleted file mode 100644
index 1b893b235507..000000000000
--- a/Documentation/devicetree/bindings/dma/stm32-dmamux.txt
+++ /dev/null
@@ -1,84 +0,0 @@
-STM32 DMA MUX (DMA request router)
-
-Required properties:
-- compatible:	"st,stm32h7-dmamux"
-- reg:		Memory map for accessing module
-- #dma-cells:	Should be set to <3>.
-		First parameter is request line number.
-		Second is DMA channel configuration
-		Third is Fifo threshold
-		For more details about the three cells, please see
-		stm32-dma.txt documentation binding file
-- dma-masters:	Phandle pointing to the DMA controllers.
-		Several controllers are allowed. Only "st,stm32-dma" DMA
-		compatible are supported.
-
-Optional properties:
-- dma-channels : Number of DMA requests supported.
-- dma-requests : Number of DMAMUX requests supported.
-- resets: Reference to a reset controller asserting the DMA controller
-- clocks: Input clock of the DMAMUX instance.
-
-Example:
-
-/* DMA controller 1 */
-dma1: dma-controller@40020000 {
-	compatible = "st,stm32-dma";
-	reg = <0x40020000 0x400>;
-	interrupts = <11>,
-		     <12>,
-		     <13>,
-		     <14>,
-		     <15>,
-		     <16>,
-		     <17>,
-		     <47>;
-	clocks = <&timer_clk>;
-	#dma-cells = <4>;
-	st,mem2mem;
-	resets = <&rcc 150>;
-	dma-channels = <8>;
-	dma-requests = <8>;
-};
-
-/* DMA controller 1 */
-dma2: dma@40020400 {
-	compatible = "st,stm32-dma";
-	reg = <0x40020400 0x400>;
-	interrupts = <56>,
-		     <57>,
-		     <58>,
-		     <59>,
-		     <60>,
-		     <68>,
-		     <69>,
-		     <70>;
-	clocks = <&timer_clk>;
-	#dma-cells = <4>;
-	st,mem2mem;
-	resets = <&rcc 150>;
-	dma-channels = <8>;
-	dma-requests = <8>;
-};
-
-/* DMA mux */
-dmamux1: dma-router@40020800 {
-	compatible = "st,stm32h7-dmamux";
-	reg = <0x40020800 0x3c>;
-	#dma-cells = <3>;
-	dma-requests = <128>;
-	dma-channels = <16>;
-	dma-masters = <&dma1 &dma2>;
-	clocks = <&timer_clk>;
-};
-
-/* DMA client */
-usart1: serial@40011000 {
-	compatible = "st,stm32-usart", "st,stm32-uart";
-	reg = <0x40011000 0x400>;
-	interrupts = <37>;
-	clocks = <&timer_clk>;
-	dmas = <&dmamux1 41 0x414 0>,
-	       <&dmamux1 42 0x414 0>;
-	dma-names = "rx", "tx";
-};
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
