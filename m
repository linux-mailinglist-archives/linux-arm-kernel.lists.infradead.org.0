Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131EB122787
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 10:23:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P71zR7kUlB6OaRrHVGsSNJNRpLYJDnAl3cONdi+T5Po=; b=oqM8v4CuCutgTV
	fhMcAPA0Rtx3vJKSrC/EPOvgjyW+bYzCQuBbfVDvYHlzefoKuOrhGE0K4ACZ+WfmAWWcIbxqrQrxM
	9fOsWV0cmZxu1x4Z7KRma9/hdy3K2TTYlfMRJ4ipcsvntn5G4U+cZul9se7oVscnil3NX6WAE4bLp
	+/QiIOKB01RNF7+Epw+xSUcDI4aGKI2LDLOPMA2VmZOQfQ6GOK4jTsnVzusw0xfCpwttf9xuji+sa
	rxTunF8R1yfzCLrjaailE2qFpAC0Jua6SU7NuQoWnjOFVOCET+Z8F6A80OuSq455TAv7lnLPFUVG8
	3bCskog4hkHVUvbB2fHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih951-00018x-Fn; Tue, 17 Dec 2019 09:23:47 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih93u-0000D3-EI
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 09:22:41 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBH9HuQL001317; Tue, 17 Dec 2019 10:22:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=AvBNP/YVmapYq0KGsIQ29Ae2cFCeZjr42992v4IW2iI=;
 b=WkCVuuSnrm36+gPZfdlMoTPDwysqcA5QPsPI02iX5zLdOrDMDD3UxGzG380A6fx0OZ95
 nrMRC2D6SbTxjvZiNZIPptQQCib7q9T2JbX/Iwru9jx5AwZv6nvWRSR3I0pcl8Uje13Q
 K50hNgMhbWHy0BR1SKb+Uk5G34BfvYRiWHbt3U4spj5ia7/c1nQBIBkXQm07BCRfUZh4
 pp4+FonsZ2EsPtZA0zQ/foarahsbBOzzDLawxT9q73s9QYciUQFGcsHDenLjdzhjTDuo
 lDzVUNj8gWjTVbufCxBvtK2nattl5lGQCNjjT6r1bjO50Y6Ln6dRjKdDQACsj8tKzojz QA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wvqgpnkt0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 17 Dec 2019 10:22:31 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6DE2110003A;
 Tue, 17 Dec 2019 10:22:30 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 628602A64E4;
 Tue, 17 Dec 2019 10:22:30 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 17 Dec 2019 10:22:29
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 1/6] dt-bindings: dma: Convert stm32 DMA bindings to
 json-schema
Date: Tue, 17 Dec 2019 10:21:56 +0100
Message-ID: <20191217092201.20022-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191217092201.20022-1-benjamin.gaignard@st.com>
References: <20191217092201.20022-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG6NODE3.st.com (10.75.127.18) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-17_01:2019-12-16,2019-12-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_012238_775522_110FE5A4 
X-CRM114-Status: GOOD (  16.94  )
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

Convert the STM32 DMA binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 .../devicetree/bindings/dma/st,stm32-dma.yaml      | 102 +++++++++++++++++++++
 .../devicetree/bindings/dma/stm32-dma.txt          |  83 -----------------
 2 files changed, 102 insertions(+), 83 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/dma/st,stm32-dma.yaml
 delete mode 100644 Documentation/devicetree/bindings/dma/stm32-dma.txt

