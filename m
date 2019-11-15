Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CDBFDDDA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 13:29:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ezBZ6xgcrbILJ/x0iW3Q7ouh6LW5mP6XIHul4QaqZ7M=; b=faGkDaY1u8n7TW
	H+0qOP28zHs0y0vY+gUrQIo8CEMMFzBKwsRNoi516qJIOmTuhNAjYG4X9UeI2nfQR/Um+/lH//J2Y
	3G19ZRjAoC9ioBeZNGwbReCaajkNuRXEjbl/JLWjYchIpSQsvsikHGE5zbqb7/3OBAP+h4qUhuU/U
	lToj4o5TVWF2Dk8p/BtTe3C59HZm7IIR/sXoVM7gDXWH0BykKENeCFmLzAkFEEk2o3KktD6OONGn0
	gbat1jivGLosyXksYI/WZdcgTev6dY3tOWz6KZBTlqMEQE47MUmG7jMzq5CEVUqB6i88OgwWs3GKn
	LO9QKhfFZpVydm3gT/Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVail-0005p4-6H; Fri, 15 Nov 2019 12:29:03 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVagx-0004FU-BU
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 12:27:15 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAFCC3DP030963; Fri, 15 Nov 2019 13:27:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=+ySUyuIgppZscAXuN5IFd1l92uGKjRfWMz0ArEYbKMg=;
 b=JK0LfWi89WCk8ooVq9J6K8MmK5G8ByfR1TP+Am1vgJJ4EpvI1uLXGfcT1wQqVg2a8JUO
 z7bs+PJ0e8gIpuyda2PwAjci1609IKKHPdzZvbxFd2gTwK2JzzFm/l3T/JHmjM/wXVIJ
 hn3r1fi8zvIVk0XoguiGvByik5m6hBPsKUACGg/P6bWBvcjlZwUb2NT7hc8LTrCG97MN
 E1LZdrl2br0TPxwkoGqfqd0FlNbppbS7WFsfJhZVNyqFA7uT0RM4SL3d8RpnW+DeNVyd
 TAxiDckTIWPdwWw3utVF7gMp0zGQQHLLuF8t0Sqb4Ayqz9FBcmYp/Q4l8Q2yqSJ6Met3 Dw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w7psbm1k0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Nov 2019 13:27:04 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 63C46100034;
 Fri, 15 Nov 2019 13:27:03 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 34D852A96EE;
 Fri, 15 Nov 2019 13:27:03 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 15 Nov 2019 13:27:02
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <fabrice.gasnier@st.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <alexandre.torgue@st.com>, <jic23@kernel.org>, <knaack.h@gmx.de>,
 <lars@metafoo.de>, <pmeerw@pmeerw.net>, <lee.jones@linaro.org>,
 <thierry.reding@gmail.com>, <u.kleine-koenig@pengutronix.de>
Subject: [PATCH] dt-bindings: mfd: Convert stm32 low power timers bindings to
 json-schema
Date: Fri, 15 Nov 2019 13:27:00 +0100
Message-ID: <20191115122700.12688-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-15_03:2019-11-15,2019-11-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_042711_876741_69C216E9 
X-CRM114-Status: GOOD (  17.34  )
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 low power timers binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 .../bindings/counter/stm32-lptimer-cnt.txt         |  29 -----
 .../bindings/iio/timer/stm32-lptimer-trigger.txt   |  23 ----
 .../devicetree/bindings/mfd/st,stm32-lptimer.yaml  | 117 +++++++++++++++++++++
 .../devicetree/bindings/mfd/stm32-lptimer.txt      |  48 ---------
 .../devicetree/bindings/pwm/pwm-stm32-lp.txt       |  30 ------
 5 files changed, 117 insertions(+), 130 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/counter/stm32-lptimer-cnt.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/timer/stm32-lptimer-trigger.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
 delete mode 100644 Documentation/devicetree/bindings/mfd/stm32-lptimer.txt
 delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-stm32-lp.txt

