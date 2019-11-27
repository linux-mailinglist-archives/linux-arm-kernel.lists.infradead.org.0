Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3CC10B3DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 17:51:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=88DEKP+XJakJBvps955gJbQzMGpPD8pmbshe7q5mmgE=; b=Ud9suNGqZJ79+v
	eKZAaU1ymY0/1KzYd8olJZso6bbPSeeisw49VxR0iOrEEqOkQq3dhn5D97BVehf6JXxlGW6gqQuoH
	zBwgy2o7kL/Vi3rwn/WcbV1P5mQBnV5tfNNvxAiLCSEWSKx3rsvnof3wu+yqkTj2iu28LbpPluqc3
	sv+pxLMLMZPc72aelwO3dbNw7Ni0LtF1KSVDEmsE08qA52ucECtF/MRBxTHo6t7Km/W6RSv5vGzfY
	HBqjbCDnQYRyi8VluCKKdoW97dEqw34q7p4sRicB8e7OUDPh1xI2jLv4SruOINLEhxWlqyoZijus/
	8UTMSPRPYl4UPUNAEhjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia0X8-0005Qa-AF; Wed, 27 Nov 2019 16:51:18 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia0Wr-0005P6-Bd
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 16:51:07 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xARGWGed028016; Wed, 27 Nov 2019 17:50:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=nDaIEKzUdQ7hNAlqqSJh/kZyJxZEYS5JjGUDsbvHZr0=;
 b=taDQkeRwgEQ1Kgws4MIarnpiLSH6Ll/48ekNgOR/IiDemecOFJOmRJtIuh/ZiwoycW4L
 Axohowy/QC+9H5ui2w1/+QexLbmrn6H4+KuZDqFW4AdGzFSeFHxCfX0o+JIxZ37aM+8V
 BaxZV7cA0oErH248/qAaP2UsMOScdh2AH5yTC43P92O4G8aCOrvJ16K0d0RT7D+5rb6N
 +sy6Qdc2p+omfAJI0XNYodmqrBoTpn1FJO41a7jrs0j5Y/oOkTSluU6Ve9DC7DrdzeBR
 99yIkC4Db9F0rG/l8ARamyG3ypIpVwafMBOptURN1ccEseddiZmpFd/FsXAdK1MPhYjA RA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2whcxkmspj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 27 Nov 2019 17:50:52 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1DDBD10002A;
 Wed, 27 Nov 2019 17:50:52 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 05B3F2C8503;
 Wed, 27 Nov 2019 17:50:52 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 27 Nov 2019 17:50:51 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH] dt-bindings: iio: adc: stm32-adc: convert bindings to
 json-schema
