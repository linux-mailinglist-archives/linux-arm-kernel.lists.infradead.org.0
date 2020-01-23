Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A62146397
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 09:35:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xG/TGg9MC4O7UpwrUFJ8GxYCOobBf9PDUqKoazSS1oI=; b=C3viQT/OEHx/pF
	gNvVjRf6aFRy4rVgdd/wfaqb0vu+b4YSfkkc/2g4VhVnIXcGLPOUqROqkp25yGfRJzAe4AAnLf1XJ
	fZSoIV8uuOoCheXm43i+weEiLyFQ4VbEwBBvYF1ubYwqcEAdplvtcM82q6Pq6viC9zyGfx3IoXuj6
	V6I02CVZCOHMJEioMP58J9Qs3y7RUNIb//1BcmpSTEsSYKz+7TnhS4rsZV6hSqmfPV+/kZS3GwzJr
	T8Bz07kxAeEsje5WDFqcclxIQwwv0iMYU5efSexX2W1yhYz4T/AAgx+IC/C6mLSz6d+rJOuvLW0iV
	KzbpCqqVtIIz+K+YsvfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuXxR-0005f4-S9; Thu, 23 Jan 2020 08:35:21 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuXx1-0005eT-Ax
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 08:35:00 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00N8SNPm018468; Thu, 23 Jan 2020 09:34:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=apHFLuLu3YXS+5uUuou1zCoK9krUcCjBR9YdOSKYOpE=;
 b=urfITx1uBk6CLUO/+Z4Md156405PuiKU0hd4owehru0R+ibjjwv1+Ic1oZnx09mBepAc
 KWw24hGuiuVWiFQPyaEp7IBixTiJCHFfOJSnAAhvCj299GM2A72UvpCyo29XPGWpIhYZ
 G8p82V4fOEa1vw2EnDEXQpg+BNm0SF5MwOhess6j+1VYEE7ptwgcnmHfE2M7o+9bhGQK
 fcH8D39KpUy9n6UBPvH666+AEtBpj0k01VAHr8o2fOp9n4L5q8CHvMwokILie1AWIS2X
 R1TvUax8dOg18nROtvOCNXy2eIHaJ4g0yRiPZodTqX47dtPqhceOuF10mdgxvGc0KFIV HQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkrp2h24h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 23 Jan 2020 09:34:44 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D87A310002A;
 Thu, 23 Jan 2020 09:34:43 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7B69920EDCB;
 Thu, 23 Jan 2020 09:34:43 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Thu, 23 Jan 2020 09:34:42 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <olivier.moysan@st.com>,
 <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <alsa-devel@alsa-project.org>
Subject: [PATCH] dt-bindings: stm32: convert dfsdm to json-schema
Date: Thu, 23 Jan 2020 09:34:31 +0100
Message-ID: <20200123083432.21997-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-22_08:2020-01-22,
 2020-01-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_003458_221125_E1DAEFE0 
