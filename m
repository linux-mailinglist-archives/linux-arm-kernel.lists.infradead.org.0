Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD1C1252B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 21:07:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=z+ZPkfk43CZhrffPdhwZcHjuc0HD2BkepLzkTZTXdDY=; b=lfg
	CicBCNvjYlEoXtFCHQrsCuNmLYTuI+sc2hXDUNjsOqLdERRLjveYqcQvPj9KuWgaWBvnrC2TfLNwn
	DoWg+ZFlgAJXVollbDQMhTjGxN0e8yXtDlCikiVWBpF9VdKhvqQo9SYRMNRLWEJ1M9i0sjc0ejLhb
	83duYwh7gpsgMiFyplNnkRGcOUrWBHFzlol1cKEsCeMwIymX/iIFN8Y5Vvyy/e1frWtw56o/e98wH
	acdNTuBus0B1V828qzvzN2oHXvoY0GHhOByORfrfIzjMNcSJFIdfnbS3GYYHr3VcjUAtr3ZBRg4oT
	pL8M58JYhNv/4s1hjM0OFHdyCH7op2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihfb6-00078e-3b; Wed, 18 Dec 2019 20:07:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihfal-0006zv-D4
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 20:06:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E419D1FB;
 Wed, 18 Dec 2019 12:06:42 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5FE5D3F67D;
 Wed, 18 Dec 2019 12:06:42 -0800 (PST)
Date: Wed, 18 Dec 2019 20:06:40 +0000
From: Mark Brown <broonie@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Applied "dt-bindings: spi: Convert stm32 spi bindings to json-schema"
 to the spi tree
In-Reply-To: <20191217090715.13334-1-benjamin.gaignard@st.com>
Message-Id: <applied-20191217090715.13334-1-benjamin.gaignard@st.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_120643_551809_B583827C 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Amelie Delaunay <amelie.delaunay@st.com>, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, Erwan Leray <erwan.leray@st.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   dt-bindings: spi: Convert stm32 spi bindings to json-schema

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.6

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From ef32b63bf13e531479a3b1ef6eb2daaf4fcf787a Mon Sep 17 00:00:00 2001
From: Benjamin Gaignard <benjamin.gaignard@st.com>
Date: Tue, 17 Dec 2019 10:07:15 +0100
Subject: [PATCH] dt-bindings: spi: Convert stm32 spi bindings to json-schema

Convert the STM32 spi binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
CC: Erwan Leray <erwan.leray@st.com>
CC: Fabrice Gasnier <fabrice.gasnier@st.com>
CC: Amelie Delaunay <amelie.delaunay@st.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Link: https://lore.kernel.org/r/20191217090715.13334-1-benjamin.gaignard@st.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../devicetree/bindings/spi/spi-stm32.txt     |  62 -----------
 .../devicetree/bindings/spi/st,stm32-spi.yaml | 105 ++++++++++++++++++
 2 files changed, 105 insertions(+), 62 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-stm32.txt
 create mode 100644 Documentation/devicetree/bindings/spi/st,stm32-spi.yaml