Date: Wed, 27 Nov 2019 17:48:45 +0100
Message-ID: <1574873325-9916-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-27_04:2019-11-27,2019-11-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_085105_380789_28B66B7C 
X-CRM114-Status: GOOD (  24.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, mcoquelin.stm32@gmail.com, lars@metafoo.de,
 alexandre.torgue@st.com, devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 ADC binding to DT schema format using json-schema

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
Note: this applies on top of IIO tree currently (iio-for-5.5c).
---
 .../devicetree/bindings/iio/adc/st,stm32-adc.txt   | 149 -------
 .../devicetree/bindings/iio/adc/st,stm32-adc.yaml  | 448 +++++++++++++++++++++
 2 files changed, 448 insertions(+), 149 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
deleted file mode 100644
index 8de9331..00000000
--- a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
+++ /dev/null
@@ -1,149 +0,0 @@
-STMicroelectronics STM32 ADC device driver
-
-STM32 ADC is a successive approximation analog-to-digital converter.
-It has several multiplexed input channels. Conversions can be performed
-in single, continuous, scan or discontinuous mode. Result of the ADC is
-stored in a left-aligned or right-aligned 32-bit data register.
-Conversions can be launched in software or using hardware triggers.
-
-The analog watchdog feature allows the application to detect if the input
-voltage goes beyond the user-defined, higher or lower thresholds.
-
-Each STM32 ADC block can have up to 3 ADC instances.
-
-Each instance supports two contexts to manage conversions, each one has its
-own configurable sequence and trigger:
-- regular conversion can be done in sequence, running in background
-- injected conversions have higher priority, and so have the ability to
-  interrupt regular conversion sequence (either triggered in SW or HW).
-  Regular sequence is resumed, in case it has been interrupted.
-
-Contents of a stm32 adc root node:
------------------------------------
-Required properties:
-- compatible: Should be one of:
-  "st,stm32f4-adc-core"
-  "st,stm32h7-adc-core"
-  "st,stm32mp1-adc-core"
-- reg: Offset and length of the ADC block register set.
-- interrupts: One or more interrupts for ADC block. Some parts like stm32f4
-  and stm32h7 share a common ADC interrupt line. stm32mp1 has two separate
-  interrupt lines, one for each ADC within ADC block.
-- clocks: Core can use up to two clocks, depending on part used:
-  - "adc" clock: for the analog circuitry, common to all ADCs.
-    It's required on stm32f4.
-    It's optional on stm32h7.
-  - "bus" clock: for registers access, common to all ADCs.
-    It's not present on stm32f4.
-    It's required on stm32h7.
-- clock-names: Must be "adc" and/or "bus" depending on part used.
-- interrupt-controller: Identifies the controller node as interrupt-parent
-- vdda-supply: Phandle to the vdda input analog voltage.
-- vref-supply: Phandle to the vref input analog reference voltage.
-- #interrupt-cells = <1>;
-- #address-cells = <1>;
-- #size-cells = <0>;
-
-Optional properties:
-- A pinctrl state named "default" for each ADC channel may be defined to set
-  inX ADC pins in mode of operation for analog input on external pin.
-- booster-supply: Phandle to the embedded booster regulator that can be used
-  to supply ADC analog input switches on stm32h7 and stm32mp1.
-- vdd-supply: Phandle to the vdd input voltage. It can be used to supply ADC
-  analog input switches on stm32mp1.
-- st,syscfg: Phandle to system configuration controller. It can be used to
-  control the analog circuitry on stm32mp1.
-- st,max-clk-rate-hz: Allow to specify desired max clock rate used by analog
-  circuitry.
-
-Contents of a stm32 adc child node:
------------------------------------
-An ADC block node should contain at least one subnode, representing an
-ADC instance available on the machine.
-
-Required properties:
-- compatible: Should be one of:
-  "st,stm32f4-adc"
-  "st,stm32h7-adc"
-  "st,stm32mp1-adc"
-- reg: Offset of ADC instance in ADC block (e.g. may be 0x0, 0x100, 0x200).
-- clocks: Input clock private to this ADC instance. It's required only on
-  stm32f4, that has per instance clock input for registers access.
-- interrupts: IRQ Line for the ADC (e.g. may be 0 for adc@0, 1 for adc@100 or
-  2 for adc@200).
-- st,adc-channels: List of single-ended channels muxed for this ADC.
-  It can have up to 16 channels on stm32f4 or 20 channels on stm32h7, numbered
-  from 0 to 15 or 19 (resp. for in0..in15 or in0..in19).
-- st,adc-diff-channels: List of differential channels muxed for this ADC.
-  Depending on part used, some channels can be configured as differential
-  instead of single-ended (e.g. stm32h7). List here positive and negative
-  inputs pairs as <vinp vinn>, <vinp vinn>,... vinp and vinn are numbered
-  from 0 to 19 on stm32h7)
-  Note: At least one of "st,adc-channels" or "st,adc-diff-channels" is required.
-  Both properties can be used together. Some channels can be used as
-  single-ended and some other ones as differential (mixed). But channels
-  can't be configured both as single-ended and differential (invalid).
-- #io-channel-cells = <1>: See the IIO bindings section "IIO consumers" in
-  Documentation/devicetree/bindings/iio/iio-bindings.txt
-
-Optional properties:
-- dmas: Phandle to dma channel for this ADC instance.
-  See ../../dma/dma.txt for details.
-- dma-names: Must be "rx" when dmas property is being used.
-- assigned-resolution-bits: Resolution (bits) to use for conversions. Must
-  match device available resolutions:
-  * can be 6, 8, 10 or 12 on stm32f4
-  * can be 8, 10, 12, 14 or 16 on stm32h7
-  Default is maximum resolution if unset.
-- st,min-sample-time-nsecs: Minimum sampling time in nanoseconds.
-  Depending on hardware (board) e.g. high/low analog input source impedance,
-  fine tune of ADC sampling time may be recommended.
-  This can be either one value or an array that matches 'st,adc-channels' list,
-  to set sample time resp. for all channels, or independently for each channel.
-
-Example:
-	adc: adc@40012000 {
-		compatible = "st,stm32f4-adc-core";
-		reg = <0x40012000 0x400>;
-		interrupts = <18>;
-		clocks = <&rcc 0 168>;
-		clock-names = "adc";
-		vref-supply = <&reg_vref>;
-		interrupt-controller;
-		pinctrl-names = "default";
-		pinctrl-0 = <&adc3_in8_pin>;
-
-		#interrupt-cells = <1>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		adc@0 {
-			compatible = "st,stm32f4-adc";
-			#io-channel-cells = <1>;
-			reg = <0x0>;
-			clocks = <&rcc 0 168>;
-			interrupt-parent = <&adc>;
-			interrupts = <0>;
-			st,adc-channels = <8>;
-			dmas = <&dma2 0 0 0x400 0x0>;
-			dma-names = "rx";
-			assigned-resolution-bits = <8>;
-		};
-		...
-		other adc child nodes follow...
-	};
-
-Example to setup:
-- channel 1 as single-ended
-- channels 2 & 3 as differential (with resp. 6 & 7 negative inputs)
-
-	adc: adc@40022000 {
-		compatible = "st,stm32h7-adc-core";
-		...
-		adc1: adc@0 {
-			compatible = "st,stm32h7-adc";
-			...
-			st,adc-channels = <1>;
-			st,adc-diff-channels = <2 6>, <3 7>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
new file mode 100644
index 00000000..2ebc2e6
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
@@ -0,0 +1,448 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/bindings/iio/adc/st,stm32-adc.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: STMicroelectronics STM32 ADC bindings
+
+description: |
+  STM32 ADC is a successive approximation analog-to-digital converter.
+  It has several multiplexed input channels. Conversions can be performed
+  in single, continuous, scan or discontinuous mode. Result of the ADC is
+  stored in a left-aligned or right-aligned 32-bit data register.
+  Conversions can be launched in software or using hardware triggers.
+
+  The analog watchdog feature allows the application to detect if the input
+  voltage goes beyond the user-defined, higher or lower thresholds.
+
+  Each STM32 ADC block can have up to 3 ADC instances.
+
+maintainers:
+  - Fabrice Gasnier <fabrice.gasnier@st.com>
+
+properties:
+  compatible:
+    enum:
+      - st,stm32f4-adc-core
+      - st,stm32h7-adc-core
+      - st,stm32mp1-adc-core
+
+  reg:
+    description: Offset and length of the ADC block register set
+    maxItems: 1
+
+  interrupts:
+    description: |
+      One or more interrupts for ADC block, depending on part used:
+        - stm32f4 and stm32h7 share a common ADC interrupt line.
+        - stm32mp1 has two separate interrupt lines, one for each ADC within
+          ADC block.
+
+  clocks:
+    description: |
+      Core can use up to two clocks, depending on part used:
+        - "adc" clock: for the analog circuitry, common to all ADCs.
+          It's required on stm32f4.
+          It's optional on stm32h7 and stm32mp1.
+        - "bus" clock: for registers access, common to all ADCs.
+          It's not present on stm32f4.
+          It's required on stm32h7 and stm32mp1.
+
+  clock-names: true
+
+  st,max-clk-rate-hz:
+    description: |
+      Allow to specify desired max clock rate used by analog circuitry.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+
+  vdda-supply:
+    description: Phandle to the vdda input analog voltage.
+
+  vref-supply:
+    description: Phandle to the vref input analog reference voltage.
+
+  booster-supply:
+    description: |
+      Phandle to the embedded booster regulator that can be used to supply ADC
+      analog input switches on stm32h7 and stm32mp1.
+
+  vdd-supply:
+    description: |
+      Phandle to the vdd input voltage. It can be used to supply ADC analog
+      input switches on stm32mp1.
+
+  st,syscfg:
+    description: |
+      Phandle to system configuration controller. It can be used to control the
+      analog circuitry on stm32mp1.
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/phandle-array"
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: st,stm32f4-adc-core
+
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+
+        clock-names:
+          items:
+            const: adc
+          maxItems: 1
+
+        interrupts:
+          items:
+            - description: interrupt line common for all ADCs
+
+        booster-supply: false
+
+        vdd-supply: false
+
+        st,syscfg: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: st,stm32h7-adc-core
+
+    then:
+      properties:
+        clocks:
+          minItems: 1
+          maxItems: 2
+
+        clock-names:
+          items:
+            - const: bus
+            - const: adc
+          minItems: 1
+          maxItems: 2
+
+        interrupts:
+          items:
+            - description: interrupt line common for all ADCs
+
+        vdd-supply: false
+
+        st,syscfg: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: st,stm32mp1-adc-core
+
+    then:
+      properties:
+        clocks:
+          minItems: 1
+          maxItems: 2
+
+        clock-names:
+          items:
+            - const: bus
+            - const: adc
+          minItems: 1
+          maxItems: 2
+
+        interrupts:
+          items:
+            - description: interrupt line for ADC1
+            - description: interrupt line for ADC2
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - vdda-supply
+  - vref-supply
+  - interrupt-controller
+  - '#interrupt-cells'
+  - '#address-cells'
+  - '#size-cells'
+
+patternProperties:
+  "^adc@[0-9]+$":
+    type: object
+    description: |
+      An ADC block node should contain at least one subnode, representing an
+      ADC instance available on the machine.
+
+    properties:
+      compatible:
+        enum:
+          - st,stm32f4-adc
+          - st,stm32h7-adc
+          - st,stm32mp1-adc
+
+      reg:
+        description: |
+          Offset of ADC instance in ADC block. Valid values are:
+            - 0x0:   ADC1
+            - 0x100: ADC2
+            - 0x200: ADC3 (stm32f4 only)
+        maxItems: 1
+
+      '#io-channel-cells':
+        const: 1
+
+      interrupts:
+        description: |
+          IRQ Line for the ADC instance. Valid values are:
+            - 0 for adc@0
+            - 1 for adc@100
+            - 2 for adc@200 (stm32f4 only)
+        maxItems: 1
+
+      clocks:
+        description: |
+          Input clock private to this ADC instance. It's required only on
+          stm32f4, that has per instance clock input for registers access.
+        maxItems: 1
+
+      dmas:
+        description: RX DMA Channel
+        maxItems: 1
+
+      dma-names:
+        const: rx
+
+      assigned-resolution-bits:
+        description: |
+          Resolution (bits) to use for conversions:
+            - can be 6, 8, 10 or 12 on stm32f4
+            - can be 8, 10, 12, 14 or 16 on stm32h7 and stm32mp1
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32
+
+      st,adc-channels:
+        description: |
+          List of single-ended channels muxed for this ADC. It can have up to:
+            - 16 channels, numbered from 0 to 15 (for in0..in15) on stm32f4
+            - 20 channels, numbered from 0 to 19 (for in0..in19) on stm32h7 and
+              stm32mp1.
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32-array
+
+      st,adc-diff-channels:
+        description: |
+          List of differential channels muxed for this ADC. Some channels can
+          be configured as differential instead of single-ended on stm32h7 and
+          on stm32mp1. Positive and negative inputs pairs are listed:
+          <vinp vinn>, <vinp vinn>,... vinp and vinn are numbered from 0 to 19.
+
+          Note: At least one of "st,adc-channels" or "st,adc-diff-channels" is
+          required. Both properties can be used together. Some channels can be
+          used as single-ended and some other ones as differential (mixed). But
+          channels can't be configured both as single-ended and differential.
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32-matrix
+          - items:
+              items:
+                - description: |
+                    "vinp" indicates positive input number
+                  minimum: 0
+                  maximum: 19
+                - description: |
+                    "vinn" indicates negative input number
+                  minimum: 0
+                  maximum: 19
+
+      st,min-sample-time-nsecs:
+        description: |
+          Minimum sampling time in nanoseconds. Depending on hardware (board)
+          e.g. high/low analog input source impedance, fine tune of ADC
+          sampling time may be recommended. This can be either one value or an
+          array that matches "st,adc-channels" and/or "st,adc-diff-channels"
+          list, to set sample time resp. for all channels, or independently for
+          each channel.
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32-array
+
+    allOf:
+      - if:
+          properties:
+            compatible:
+              contains:
+                const: st,stm32f4-adc
+
+        then:
+          properties:
+            reg:
+              enum:
+                - 0x0
+                - 0x100
+                - 0x200
+
+            interrupts:
+              minimum: 0
+              maximum: 2
+
+            assigned-resolution-bits:
+              allOf:
+                - enum: [6, 8, 10, 12]
+                - default: 12
+
+            st,adc-channels:
+              allOf:
+                - maxItems: 16
+                  items:
+                    minimum: 0
+                    maximum: 15
+
+            st,adc-diff-channels: false
+
+            st,min-sample-time-nsecs:
+              allOf:
+                - maxItems: 16
+                  items:
+                    minimum: 80
+
+          required:
+            - clocks
+
+      - if:
+          properties:
+            compatible:
+              contains:
+                enum:
+                  - st,stm32h7-adc
+                  - st,stm32mp1-adc
+
+        then:
+          properties:
+            reg:
+              enum:
+                - 0x0
+                - 0x100
+
+            interrupts:
+              minimum: 0
+              maximum: 1
+
+            assigned-resolution-bits:
+              allOf:
+                - enum: [8, 10, 12, 14, 16]
+                - default: 16
+
+            st,adc-channels:
+              allOf:
+                - maxItems: 20
+                  items:
+                    minimum: 0
+                    maximum: 19
+
+            st,min-sample-time-nsecs:
+              allOf:
+                - maxItems: 20
+                  items:
+                    minimum: 40
+
+    additionalProperties: false
+
+    anyOf:
+      - required:
+          - st,adc-channels
+      - required:
+          - st,adc-diff-channels
+
+    required:
+      - compatible
+      - reg
+      - interrupts
+      - '#io-channel-cells'
+
+examples:
+  - |
+    // Example 1: with stm32f429
+      adc123: adc@40012000 {
+        compatible = "st,stm32f4-adc-core";
+        reg = <0x40012000 0x400>;
+        interrupts = <18>;
+        clocks = <&rcc 0 168>;
+        clock-names = "adc";
+        st,max-clk-rate-hz = <36000000>;
+        vdda-supply = <&vdda>;
+        vref-supply = <&vref>;
+        interrupt-controller;
+        #interrupt-cells = <1>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        adc@0 {
+          compatible = "st,stm32f4-adc";
+          #io-channel-cells = <1>;
+          reg = <0x0>;
+          clocks = <&rcc 0 168>;
+          interrupt-parent = <&adc123>;
+          interrupts = <0>;
+          st,adc-channels = <8>;
+          dmas = <&dma2 0 0 0x400 0x0>;
+          dma-names = "rx";
+          assigned-resolution-bits = <8>;
+        };
+        // ...
+        // other adc child nodes follow...
+      };
+
+  - |
+    // Example 2: with stm32mp157c to setup ADC1 with:
+    // - channel 1 as single-ended
+    // - channels 2 & 3 as differential (with resp. 6 & 7 negative inputs)
+      #include <dt-bindings/interrupt-controller/arm-gic.h>
+      #include <dt-bindings/clock/stm32mp1-clks.h>
+      adc12: adc@48003000 {
+        compatible = "st,stm32mp1-adc-core";
+        reg = <0x48003000 0x400>;
+        interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&rcc ADC12>, <&rcc ADC12_K>;
+        clock-names = "bus", "adc";
+        booster-supply = <&booster>;
+        vdd-supply = <&vdd>;
+        vdda-supply = <&vdda>;
+        vref-supply = <&vref>;
+        st,syscfg = <&syscfg>;
+        interrupt-controller;
+        #interrupt-cells = <1>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        adc@0 {
+          compatible = "st,stm32mp1-adc";
+          #io-channel-cells = <1>;
+          reg = <0x0>;
+          interrupt-parent = <&adc12>;
+          interrupts = <0>;
+          st,adc-channels = <1>;
+          st,adc-diff-channels = <2 6>, <3 7>;
+          st,min-sample-time-nsecs = <5000>;
+          dmas = <&dmamux1 9 0x400 0x05>;
+          dma-names = "rx";
+        };
+        // ...
+        // other adc child node follow...
+      };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
