Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 022BF13D864
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 11:53:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6TJwCM4pfkE+OzQZ3a43tQ+0Jtu08ElQHZwTTRc7+sA=; b=SIv5ta9v0gPWMd
	7Dpb3MMDi1VAFNZU5gRU9T/1KVSFAwxXcuz4LTr6YmK2RQ2oM8IESVO8T380BYzLKnnWqvMweVG1W
	dEwCLNNmwjZyd16IJ+E4xqHeRgJrkQZutdgK7T1IgKsucZvxctMhFByQlgzpgVW8MSHKJ38ZfuTzA
	LDbXDeAT8MgWNrDiBU01B3K9/q96u5K4P8a3qd7+I7Kr4HLhjAtPQHPGWYeqA8IPOPpUBFGspXS1v
	+uvqmFId78rGt8TVyLhAZwe5UzOTky/sr1kodTq/TuRolExM3K3hAjUDMFDlSY1+p3uUpkiK2ILDP
	5GEfKn7wx1gGowVUqGkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is2mQ-0004x4-Rb; Thu, 16 Jan 2020 10:53:38 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is2mB-0004w8-Vq
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 10:53:28 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00GArDEK015410; Thu, 16 Jan 2020 11:53:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=FJhGdmI22PlzIP0rf9aoCbEMHmoRGzoHUIfTd1NB+Ks=;
 b=Ezra2HVMwUC9n9znb9TonHuOKEUJsV4SDn2frdUGkV2KoNpH/1QyyHziJFWEiJ8G7tJv
 nkovaGWcA3TcFzRUvsMxM81PT5hRu/yLtxy+c/Iu4I3um8I2qIs4Tyspfa5wTPKHNQSZ
 DTygHpKi40Y9SQ1+i5Ke5XZNcM8bARRrwF3Hu3DkpT2iecSvFg2HdcHmww7dQNfHIaMm
 xsveDYg4ZyeiyA8iIMW+dWhYgT6E3fx8KormqVZByu5aLdm7i3dlyUmrRtjbR6u6OCVW
 eU5djocsKhmTqZbvmG+nFEb9uaAQfzSgQJS3HgRefyBj1O/0ZdqddoeOZdvDkfRZgakI uw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf77b8k1y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2020 11:53:13 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 37F3A10002A;
 Thu, 16 Jan 2020 11:53:11 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A6C5A2AD9ED;
 Thu, 16 Jan 2020 11:53:11 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Thu, 16 Jan 2020 11:53:11 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <alsa-devel@alsa-project.org>,
 <robh@kernel.org>, <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-kernel@vger.kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH v2] ASoC: dt-bindings: stm32: convert spdfirx to json-schema
Date: Thu, 16 Jan 2020 11:52:44 +0100
Message-ID: <20200116105244.13485-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-16_03:2020-01-16,
 2020-01-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_025324_484074_E9FCF65C 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 SPDIFRX bindings to DT schema format using json-schema.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
Changes in v2:
- Add "additionalProperties: false"
- Also change minItems to 2 for dmas property, as both DMAs are required.
---
 .../bindings/sound/st,stm32-spdifrx.txt       | 56 -------------
 .../bindings/sound/st,stm32-spdifrx.yaml      | 84 +++++++++++++++++++
 2 files changed, 84 insertions(+), 56 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt
 create mode 100644 Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml

diff --git a/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt b/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt
deleted file mode 100644
index 33826f2459fa..000000000000
--- a/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt
+++ /dev/null
@@ -1,56 +0,0 @@
-STMicroelectronics STM32 S/PDIF receiver (SPDIFRX).
-
-The SPDIFRX peripheral, is designed to receive an S/PDIF flow compliant with
-IEC-60958 and IEC-61937.
-
-Required properties:
-  - compatible: should be "st,stm32h7-spdifrx"
-  - reg: cpu DAI IP base address and size
-  - clocks: must contain an entry for kclk (used as S/PDIF signal reference)
-  - clock-names: must contain "kclk"
-  - interrupts: cpu DAI interrupt line
-  - dmas: DMA specifiers for audio data DMA and iec control flow DMA
-    See STM32 DMA bindings, Documentation/devicetree/bindings/dma/stm32-dma.txt
-  - dma-names: two dmas have to be defined, "rx" and "rx-ctrl"
-
-Optional properties:
-  - resets: Reference to a reset controller asserting the SPDIFRX
-
-The device node should contain one 'port' child node with one child 'endpoint'
-node, according to the bindings defined in Documentation/devicetree/bindings/
-graph.txt.
-
-Example:
-spdifrx: spdifrx@40004000 {
-	compatible = "st,stm32h7-spdifrx";
-	reg = <0x40004000 0x400>;
-	clocks = <&rcc SPDIFRX_CK>;
-	clock-names = "kclk";
-	interrupts = <97>;
-	dmas = <&dmamux1 2 93 0x400 0x0>,
-	       <&dmamux1 3 94 0x400 0x0>;
-	dma-names = "rx", "rx-ctrl";
-	pinctrl-0 = <&spdifrx_pins>;
-	pinctrl-names = "default";
-
-	spdifrx_port: port {
-		cpu_endpoint: endpoint {
-			remote-endpoint = <&codec_endpoint>;
-		};
-	};
-};
-
-spdif_in: spdif-in {
-	compatible = "linux,spdif-dir";
-
-	codec_port: port {
-		codec_endpoint: endpoint {
-			remote-endpoint = <&cpu_endpoint>;
-		};
-	};
-};
-
-soundcard {
-	compatible = "audio-graph-card";
-	dais = <&spdifrx_port>;
-};
diff --git a/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml b/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml
new file mode 100644
index 000000000000..e19313e7a552
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/st,stm32-spdifrx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 S/PDIF receiver (SPDIFRX)
+
+maintainers:
+  - Olivier Moysan <olivier.moysan@st.com>
+
+description: |
+  The SPDIFRX peripheral, is designed to receive an S/PDIF flow compliant with
+  IEC-60958 and IEC-61937.
+
+properties:
+  compatible:
+    enum:
+      - st,stm32h7-spdifrx
+
+  "#sound-dai-cells":
+    const: 0
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: kclk
+
+  interrupts:
+    maxItems: 1
+
+  dmas:
+    description: |
+      Two DMA channel specifiers are requested:
+      - audio data capture DMA
+      - IEC status bits capture DMA
+      See STM32 DMA bindings /bindings/dma/stm32-dma.txt.
+    minItems: 2
+    maxItems: 2
+
+  dma-names:
+    items:
+      - const: rx
+      - const: rx-ctrl
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - "#sound-dai-cells"
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - dmas
+  - dma-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    spdifrx: spdifrx@40004000 {
+        compatible = "st,stm32h7-spdifrx";
+        #sound-dai-cells = <0>;
+        reg = <0x40004000 0x400>;
+        clocks = <&rcc SPDIF_K>;
+        clock-names = "kclk";
+        interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
+        dmas = <&dmamux1 2 93 0x400 0x0>,
+               <&dmamux1 3 94 0x400 0x0>;
+        dma-names = "rx", "rx-ctrl";
+        pinctrl-0 = <&spdifrx_pins>;
+        pinctrl-names = "default";
+    };
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
