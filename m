Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 742F2189E4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 15:51:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IMQCwbKHZXHa6IzIeSrHjMf1CU7GwKSwGdc/YBeigbY=; b=bScmSUjahSxMuQ
	/ITIGDaPVoCf07r+7cx/ej/hTqHKY1WjiZGPaoI8tGHbIQBCI4LjaqQDPRpWQR7bHcXSxSoc5yFQi
	LbqoemnAtOljVNrTeesXS6raP7QtVjpZcIW3fcN5Az3mVR3zpqSmpuM+RIINy2oYM2Qp7pgAisUTP
	nuv+EC5nLs+vQjlOP8OQ8UEZY/vD+SI3rY2GWJPprdMMsSfv0Ad5Ru+/W5MVcX/3xvaJMY533kZoA
	3GTUcMqWgrSGfPSKEPzWtBV+i5/0a6t4Qx9AE5OCUdUYorTOqlb1eIhzjHpDOW5K7r1qdMp5ak8xN
	xiczIS1uck/VbAWwijig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEa2j-0003nP-O1; Wed, 18 Mar 2020 14:51:37 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEa2b-0003me-9v
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 14:51:31 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02IEcWpY031412; Wed, 18 Mar 2020 15:51:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=AtAQ6Omp1kqvN3R2P3Ojq/dUkGTPHDTP71rAjUnsU+g=;
 b=yflygsXu04iS8mLX+60UttjdYpPiJKyzWBEm3v0ejRG2+CyZykKK438rf0MPYBFVUn5S
 xVwFRl3IiFHH4EqdKie/Zx/GEbimNiSf4jv4jZBgjWY6elmjJU3GMq4FQTlNHSKF5AyD
 cWgZZdUtdcpUvRKPKe4v1MW3k2qLxPkKVbqediBQlB9P7yWn9b0dePUyb4mkavF69xjm
 VxMpgDs9PZ7yEzpO2vqm7ZWdeKVcDvdKbcnCq3xD5VysVXcSSE3Yfc0qGtrNNx9YqA+6
 e453O+qAQjlyAFfCBDGs11drAWv30u6NoRI5cbIYkETCBvlZdRfWgnigfIn0Ny0VTVqT Hg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yu95um43b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 18 Mar 2020 15:51:21 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3C62C10002A;
 Wed, 18 Mar 2020 15:51:20 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1FDE42AE6B7;
 Wed, 18 Mar 2020 15:51:20 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 18 Mar 2020 15:51:19 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <robh+dt@kernel.org>, <jic23@kernel.org>
Subject: [PATCH] dt-bindings: iio: dac: stm32-dac: convert bindings to
 json-schema
Date: Wed, 18 Mar 2020 15:50:37 +0100
Message-ID: <1584543037-32095-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-18_06:2020-03-18,
 2020-03-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_075129_631320_3193B27F 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, mcoquelin.stm32@gmail.com, lars@metafoo.de,
 olivier.moysan@st.com, alexandre.torgue@st.com, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 DAC binding to DT schema format using json-schema

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 .../devicetree/bindings/iio/dac/st,stm32-dac.txt   |  63 ------------
 .../devicetree/bindings/iio/dac/st,stm32-dac.yaml  | 110 +++++++++++++++++++++
 2 files changed, 110 insertions(+), 63 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/st,stm32-dac.txt
 create mode 100644 Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml

