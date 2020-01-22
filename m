Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E271451DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 10:57:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJ2nQ9F94qEiEc+n7Z3kQuw2k/2VrUvmDykK3eWIlb0=; b=Zy1Of4UN4cBNx9
	Lv4S9qAgiROuJs4SwadLs4zmm86vlVm3bcxu3wrbTFoofcdQI2gVTbMEyl91SUJ4ZKebz9bvb1cVl
	+nkSaYpJP1oXS8olCL91c/ARimRC4uMnYGyfA5HbZPFnATzpn13m13JxAtTIrPhYxq/5KPCzTTOt/
	wfKgL5p+tH8reFwFerDTSDoHsh0ZHIcFPkDt4MAY1TgLqH4X2H2/JcwpYENbfQ006qRj0XAY4TBtR
	SYCryH/3QyO1DKrEW/PpONZGol+DokOe75Hct612zqkEdBY8x9XWWwfOu39Sj9GIDhltyS3W02+vL
	RukEiB2PfT7UMSdnXWXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuCky-0002WD-7x; Wed, 22 Jan 2020 09:57:04 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuCk7-0001qi-9W
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 09:56:13 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00M9sCjs016045; Wed, 22 Jan 2020 10:56:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=4Zw+r/mcuIQdGav3Gfbbdj8AtLqPaIWXCkURYNpxfY4=;
 b=jovkYIDF5w42n6yi9h5hqtYgncgDMBFtXMDqDAKoZWG5gk/amI0xeFx7zKKaAPavLGPY
 gMivTPoH9IuaAbh3JiNmEZqJssrE7n5YFraGuy0ba9BerZGNMtHUZUAm+9MBUQG6rUrc
 CDo+9y6I4cdzx6ANYGq17BBoPsDIokpN261FYFrEa9XEJE3aBM39ULnvYZP6fMdaUH6U
 U7d0zD8bFb//IRQ4P8aeIR9F7uw+IfrQeTCqdJbDDWibfoBld5i6OWBtR7PK8FMZM49j
 MMg4y/F6i5SJGsyowSHfr9vVd968H25TOrPPQtYTbPPPcBanpAnFpKc2lpfGCZyw3u2t Nw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkr1e3rmt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2020 10:56:02 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D2B6A100034;
 Wed, 22 Jan 2020 10:56:01 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C61982AD14D;
 Wed, 22 Jan 2020 10:56:01 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 22 Jan 2020 10:56:01
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH v2 2/2] dt-bindings: serial: Convert STM32 UART to json-schema
Date: Wed, 22 Jan 2020 10:55:58 +0100
Message-ID: <20200122095558.22553-3-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200122095558.22553-1-benjamin.gaignard@st.com>
References: <20200122095558.22553-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-17_05:2020-01-16,
 2020-01-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_015611_630844_3A641314 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