diff --git a/Documentation/devicetree/bindings/dma/st,stm32-dma.yaml b/Documentation/devicetree/bindings/dma/st,stm32-dma.yaml
new file mode 100644
index 000000000000..0c0ac11ad55f
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/st,stm32-dma.yaml
@@ -0,0 +1,102 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/st,stm32-dma.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 DMA Controller bindings
+
+description: |
+  The STM32 DMA is a general-purpose direct memory access controller capable of
+  supporting 8 independent DMA channels. Each channel can have up to 8 requests.
+  DMA clients connected to the STM32 DMA controller must use the format
+  described in the dma.txt file, using a four-cell specifier for each
+  channel: a phandle to the DMA controller plus the following four integer cells:
+    1. The channel id
+    2. The request line number
+    3. A 32bit mask specifying the DMA channel configuration which are device
+      dependent:
+        -bit 9: Peripheral Increment Address
+          0x0: no address increment between transfers
+          0x1: increment address between transfers
+        -bit 10: Memory Increment Address
+          0x0: no address increment between transfers
+          0x1: increment address between transfers
+        -bit 15: Peripheral Increment Offset Size
+          0x0: offset size is linked to the peripheral bus width
+          0x1: offset size is fixed to 4 (32-bit alignment)
+        -bit 16-17: Priority level
+          0x0: low
+          0x1: medium
+          0x2: high
+          0x3: very high
+    4. A 32bit bitfield value specifying DMA features which are device dependent:
+       -bit 0-1: DMA FIFO threshold selection
+         0x0: 1/4 full FIFO
+         0x1: 1/2 full FIFO
+         0x2: 3/4 full FIFO
+         0x3: full FIFO
+
+maintainers:
+  - Amelie Delaunay <amelie.delaunay@st.com>
+
+allOf:
+  - $ref: "dma-controller.yaml#"
+
+properties:
+  "#dma-cells":
+    const: 4
+
+  compatible:
+    const: st,stm32-dma
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 8
+    description: Should contain all of the per-channel DMA
+      interrupts in ascending order with respect to the
+      DMA channel index.
+
+  resets:
+    maxItems: 1
+
+  st,mem2mem:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: if defined, it indicates that the controller
+      supports memory-to-memory transfer
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    #include <dt-bindings/reset/stm32mp1-resets.h>
+    dma-controller@40026400 {
+      compatible = "st,stm32-dma";
+      reg = <0x40026400 0x400>;
+      interrupts = <56>,
+                   <57>,
+                   <58>,
+                   <59>,
+                   <60>,
+                   <68>,
+                   <69>,
+                   <70>;
+      clocks = <&clk_hclk>;
+      #dma-cells = <4>;
+      st,mem2mem;
+      resets = <&rcc 150>;
+      dma-requests = <8>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/dma/stm32-dma.txt b/Documentation/devicetree/bindings/dma/stm32-dma.txt
deleted file mode 100644
index c5f519097204..000000000000
--- a/Documentation/devicetree/bindings/dma/stm32-dma.txt
+++ /dev/null
@@ -1,83 +0,0 @@
-* STMicroelectronics STM32 DMA controller
-
-The STM32 DMA is a general-purpose direct memory access controller capable of
-supporting 8 independent DMA channels. Each channel can have up to 8 requests.
-
-Required properties:
-- compatible: Should be "st,stm32-dma"
-- reg: Should contain DMA registers location and length. This should include
-  all of the per-channel registers.
-- interrupts: Should contain all of the per-channel DMA interrupts in
-  ascending order with respect to the DMA channel index.
-- clocks: Should contain the input clock of the DMA instance.
-- #dma-cells : Must be <4>. See DMA client paragraph for more details.
-
-Optional properties:
-- dma-requests : Number of DMA requests supported.
-- resets: Reference to a reset controller asserting the DMA controller
-- st,mem2mem: boolean; if defined, it indicates that the controller supports
-  memory-to-memory transfer
-
-Example:
-
-	dma2: dma-controller@40026400 {
-		compatible = "st,stm32-dma";
-		reg = <0x40026400 0x400>;
-		interrupts = <56>,
-			     <57>,
-			     <58>,
-			     <59>,
-			     <60>,
-			     <68>,
-			     <69>,
-			     <70>;
-		clocks = <&clk_hclk>;
-		#dma-cells = <4>;
-		st,mem2mem;
-		resets = <&rcc 150>;
-		dma-requests = <8>;
-	};
-
-* DMA client
-
-DMA clients connected to the STM32 DMA controller must use the format
-described in the dma.txt file, using a four-cell specifier for each
-channel: a phandle to the DMA controller plus the following four integer cells:
-
-1. The channel id
-2. The request line number
-3. A 32bit mask specifying the DMA channel configuration which are device
-   dependent:
-  -bit 9: Peripheral Increment Address
-	0x0: no address increment between transfers
-	0x1: increment address between transfers
- -bit 10: Memory Increment Address
-	0x0: no address increment between transfers
-	0x1: increment address between transfers
- -bit 15: Peripheral Increment Offset Size
-	0x0: offset size is linked to the peripheral bus width
-	0x1: offset size is fixed to 4 (32-bit alignment)
- -bit 16-17: Priority level
-	0x0: low
-	0x1: medium
-	0x2: high
-	0x3: very high
-4. A 32bit bitfield value specifying DMA features which are device dependent:
- -bit 0-1: DMA FIFO threshold selection
-	0x0: 1/4 full FIFO
-	0x1: 1/2 full FIFO
-	0x2: 3/4 full FIFO
-	0x3: full FIFO
-
-
-Example:
-
-	usart1: serial@40011000 {
-		compatible = "st,stm32-uart";
-		reg = <0x40011000 0x400>;
-		interrupts = <37>;
-		clocks = <&clk_pclk2>;
-		dmas = <&dma2 2 4 0x10400 0x3>,
-		       <&dma2 7 5 0x10200 0x3>;
-		dma-names = "rx", "tx";
-	};
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