diff --git a/Documentation/devicetree/bindings/iio/dac/st,stm32-dac.txt b/Documentation/devicetree/bindings/iio/dac/st,stm32-dac.txt
deleted file mode 100644
index bf2925c..00000000
--- a/Documentation/devicetree/bindings/iio/dac/st,stm32-dac.txt
+++ /dev/null
@@ -1,63 +0,0 @@
-STMicroelectronics STM32 DAC
-
-The STM32 DAC is a 12-bit voltage output digital-to-analog converter. The DAC
-may be configured in 8 or 12-bit mode. It has two output channels, each with
-its own converter.
-It has built-in noise and triangle waveform generator and supports external
-triggers for conversions. The DAC's output buffer allows a high drive output
-current.
-
-Contents of a stm32 dac root node:
------------------------------------
-Required properties:
-- compatible: Should be one of:
-  "st,stm32f4-dac-core"
-  "st,stm32h7-dac-core"
-- reg: Offset and length of the device's register set.
-- clocks: Must contain an entry for pclk (which feeds the peripheral bus
-  interface)
-- clock-names: Must be "pclk".
-- vref-supply: Phandle to the vref+ input analog reference supply.
-- #address-cells = <1>;
-- #size-cells = <0>;
-
-Optional properties:
-- resets: Must contain the phandle to the reset controller.
-- A pinctrl state named "default" for each DAC channel may be defined to set
-  DAC_OUTx pin in mode of operation for analog output on external pin.
-
-Contents of a stm32 dac child node:
------------------------------------
-DAC core node should contain at least one subnode, representing a
-DAC instance/channel available on the machine.
-
-Required properties:
-- compatible: Must be "st,stm32-dac".
-- reg: Must be either 1 or 2, to define (single) channel in use
-- #io-channel-cells = <1>: See the IIO bindings section "IIO consumers" in
-  Documentation/devicetree/bindings/iio/iio-bindings.txt
-
-Example:
-	dac: dac@40007400 {
-		compatible = "st,stm32h7-dac-core";
-		reg = <0x40007400 0x400>;
-		clocks = <&clk>;
-		clock-names = "pclk";
-		vref-supply = <&reg_vref>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&dac_out1 &dac_out2>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		dac1: dac@1 {
-			compatible = "st,stm32-dac";
-			#io-channels-cells = <1>;
-			reg = <1>;
-		};
-
-		dac2: dac@2 {
-			compatible = "st,stm32-dac";
-			#io-channels-cells = <1>;
-			reg = <2>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml b/Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml
new file mode 100644
index 00000000..2b4a955
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml
@@ -0,0 +1,110 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/bindings/iio/dac/st,stm32-dac.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: STMicroelectronics STM32 DAC bindings
+
+description: |
+  The STM32 DAC is a 12-bit voltage output digital-to-analog converter. The DAC
+  may be configured in 8 or 12-bit mode. It has two output channels, each with
+  its own converter.
+  It has built-in noise and triangle waveform generator and supports external
+  triggers for conversions. The DAC's output buffer allows a high drive output
+  current.
+
+maintainers:
+  - Fabrice Gasnier <fabrice.gasnier@st.com>
+
+properties:
+  compatible:
+    enum:
+      - st,stm32f4-dac-core
+      - st,stm32h7-dac-core
+
+  reg:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: pclk
+
+  vref-supply:
+    description: Phandle to the vref input analog reference voltage.
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - vref-supply
+  - '#address-cells'
+  - '#size-cells'
+
+patternProperties:
+  "^dac@[1-2]+$":
+    type: object
+    description:
+      A DAC block node should contain at least one subnode, representing an
+      DAC instance/channel available on the machine.
+
+    properties:
+      compatible:
+        const: st,stm32-dac
+
+      reg:
+        description: Must be either 1 or 2, to define (single) channel in use
+        enum: [1, 2]
+
+      '#io-channel-cells':
+        const: 1
+
+    additionalProperties: false
+
+    required:
+      - compatible
+      - reg
+      - '#io-channel-cells'
+
+examples:
+  - |
+    // Example on stm32mp157c
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    dac: dac@40017000 {
+      compatible = "st,stm32h7-dac-core";
+      reg = <0x40017000 0x400>;
+      clocks = <&rcc DAC12>;
+      clock-names = "pclk";
+      vref-supply = <&vref>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      dac@1 {
+        compatible = "st,stm32-dac";
+        #io-channel-cells = <1>;
+        reg = <1>;
+      };
+
+      dac@2 {
+        compatible = "st,stm32-dac";
+        #io-channel-cells = <1>;
+        reg = <2>;
+      };
+    };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