X-CRM114-Status: GOOD (  22.13  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 pmeerw@pmeerw.net, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 DFSDM bindings to DT schema format
using json-schema.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
The DT check still returns some warnings on this bindings:
dfsdm@4400d000: filter@4: 'st,adc-channels' is a required property
dfsdm@4400d000: filter@5: 'st,adc-channels' is a required property ...

These warnings occur because some disabled nodes do not provides the
required properties. These nodes are included from SoC DT,
and do not provides by default the properties which are board dependent.

As workaround in DFSDM yaml bindings, the properties
(like st,adc-channels) could be defined as required,
only for the nodes which are in enabled state.
---
 .../bindings/iio/adc/st,stm32-dfsdm-adc.txt   | 135 -------
 .../bindings/iio/adc/st,stm32-dfsdm-adc.yaml  | 332 ++++++++++++++++++
 2 files changed, 332 insertions(+), 135 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.txt b/Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.txt
deleted file mode 100644
index 75ba25d062e1..000000000000
--- a/Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.txt
+++ /dev/null
@@ -1,135 +0,0 @@
-STMicroelectronics STM32 DFSDM ADC device driver
-
-
-STM32 DFSDM ADC is a sigma delta analog-to-digital converter dedicated to
-interface external sigma delta modulators to STM32 micro controllers.
-It is mainly targeted for:
-- Sigma delta modulators (motor control, metering...)
-- PDM microphones (audio digital microphone)
-
-It features up to 8 serial digital interfaces (SPI or Manchester) and
-up to 4 filters on stm32h7 or 6 filters on stm32mp1.
-
-Each child node match with a filter instance.
-
-Contents of a STM32 DFSDM root node:
-------------------------------------
-Required properties:
-- compatible: Should be one of:
-  "st,stm32h7-dfsdm"
-  "st,stm32mp1-dfsdm"
-- reg: Offset and length of the DFSDM block register set.
-- clocks: IP and serial interfaces clocking. Should be set according
-		to rcc clock ID and "clock-names".
-- clock-names: Input clock name "dfsdm" must be defined,
-		"audio" is optional. If defined CLKOUT is based on the audio
-		clock, else "dfsdm" is used.
-- #interrupt-cells = <1>;
-- #address-cells = <1>;
-- #size-cells = <0>;
-
-Optional properties:
-- spi-max-frequency: Requested only for SPI master mode.
-		  SPI clock OUT frequency (Hz). This clock must be set according
-		  to "clock" property. Frequency must be a multiple of the rcc
-		  clock frequency. If not, SPI CLKOUT frequency will not be
-		  accurate.
-- pinctrl-names:	Set to "default".
-- pinctrl-0:		List of phandles pointing to pin configuration
-			nodes to set pins in mode of operation for dfsdm
-			on external pin.
-
-Contents of a STM32 DFSDM child nodes:
---------------------------------------
-
-Required properties:
-- compatible: Must be:
-	"st,stm32-dfsdm-adc" for sigma delta ADCs
-	"st,stm32-dfsdm-dmic" for audio digital microphone.
-- reg: Specifies the DFSDM filter instance used.
-	Valid values are from 0 to 3 on stm32h7, 0 to 5 on stm32mp1.
-- interrupts: IRQ lines connected to each DFSDM filter instance.
-- st,adc-channels:	List of single-ended channels muxed for this ADC.
-			valid values:
-				"st,stm32h7-dfsdm" compatibility: 0 to 7.
-- st,adc-channel-names:	List of single-ended channel names.
-- st,filter-order:  SinC filter order from 0 to 5.
-			0: FastSinC
-			[1-5]: order 1 to 5.
-			For audio purpose it is recommended to use order 3 to 5.
-- #io-channel-cells = <1>: See the IIO bindings section "IIO consumers".
-
-Required properties for "st,stm32-dfsdm-adc" compatibility:
-- io-channels: From common IIO binding. Used to pipe external sigma delta
-		modulator or internal ADC output to DFSDM channel.
-		This is not required for "st,stm32-dfsdm-pdm" compatibility as
-		PDM microphone is binded in Audio DT node.
-
-Required properties for "st,stm32-dfsdm-pdm" compatibility:
-- #sound-dai-cells: Must be set to 0.
-- dma: DMA controller phandle and DMA request line associated to the
-		filter instance (specified by the field "reg")
-- dma-names: Must be "rx"
-
-Optional properties:
-- st,adc-channel-types:	Single-ended channel input type.
-			- "SPI_R": SPI with data on rising edge (default)
-			- "SPI_F": SPI with data on falling edge
-			- "MANCH_R": manchester codec, rising edge = logic 0, falling edge = logic 1
-			- "MANCH_F": manchester codec, rising edge = logic 1, falling edge = logic 0
-- st,adc-channel-clk-src: Conversion clock source.
-			  - "CLKIN": external SPI clock (CLKIN x)
-			  - "CLKOUT": internal SPI clock (CLKOUT) (default)
-			  - "CLKOUT_F": internal SPI clock divided by 2 (falling edge).
-			  - "CLKOUT_R": internal SPI clock divided by 2 (rising edge).
-
-- st,adc-alt-channel: Must be defined if two sigma delta modulator are
-			  connected on same SPI input.
-			  If not set, channel n is connected to SPI input n.
-			  If set, channel n is connected to SPI input n + 1.
-
-- st,filter0-sync: Set to 1 to synchronize with DFSDM filter instance 0.
-		   Used for multi microphones synchronization.
-
-Example of a sigma delta adc connected on DFSDM SPI port 0
-and a pdm microphone connected on DFSDM SPI port 1:
-
-	ads1202: simple_sd_adc@0 {
-		compatible = "ads1202";
-		#io-channel-cells = <1>;
-	};
-
-	dfsdm: dfsdm@40017000 {
-		compatible = "st,stm32h7-dfsdm";
-		reg = <0x40017000 0x400>;
-		clocks = <&rcc DFSDM1_CK>;
-		clock-names = "dfsdm";
-		#interrupt-cells = <1>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		dfsdm_adc0: filter@0 {
-			compatible = "st,stm32-dfsdm-adc";
-			#io-channel-cells = <1>;
-			reg = <0>;
-			interrupts = <110>;
-			st,adc-channels = <0>;
-			st,adc-channel-names = "sd_adc0";
-			st,adc-channel-types = "SPI_F";
-			st,adc-channel-clk-src = "CLKOUT";
-			io-channels = <&ads1202 0>;
-			st,filter-order = <3>;
-		};
-		dfsdm_pdm1: filter@1 {
-			compatible = "st,stm32-dfsdm-dmic";
-			reg = <1>;
-			interrupts = <111>;
-			dmas = <&dmamux1 102 0x400 0x00>;
-			dma-names = "rx";
-			st,adc-channels = <1>;
-			st,adc-channel-names = "dmic1";
-			st,adc-channel-types = "SPI_R";
-			st,adc-channel-clk-src = "CLKOUT";
-			st,filter-order = <5>;
-		};
-	}
diff --git a/Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml b/Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml
new file mode 100644
index 000000000000..c91407081aa5
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml
@@ -0,0 +1,332 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/st,stm32-dfsdm-adc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 DFSDM ADC device driver
+
+maintainers:
+  - Fabrice Gasnier <fabrice.gasnier@st.com>
+  - Olivier Moysan <olivier.moysan@st.com>
+
+description: |
+  STM32 DFSDM ADC is a sigma delta analog-to-digital converter dedicated to
+  interface external sigma delta modulators to STM32 micro controllers.
+  It is mainly targeted for:
+  - Sigma delta modulators (motor control, metering...)
+  - PDM microphones (audio digital microphone)
+
+  It features up to 8 serial digital interfaces (SPI or Manchester) and
+  up to 4 filters on stm32h7 or 6 filters on stm32mp1.
+
+  Each child node matches with a filter instance.
+
+properties:
+  compatible:
+    enum:
+      - st,stm32h7-dfsdm
+      - st,stm32mp1-dfsdm
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description:
+          Internal clock used for DFSDM digital processing and control blocks.
+          dfsdm clock can also feed CLKOUT, when CLKOUT is used.
+      - description: audio clock can be used as an alternate to feed CLKOUT.
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: dfsdm
+      - const: audio
+    minItems: 1
+    maxItems: 2
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  spi-max-frequency:
+    description:
+      SPI clock OUT frequency (Hz). Requested only for SPI master mode.
+      This clock must be set according to the "clock" property.
+      Frequency must be a multiple of the rcc clock frequency.
+      If not, SPI CLKOUT frequency will not be accurate.
+    maximum: 20000000
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#address-cells"
+  - "#size-cells"
+
+patternProperties:
+  "^filter@[0-9]+$":
+    type: object
+    description: child node
+
+    properties:
+      compatible:
+        enum:
+          - st,stm32-dfsdm-adc
+          - st,stm32-dfsdm-dmic
+
+      reg:
+        description: Specifies the DFSDM filter instance used.
+        maxItems: 1
+
+      interrupts:
+        maxItems: 1
+
+      st,adc-channels:
+        description: |
+          List of single-ended channels muxed for this ADC.
+          On stm32h7 and stm32mp1:
+          - For st,stm32-dfsdm-adc: up to 8 channels numbered from 0 to 7.
+          - For st,stm32-dfsdm-dmic: 1 channel numbered from 0 to 7.
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32-array
+          - items:
+              minimum: 0
+              maximum: 7
+
+      st,adc-channel-names:
+        description: List of single-ended channel names.
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/string-array
+
+      st,filter-order:
+        description: |
+          SinC filter order from 0 to 5.
+          - 0: FastSinC
+          - [1-5]: order 1 to 5.
+          For audio purpose it is recommended to use order 3 to 5.
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32
+          - items:
+              minimum: 0
+              maximum: 5
+
+      "#io-channel-cells":
+        const: 1
+
+      st,adc-channel-types:
+        description: |
+          Single-ended channel input type.
+          - "SPI_R": SPI with data on rising edge (default)
+          - "SPI_F": SPI with data on falling edge
+          - "MANCH_R": manchester codec, rising edge = logic 0, falling edge = logic 1
+          - "MANCH_F": manchester codec, rising edge = logic 1, falling edge = logic 0
+        items:
+          enum: [ SPI_R, SPI_F, MANCH_R, MANCH_F ]
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/non-unique-string-array
+
+      st,adc-channel-clk-src:
+        description: |
+          Conversion clock source.
+          - "CLKIN": external SPI clock (CLKIN x)
+          - "CLKOUT": internal SPI clock (CLKOUT) (default)
+          - "CLKOUT_F": internal SPI clock divided by 2 (falling edge).
+          - "CLKOUT_R": internal SPI clock divided by 2 (rising edge).
+        items:
+          enum: [ CLKIN, CLKOUT, CLKOUT_F, CLKOUT_R ]
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/non-unique-string-array
+
+      st,adc-alt-channel:
+        description:
+          Must be defined if two sigma delta modulators are
+          connected on same SPI input.
+          If not set, channel n is connected to SPI input n.
+          If set, channel n is connected to SPI input n + 1.
+        type: boolean
+
+      st,filter0-sync:
+        description:
+          Set to 1 to synchronize with DFSDM filter instance 0.
+          Used for multi microphones synchronization.
+        type: boolean
+
+      dmas:
+        maxItems: 1
+
+      dma-names:
+        items:
+          - const: rx
+
+    required:
+      - compatible
+      - reg
+      - interrupts
+      - st,adc-channels
+      - st,adc-channel-names
+      - st,filter-order
+      - "#io-channel-cells"
+
+    allOf:
+      - if:
+          properties:
+            compatible:
+              contains:
+                const: st,stm32-dfsdm-adc
+
+      - then:
+          properties:
+            st,adc-channels:
+              minItems: 1
+              maxItems: 8
+
+            st,adc-channel-names:
+              minItems: 1
+              maxItems: 8
+
+            st,adc-channel-types:
+              minItems: 1
+              maxItems: 8
+
+            st,adc-channel-clk-src:
+              minItems: 1
+              maxItems: 8
+
+            io-channels:
+              description:
+                From common IIO binding. Used to pipe external sigma delta
+                modulator or internal ADC output to DFSDM channel.
+                This is not required for "st,stm32-dfsdm-pdm" compatibility as
+                PDM microphone is binded in Audio DT node.
+
+          required:
+            - io-channels
+
+      - if:
+          properties:
+            compatible:
+              contains:
+                const: st,stm32-dfsdm-dmic
+
+      - then:
+          properties:
+            st,adc-channels:
+              maxItems: 1
+
+            st,adc-channel-names:
+              maxItems: 1
+
+            st,adc-channel-types:
+              maxItems: 1
+
+            st,adc-channel-clk-src:
+              maxItems: 1
+
+          required:
+            - dmas
+            - dma-names
+
+          patternProperties:
+            "^dfsdm-dai+$":
+              type: object
+              description: child node
+
+              properties:
+                "#sound-dai-cells":
+                  const: 0
+
+                io-channels:
+                  description:
+                    From common IIO binding. Used to pipe external sigma delta
+                    modulator or internal ADC output to DFSDM channel.
+
+              required:
+                - "#sound-dai-cells"
+                - io-channels
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: st,stm32h7-dfsdm
+
+  - then:
+      patternProperties:
+        "^filter@[0-9]+$":
+          properties:
+            reg:
+              items:
+                minimum: 0
+                maximum: 3
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: st,stm32mp1-dfsdm
+
+  - then:
+      patternProperties:
+        "^filter@[0-9]+$":
+          properties:
+            reg:
+              items:
+                minimum: 0
+                maximum: 5
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    dfsdm: dfsdm@4400d000 {
+      compatible = "st,stm32mp1-dfsdm";
+      reg = <0x4400d000 0x800>;
+      clocks = <&rcc DFSDM_K>, <&rcc ADFSDM_K>;
+      clock-names = "dfsdm", "audio";
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      dfsdm0: filter@0 {
+        compatible = "st,stm32-dfsdm-dmic";
+        reg = <0>;
+        interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
+        dmas = <&dmamux1 101 0x400 0x01>;
+        dma-names = "rx";
+        #io-channel-cells = <1>;
+        st,adc-channels = <1>;
+        st,adc-channel-names = "dmic0";
+        st,adc-channel-types = "SPI_R";
+        st,adc-channel-clk-src = "CLKOUT";
+        st,filter-order = <5>;
+
+        asoc_pdm0: dfsdm-dai {
+          compatible = "st,stm32h7-dfsdm-dai";
+          #sound-dai-cells = <0>;
+          io-channels = <&dfsdm0 0>;
+        };
+      };
+
+      dfsdm_pdm1: filter@1 {
+        compatible = "st,stm32-dfsdm-adc";
+        reg = <1>;
+        interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>;
+        dmas = <&dmamux1 102 0x400 0x01>;
+        dma-names = "rx";
+        #io-channel-cells = <1>;
+        st,adc-channels = <2 3>;
+        st,adc-channel-names = "in2", "in3";
+        st,adc-channel-types = "SPI_R", "SPI_R";
+        st,adc-channel-clk-src = "CLKOUT_F", "CLKOUT_F";
+        io-channels = <&sd_adc2 &sd_adc3>;
+        st,filter-order = <1>;
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
