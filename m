Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE0F14DC4B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 14:51:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z+g7uY2z2MNgMr0oCu+8jNm8gMHnkdgoJZhARenfLnY=; b=TcxUTL5okX18HH
	ckcbauLUoML6y8cwptE6U0l4jO6aYaz7jN8XuPdI+Zj3j1Bf9IDAphr2eB283m6TR8BQEwpjrdD8F
	yxiT0a5d9LgER3FGzgAQ3BSoI6b7aw/UJwYPGzrcL+SfI2ZTg5JRWIblQlOa5pwShQhxA5iZ+xTF+
	uAqSOLQH7khJVypoGZ06pclNeJKWbBCyd14qYj68lZCGMpVEM8y0wjVDpxmO4FdeZgfLpYhWzzFn4
	TdCQKXReNSqNsqd8OdDBvciFRSHYpSnoxpoQJzd40+4+VP3uuvPahoY0fu3kyANMuF2igJxAzDet8
	crjBB+Z687ZPTNwFIzFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixAE1-0002li-Ms; Thu, 30 Jan 2020 13:51:17 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixADs-0002ky-LM
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 13:51:11 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00UDoTLP018602; Thu, 30 Jan 2020 14:50:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=4ORQc1C1L+jHqxdd5qqEPlDyU5e64gXX/2Hf/y/M/Po=;
 b=nyqez/yipugLph8aD51V48Ds+eLq3eTBxS8yNN5J3mKY4QUHHKyDo0PL5YLy7EPfrT4N
 8qXw9diVy+n0q8fz9ksVgNnC02cpMeSfZTcNCXSsqrjda2xNXEIL0G1rHgvVyEdfXJi+
 r8+VxchmmRsIO4kzU8hc7rqHkh9JAb9cSRgpaarLsPw9zSXyCL0iO47AQUmH0raTPxdl
 wFQqWIwr2QORh84YX+8rTnPqILoUljWIS23rN+3KAATdwQAhO0otEI0QAosSKfRNmlLH
 LvuUdj88L8WwCw4Awak4EmMQg1jjdpq1UMvbVnwdUV+wl2JdeOhPAuH/EosS2smc4aY3 Ww== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrc13ghy3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 30 Jan 2020 14:50:56 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EF2CB100038;
 Thu, 30 Jan 2020 14:50:50 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 907E22D792A;
 Thu, 30 Jan 2020 14:50:50 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Thu, 30 Jan 2020 14:50:49 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <alsa-devel@alsa-project.org>,
 <robh@kernel.org>, <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-kernel@vger.kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH] ASoC: dt-bindings: stm32: convert sai to json-schema
Date: Thu, 30 Jan 2020 14:50:40 +0100
Message-ID: <20200130135040.22575-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-30_04:2020-01-28,
 2020-01-30 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_055109_188076_F1EC2558 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Convert the STM32 SAI bindings to DT schema format using json-schema.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 .../bindings/sound/st,stm32-sai.txt           | 107 ----------
 .../bindings/sound/st,stm32-sai.yaml          | 193 ++++++++++++++++++
 2 files changed, 193 insertions(+), 107 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/st,stm32-sai.txt
 create mode 100644 Documentation/devicetree/bindings/sound/st,stm32-sai.yaml