diff --git a/Documentation/devicetree/bindings/counter/stm32-lptimer-cnt.txt b/Documentation/devicetree/bindings/counter/stm32-lptimer-cnt.txt
deleted file mode 100644
index e90bc47f752a..000000000000
--- a/Documentation/devicetree/bindings/counter/stm32-lptimer-cnt.txt
+++ /dev/null
@@ -1,29 +0,0 @@
-STMicroelectronics STM32 Low-Power Timer quadrature encoder and counter
-
-STM32 Low-Power Timer provides several counter modes. It can be used as:
-- quadrature encoder to detect angular position and direction of rotary
-  elements, from IN1 and IN2 input signals.
-- simple counter from IN1 input signal.
-
-Must be a sub-node of an STM32 Low-Power Timer device tree node.
-See ../mfd/stm32-lptimer.txt for details about the parent node.
-
-Required properties:
-- compatible:		Must be "st,stm32-lptimer-counter".
-- pinctrl-names: 	Set to "default". An additional "sleep" state can be
-			defined to set pins in sleep state.
-- pinctrl-n: 		List of phandles pointing to pin configuration nodes,
-			to set IN1/IN2 pins in mode of operation for Low-Power
-			Timer input on external pin.
-
-Example:
-	timer@40002400 {
-		compatible = "st,stm32-lptimer";
-		...
-		counter {
-			compatible = "st,stm32-lptimer-counter";
-			pinctrl-names = "default", "sleep";
-			pinctrl-0 = <&lptim1_in_pins>;
-			pinctrl-1 = <&lptim1_sleep_in_pins>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/iio/timer/stm32-lptimer-trigger.txt b/Documentation/devicetree/bindings/iio/timer/stm32-lptimer-trigger.txt
deleted file mode 100644
index 85e6806b17d7..000000000000
--- a/Documentation/devicetree/bindings/iio/timer/stm32-lptimer-trigger.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-STMicroelectronics STM32 Low-Power Timer Trigger
-
-STM32 Low-Power Timer provides trigger source (LPTIM output) that can be used
-by STM32 internal ADC and/or DAC.
-
-Must be a sub-node of an STM32 Low-Power Timer device tree node.
-See ../mfd/stm32-lptimer.txt for details about the parent node.
-
-Required properties:
-- compatible:		Must be "st,stm32-lptimer-trigger".
-- reg:			Identify trigger hardware block. Must be 0, 1 or 2
-			respectively for lptimer1, lptimer2 or lptimer3
-			trigger output.
-
-Example:
-	timer@40002400 {
-		compatible = "st,stm32-lptimer";
-		...
-		trigger@0 {
-			compatible = "st,stm32-lptimer-trigger";
-			reg = <0>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
new file mode 100644
index 000000000000..8f42c9a4c6cb
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
@@ -0,0 +1,117 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/st,stm32-lptimer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 Low-Power Timers bindings
+
+description: |
+  The STM32 Low-Power Timer (LPTIM) is a 16-bit timer that provides several
+  functions
+   - PWM output (with programmable prescaler, configurable polarity)
+   - Quadrature encoder, counter
+   - Trigger source for STM32 ADC/DAC (LPTIM_OUT)
+
+maintainers:
+  - Fabrice Gasnier <fabrice.gasnier@st.com>
+
+properties:
+  compatible:
+    const: st,stm32-lptimer
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: mux
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  pwm:
+    type: object
+
+    properties:
+      compatible:
+        const: st,stm32-pwm-lp
+
+      "#pwm-cells":
+        const: 3
+
+    required:
+      - "#pwm-cells"
+      - compatible
+
+patternProperties:
+  "^trigger@[0-9]+$":
+    type: object
+
+    properties:
+      compatible:
+        const: st,stm32-lptimer-trigger
+
+      reg:
+        description: Identify trigger hardware block.
+        items:
+         minimum: 0
+         maximum: 3
+
+    required:
+      - compatible
+      - reg
+
+  counter:
+    type: object
+
+    properties:
+      compatible:
+        const: st,stm32-lptimer-counter
+
+    required:
+      - compatible
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    timer@40002400 {
+      compatible = "st,stm32-lptimer";
+      reg = <0x40002400 0x400>;
+      clocks = <&timer_clk>;
+      clock-names = "mux";
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      pwm {
+        compatible = "st,stm32-pwm-lp";
+        #pwm-cells = <3>;
+      };
+
+      trigger@0 {
+        compatible = "st,stm32-lptimer-trigger";
+        reg = <0>;
+      };
+
+      counter {
+        compatible = "st,stm32-lptimer-counter";
+      };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/mfd/stm32-lptimer.txt b/Documentation/devicetree/bindings/mfd/stm32-lptimer.txt
deleted file mode 100644
index fb54e4dad5b3..000000000000
--- a/Documentation/devicetree/bindings/mfd/stm32-lptimer.txt
+++ /dev/null
@@ -1,48 +0,0 @@
-STMicroelectronics STM32 Low-Power Timer
-
-The STM32 Low-Power Timer (LPTIM) is a 16-bit timer that provides several
-functions:
-- PWM output (with programmable prescaler, configurable polarity)
-- Quadrature encoder, counter
-- Trigger source for STM32 ADC/DAC (LPTIM_OUT)
-
-Required properties:
-- compatible:		Must be "st,stm32-lptimer".
-- reg:			Offset and length of the device's register set.
-- clocks:		Phandle to the clock used by the LP Timer module.
-- clock-names:		Must be "mux".
-- #address-cells:	Should be '<1>'.
-- #size-cells:		Should be '<0>'.
-
-Optional subnodes:
-- pwm:			See ../pwm/pwm-stm32-lp.txt
-- counter:		See ../counter/stm32-lptimer-cnt.txt
-- trigger:		See ../iio/timer/stm32-lptimer-trigger.txt
-
-Example:
-
-	timer@40002400 {
-		compatible = "st,stm32-lptimer";
-		reg = <0x40002400 0x400>;
-		clocks = <&timer_clk>;
-		clock-names = "mux";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		pwm {
-			compatible = "st,stm32-pwm-lp";
-			pinctrl-names = "default";
-			pinctrl-0 = <&lppwm1_pins>;
-		};
-
-		trigger@0 {
-			compatible = "st,stm32-lptimer-trigger";
-			reg = <0>;
-		};
-
-		counter {
-			compatible = "st,stm32-lptimer-counter";
-			pinctrl-names = "default";
-			pinctrl-0 = <&lptim1_in_pins>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/pwm/pwm-stm32-lp.txt b/Documentation/devicetree/bindings/pwm/pwm-stm32-lp.txt
deleted file mode 100644
index 6521bc44a74e..000000000000
--- a/Documentation/devicetree/bindings/pwm/pwm-stm32-lp.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-STMicroelectronics STM32 Low-Power Timer PWM
-
-STM32 Low-Power Timer provides single channel PWM.
-
-Must be a sub-node of an STM32 Low-Power Timer device tree node.
-See ../mfd/stm32-lptimer.txt for details about the parent node.
-
-Required parameters:
-- compatible:		Must be "st,stm32-pwm-lp".
-- #pwm-cells:		Should be set to 3. This PWM chip uses the default 3 cells
-			bindings defined in pwm.txt.
-
-Optional properties:
-- pinctrl-names: 	Set to "default". An additional "sleep" state can be
-			defined to set pins in sleep state when in low power.
-- pinctrl-n: 		Phandle(s) pointing to pin configuration node for PWM,
-			respectively for "default" and "sleep" states.
-
-Example:
-	timer@40002400 {
-		compatible = "st,stm32-lptimer";
-		...
-		pwm {
-			compatible = "st,stm32-pwm-lp";
-			#pwm-cells = <3>;
-			pinctrl-names = "default", "sleep";
-			pinctrl-0 = <&lppwm1_pins>;
-			pinctrl-1 = <&lppwm1_sleep_pins>;
-		};
-	};
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