diff --git a/Documentation/devicetree/bindings/spi/spi-stm32.txt b/Documentation/devicetree/bindings/spi/spi-stm32.txt
deleted file mode 100644
index d82755c63eaf..000000000000
--- a/Documentation/devicetree/bindings/spi/spi-stm32.txt
+++ /dev/null
@@ -1,62 +0,0 @@
-STMicroelectronics STM32 SPI Controller
-
-The STM32 SPI controller is used to communicate with external devices using
-the Serial Peripheral Interface. It supports full-duplex, half-duplex and
-simplex synchronous serial communication with external devices. It supports
-from 4 to 32-bit data size. Although it can be configured as master or slave,
-only master is supported by the driver.
-
-Required properties:
-- compatible: Should be one of:
-  "st,stm32h7-spi"
-  "st,stm32f4-spi"
-- reg: Offset and length of the device's register set.
-- interrupts: Must contain the interrupt id.
-- clocks: Must contain an entry for spiclk (which feeds the internal clock
-	  generator).
-- #address-cells:  Number of cells required to define a chip select address.
-- #size-cells: Should be zero.
-
-Optional properties:
-- resets: Must contain the phandle to the reset controller.
-- A pinctrl state named "default" may be defined to set pins in mode of
-  operation for SPI transfer.
-- dmas: DMA specifiers for tx and rx dma. DMA fifo mode must be used. See the
-  STM32 DMA bindings, Documentation/devicetree/bindings/dma/stm32-dma.txt.
-- dma-names: DMA request names should include "tx" and "rx" if present.
-- cs-gpios: list of GPIO chip selects. See the SPI bus bindings,
-  Documentation/devicetree/bindings/spi/spi-bus.txt
-
-
-Child nodes represent devices on the SPI bus
-  See ../spi/spi-bus.txt
-
-Optional properties:
-- st,spi-midi-ns: Only for STM32H7, (Master Inter-Data Idleness) minimum time
-		  delay in nanoseconds inserted between two consecutive data
-		  frames.
-
-
-Example:
-	spi2: spi@40003800 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		compatible = "st,stm32h7-spi";
-		reg = <0x40003800 0x400>;
-		interrupts = <36>;
-		clocks = <&rcc SPI2_CK>;
-		resets = <&rcc 1166>;
-		dmas = <&dmamux1 0 39 0x400 0x01>,
-		       <&dmamux1 1 40 0x400 0x01>;
-		dma-names = "rx", "tx";
-		pinctrl-0 = <&spi2_pins_b>;
-		pinctrl-names = "default";
-		cs-gpios = <&gpioa 11 0>;
-
-		aardvark@0 {
-			compatible = "totalphase,aardvark";
-			reg = <0>;
-			spi-max-frequency = <4000000>;
-			st,spi-midi-ns = <4000>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml b/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
new file mode 100644
index 000000000000..f0d979664f07
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
@@ -0,0 +1,105 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/st,stm32-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 SPI Controller bindings
+
+description: |
+  The STM32 SPI controller is used to communicate with external devices using
+  the Serial Peripheral Interface. It supports full-duplex, half-duplex and
+  simplex synchronous serial communication with external devices. It supports
+  from 4 to 32-bit data size.
+
+maintainers:
+  - Erwan Leray <erwan.leray@st.com>
+  - Fabrice Gasnier <fabrice.gasnier@st.com>
+
+allOf:
+  - $ref: "spi-controller.yaml#"
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: st,stm32f4-spi
+
+    then:
+      properties:
+        st,spi-midi-ns: false
+
+properties:
+  compatible:
+    enum:
+      - st,stm32f4-spi
+      - st,stm32h7-spi
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  dmas:
+    description: |
+      DMA specifiers for tx and rx dma. DMA fifo mode must be used. See
+      the STM32 DMA bindings Documentation/devicetree/bindings/dma/stm32-dma.txt.
+    items:
+      - description: rx DMA channel
+      - description: tx DMA channel
+
+  dma-names:
+    items:
+      - const: rx
+      - const: tx
+
+patternProperties:
+  "^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-f]+$":
+    type: object
+    # SPI slave nodes must be children of the SPI master node and can
+    # contain the following properties.
+    properties:
+      st,spi-midi-ns:
+        description: |
+          Only for STM32H7, (Master Inter-Data Idleness) minimum time
+          delay in nanoseconds inserted between two consecutive data frames.
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
+    spi@4000b000 {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      compatible = "st,stm32h7-spi";
+      reg = <0x4000b000 0x400>;
+      interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&rcc SPI2_K>;
+      resets = <&rcc SPI2_R>;
+      dmas = <&dmamux1 0 39 0x400 0x05>,
+             <&dmamux1 1 40 0x400 0x05>;
+      dma-names = "rx", "tx";
+      cs-gpios = <&gpioa 11 0>;
+
+      aardvark@0 {
+        compatible = "totalphase,aardvark";
+        reg = <0>;
+        spi-max-frequency = <4000000>;
+        st,spi-midi-ns = <4000>;
+      };
+    };
+
+...
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