diff --git a/Documentation/devicetree/bindings/sound/st,stm32-sai.txt b/Documentation/devicetree/bindings/sound/st,stm32-sai.txt
deleted file mode 100644
index 944743dd9212..000000000000
--- a/Documentation/devicetree/bindings/sound/st,stm32-sai.txt
+++ /dev/null
@@ -1,107 +0,0 @@
-STMicroelectronics STM32 Serial Audio Interface (SAI).
-
-The SAI interface (Serial Audio Interface) offers a wide set of audio protocols
-as I2S standards, LSB or MSB-justified, PCM/DSP, TDM, and AC'97.
-The SAI contains two independent audio sub-blocks. Each sub-block has
-its own clock generator and I/O lines controller.
-
-Required properties:
-  - compatible: Should be "st,stm32f4-sai" or "st,stm32h7-sai"
-  - reg: Base address and size of SAI common register set.
-  - clocks: Must contain phandle and clock specifier pairs for each entry
-	in clock-names.
-  - clock-names: Must contain "pclk" "x8k" and "x11k"
-	"pclk": Clock which feeds the peripheral bus interface.
-	        Mandatory for "st,stm32h7-sai" compatible.
-	        Not used for "st,stm32f4-sai" compatible.
-	"x8k": SAI parent clock for sampling rates multiple of 8kHz.
-	"x11k": SAI parent clock for sampling rates multiple of 11.025kHz.
-  - interrupts: cpu DAI interrupt line shared by SAI sub-blocks
-
-Optional properties:
-  - resets: Reference to a reset controller asserting the SAI
-
-SAI subnodes:
-Two subnodes corresponding to SAI sub-block instances A et B can be defined.
-Subnode can be omitted for unsused sub-block.
-
-SAI subnodes required properties:
-  - compatible: Should be "st,stm32-sai-sub-a" or "st,stm32-sai-sub-b"
-	for SAI sub-block A or B respectively.
-  - reg: Base address and size of SAI sub-block register set.
-  - clocks: Must contain one phandle and clock specifier pair
-	for sai_ck which feeds the internal clock generator.
-	If the SAI shares a master clock, with another SAI set as MCLK
-	clock provider, SAI provider phandle must be specified here.
-  - clock-names: Must contain "sai_ck".
-	Must also contain "MCLK", if SAI shares a master clock,
-	with a SAI set as MCLK clock provider.
-  - dmas: see Documentation/devicetree/bindings/dma/stm32-dma.txt
-  - dma-names: identifier string for each DMA request line
-	"tx": if sai sub-block is configured as playback DAI
-	"rx": if sai sub-block is configured as capture DAI
-  - pinctrl-names: should contain only value "default"
-  - pinctrl-0: see Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
-
-SAI subnodes Optional properties:
-  - st,sync: specify synchronization mode.
-	By default SAI sub-block is in asynchronous mode.
-	This property sets SAI sub-block as slave of another SAI sub-block.
-	Must contain the phandle and index of the sai sub-block providing
-	the synchronization.
-  - st,iec60958: support S/PDIF IEC6958 protocol for playback
-	IEC60958 protocol is not available for capture.
-	By default, custom protocol is assumed, meaning that protocol is
-	configured according to protocol defined in related DAI link node,
-	such as i2s, left justified, right justified, dsp and pdm protocols.
-	Note: ac97 protocol is not supported by SAI driver
-   - #clock-cells: should be 0. This property must be present if the SAI device
-	is a master clock provider, according to clocks bindings, described in
-	Documentation/devicetree/bindings/clock/clock-bindings.txt.
-
-The device node should contain one 'port' child node with one child 'endpoint'
-node, according to the bindings defined in Documentation/devicetree/bindings/
-graph.txt.
-
-Example:
-sound_card {
-	compatible = "audio-graph-card";
-	dais = <&sai1b_port>;
-};
-
-sai1: sai1@40015800 {
-	compatible = "st,stm32h7-sai";
-	#address-cells = <1>;
-	#size-cells = <1>;
-	ranges = <0 0x40015800 0x400>;
-	reg = <0x40015800 0x4>;
-	clocks = <&rcc SAI1_CK>, <&rcc PLL1_Q>, <&rcc PLL2_P>;
-	clock-names = "pclk", "x8k", "x11k";
-	interrupts = <87>;
-
-	sai1a: audio-controller@40015804 {
-		compatible = "st,stm32-sai-sub-a";
-		reg = <0x4 0x1C>;
-		clocks = <&rcc SAI1_CK>;
-		clock-names = "sai_ck";
-		dmas = <&dmamux1 1 87 0x400 0x0>;
-		dma-names = "tx";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_sai1a>;
-
-		sai1b_port: port {
-			cpu_endpoint: endpoint {
-				remote-endpoint = <&codec_endpoint>;
-				format = "i2s";
-			};
-		};
-	};
-};
-
-audio-codec {
-	codec_port: port {
-		codec_endpoint: endpoint {
-			remote-endpoint = <&cpu_endpoint>;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml b/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
new file mode 100644
index 000000000000..33dca007fc86
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
@@ -0,0 +1,193 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/st,stm32-sai.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 Serial Audio Interface (SAI)
+
+maintainers:
+  - Olivier Moysan <olivier.moysan@st.com>
+
+description:
+  The SAI interface (Serial Audio Interface) offers a wide set of audio
+  protocols as I2S standards, LSB or MSB-justified, PCM/DSP, TDM, and AC'97.
+  The SAI contains two independent audio sub-blocks. Each sub-block has
+  its own clock generator and I/O lines controller.
+
+properties:
+  compatible:
+    enum:
+      - st,stm32f4-sai
+      - st,stm32h7-sai
+
+  reg:
+    items:
+      - description: Base address and size of SAI common register set.
+      - description: Base address and size of SAI identification register set.
+    minItems: 1
+    maxItems: 2
+
+  ranges:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  clocks:
+    items:
+      - description: pclk feeds the peripheral bus interface.
+      - description: x8k, SAI parent clock for sampling rates multiple of 8kHz.
+      - description: x11k, SAI parent clock for sampling rates multiple of 11.025kHz.
+
+  clock-names:
+    items:
+      enum: [ pclk, x8k, x11k ]
+    minItems: 3
+    maxItems: 3
+
+required:
+  - compatible
+  - reg
+  - ranges
+  - "#address-cells"
+  - "#size-cells"
+  - clocks
+  - clock-names
+
+patternProperties:
+  "^audio-controller@[0-9a-f]+$":
+    type: object
+    description:
+      Two subnodes corresponding to SAI sub-block instances A et B
+      can be defined. Subnode can be omitted for unsused sub-block.
+
+    properties:
+      compatible:
+        description: Compatible for SAI sub-block A or B.
+        enum:
+          - st,stm32-sai-sub-a
+          - st,stm32-sai-sub-b
+
+      "#sound-dai-cells":
+        const: 0
+
+      reg:
+        maxItems: 1
+
+      clocks:
+        items:
+          - description: sai_ck clock feeding the internal clock generator.
+          - description: MCLK clock from a SAI set as master clock provider.
+        minItems: 1
+        maxItems: 2
+
+      clock-names:
+        items:
+          - const: sai_ck
+          - const: MCLK
+        minItems: 1
+        maxItems: 2
+
+      dmas:
+        items:
+          - description: SAI sub-block is configured as a capture DAI.
+          - description: SAI sub-block is configured as a playback DAI.
+        minItems: 1
+        maxItems: 1
+
+      dma-names:
+        items:
+          - enum: [ rx, tx ]
+
+      st,sync:
+        description:
+          Configure the SAI sub-block as slave of another SAI sub-block.
+          By default SAI sub-block is in asynchronous mode.
+          Must contain the phandle and index of the SAI sub-block providing
+          the synchronization.
+        allOf:
+          - $ref: /schemas/types.yaml#definitions/phandle-array
+          - maxItems: 1
+
+      st,iec60958:
+        description:
+          If set, support S/PDIF IEC6958 protocol for playback.
+          IEC60958 protocol is not available for capture.
+          By default, custom protocol is assumed, meaning that protocol is
+          configured according to protocol defined in related DAI link node,
+          such as i2s, left justified, right justified, dsp and pdm protocols.
+        allOf:
+          - $ref: /schemas/types.yaml#definitions/flag
+
+      "#clock-cells":
+        description: Configure the SAI device as master clock provider.
+        const: 0
+
+    required:
+      - compatible
+      - "#sound-dai-cells"
+      - reg
+      - clocks
+      - clock-names
+      - dmas
+      - dma-names
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: st,stm32f4-sai
+
+  - then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+
+        clock-names:
+          items:
+            enum: [ x8k, x11k ]
+          minItems: 2
+          maxItems: 2
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    #include <dt-bindings/reset/stm32mp1-resets.h>
+    sai1: sai@4400a000 {
+      compatible = "st,stm32h7-sai";
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges = <0 0x4400a000 0x400>;
+      reg = <0x4400a000 0x4>, <0x4400a3f0 0x10>;
+      interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&rcc SAI1>, <&rcc PLL1_Q>, <&rcc PLL2_P>;
+      clock-names = "pclk", "x8k", "x11k";
+      resets = <&rcc SAI1_R>;
+
+      sai1a: audio-controller@4400a004 {
+        compatible = "st,stm32-sai-sub-a";
+        #sound-dai-cells = <0>;
+        reg = <0x4 0x1c>;
+        clocks = <&rcc SAI1_K>;
+        clock-names = "sai_ck";
+        dmas = <&dmamux1 87 0x400 0x01>;
+        dma-names = "tx";
+      };
+    };
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
