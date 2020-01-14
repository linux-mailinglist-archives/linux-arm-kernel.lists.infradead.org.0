Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B2513A969
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 13:34:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJ2nQ9F94qEiEc+n7Z3kQuw2k/2VrUvmDykK3eWIlb0=; b=dUxHJlHFynlJOK
	QGYBq1MmWAL7zaU3nu/jWH3n3zX9QzS8zufbhd3pBrrAx5+3RpeEUQiUb9Sl9OvsxYZAqIY+/BWx0
	iS6CqJvo9VpUXI515ifirLSJ8NN/Y+hx8Gxz2YguDbvzrqntwc1E8xn8CKPymUoksVbWPGDpQCBY1
	rij6oad06F33a9yBECp1T4CjJPjHYdcbI0IPA/MOyns5RBzhU6VHXf96WwUDgdg8PJzu5a1/HmCY7
	A6kvZ+tI5skHuMyo0h5tFtjoQ8ROGjHa3d/n3sW4Qg68Zu0GwyVCNn7fTVeDN5PU7kJvV5yn896Ly
	guj0txpQZjzKy3y0XIJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irLP3-0008Rv-5G; Tue, 14 Jan 2020 12:34:37 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irLOG-0007xc-Cu
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 12:33:57 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00ECWbZi023934; Tue, 14 Jan 2020 13:33:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=4Zw+r/mcuIQdGav3Gfbbdj8AtLqPaIWXCkURYNpxfY4=;
 b=0Lncu1efiEmSixKOeiOFmG4NByddmwwfZngVxnuNYqWjU7aPH7j0P1iCQpdDpYsbqdNj
 je/J2b1vm99dJ5ug1ZBQUETdhFe8abMWibYKr/zXL5DPdgRpBky41NGh/p8ZzBDIRMD9
 N2Ds3/0YRoPrAYYrWS/A6ebAYp4CgjitvWEpqnUcNRg44oJz+9nxRFJH28blG8dNLjaw
 mtnXzT4KQIBYU1GfVM9ngo3dFHFQhs4mCH9RSlpJEAoz/EE8Y7/jsdEdi9S3xEWouGWp
 NQCQSvWgsV8XTCVqA/1AE4ySCYbmwM+2buLLr4v52k6EYzlclFL/rg4z8KMQut8Ttj3C aQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf7jpddg4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Jan 2020 13:33:39 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9A8B010003B;
 Tue, 14 Jan 2020 13:33:34 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8D7292AD9EB;
 Tue, 14 Jan 2020 13:33:34 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 14 Jan 2020 13:33:34
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 2/2] dt-bindings: serial: Convert STM32 UART to json-schema
Date: Tue, 14 Jan 2020 13:33:29 +0100
Message-ID: <20200114123329.3792-3-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200114123329.3792-1-benjamin.gaignard@st.com>
References: <20200114123329.3792-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-14_03:2020-01-13,
 2020-01-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_043348_913826_F18AA8A5 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, erwan.leray@st.com, linux-serial@vger.kernel.org,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert STM32 UART bindings to json-schema.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 .../devicetree/bindings/serial/st,stm32-uart.yaml  | 80 ++++++++++++++++++++++
 .../devicetree/bindings/serial/st,stm32-usart.txt  | 57 ---------------
 2 files changed, 80 insertions(+), 57 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/serial/st,stm32-uart.yaml
 delete mode 100644 Documentation/devicetree/bindings/serial/st,stm32-usart.txt

diff --git a/Documentation/devicetree/bindings/serial/st,stm32-uart.yaml b/Documentation/devicetree/bindings/serial/st,stm32-uart.yaml
new file mode 100644
index 000000000000..238c44192d31
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/st,stm32-uart.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial/st,stm32-uart.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+maintainers:
+  - Erwan Le Ray <erwan.leray@st.com>
+
+title: STMicroelectronics STM32 USART bindings
+
+allOf:
+  - $ref: rs485.yaml
+
+properties:
+  compatible:
+    enum:
+      - st,stm32-uart
+      - st,stm32f7-uart
+      - st,stm32h7-uart
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  label:
+    description: label associated with this uart
+
+  st,hw-flow-ctrl:
+    description: enable hardware flow control
+    $ref: /schemas/types.yaml#/definitions/flag
+
+  dmas:
+    minItems: 1
+    maxItems: 2
+
+  dma-names:
+    items:
+      enum: [ rx, tx ]
+    minItems: 1
+    maxItems: 2
+
+  wakeup-source: true
+
+  rs485-rts-delay: true
+  rs485-rts-active-low: true
+  linux,rs485-enabled-at-boot-time: true
+  rs485-rx-during-tx: true
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    usart1: serial@40011000 {
+      compatible = "st,stm32-uart";
+      reg = <0x40011000 0x400>;
+      interrupts = <37>;
+      clocks = <&rcc 0 164>;
+      dmas = <&dma2 2 4 0x414 0x0>,
+             <&dma2 7 4 0x414 0x0>;
+      dma-names = "rx", "tx";
+      rs485-rts-active-low;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/serial/st,stm32-usart.txt b/Documentation/devicetree/bindings/serial/st,stm32-usart.txt
deleted file mode 100644
index 8620f7fcbd50..000000000000
--- a/Documentation/devicetree/bindings/serial/st,stm32-usart.txt
+++ /dev/null
@@ -1,57 +0,0 @@
-* STMicroelectronics STM32 USART
-
-Required properties:
-- compatible: can be either:
-  - "st,stm32-uart",
-  - "st,stm32f7-uart",
-  - "st,stm32h7-uart".
-  depending is compatible with stm32(f4), stm32f7 or stm32h7.
-- reg: The address and length of the peripheral registers space
-- interrupts:
-  - The interrupt line for the USART instance,
-  - An optional wake-up interrupt.
-- clocks: The input clock of the USART instance
-
-Optional properties:
-- resets: Must contain the phandle to the reset controller.
-- pinctrl: The reference on the pins configuration
-- st,hw-flow-ctrl: bool flag to enable hardware flow control.
-- rs485-rts-delay, rs485-rx-during-tx, rs485-rts-active-low,
-  linux,rs485-enabled-at-boot-time: see rs485.txt.
-- dmas: phandle(s) to DMA controller node(s). Refer to stm32-dma.txt
-- dma-names: "rx" and/or "tx"
-- wakeup-source: bool flag to indicate this device has wakeup capabilities
-- interrupt-names, if optional wake-up interrupt is used, should be:
-  - "event": the name for the interrupt line of the USART instance
-  - "wakeup" the name for the optional wake-up interrupt
-
-
-Examples:
-usart4: serial@40004c00 {
-	compatible = "st,stm32-uart";
-	reg = <0x40004c00 0x400>;
-	interrupts = <52>;
-	clocks = <&clk_pclk1>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usart4>;
-};
-
-usart2: serial@40004400 {
-	compatible = "st,stm32-uart";
-	reg = <0x40004400 0x400>;
-	interrupts = <38>;
-	clocks = <&clk_pclk1>;
-	st,hw-flow-ctrl;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usart2 &pinctrl_usart2_rtscts>;
-};
-
-usart1: serial@40011000 {
-	compatible = "st,stm32-uart";
-	reg = <0x40011000 0x400>;
-	interrupts = <37>;
-	clocks = <&rcc 0 164>;
-	dmas = <&dma2 2 4 0x414 0x0>,
-	       <&dma2 7 4 0x414 0x0>;
-	dma-names = "rx", "tx";
-};
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
