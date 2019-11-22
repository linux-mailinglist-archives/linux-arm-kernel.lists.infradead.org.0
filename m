Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B86DE107917
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 20:55:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=YONKMMLX6zIcm9fuGzVz2OTeIo44/qoae3Fysk6GX2Y=; b=Z1v
	FIi4aWwwX27TM39qZto3VMuCarAPj5e9MK2FBiroAZxpONlaVLByegGRmnYq1cuQ77Rf+6yEH3Bv8
	2PiNne1ye35Y1O8AvDg2TjopECzo/sP9sJCoGNxcaCxlFhYjVAP9g6ORjgypLRLwx3UL/mtHj9SCI
	j4KujJwn7q0aZEjtkgTFMAgJsTyRXXJAsBExrQqxN2qnXenZZcqWWxJYQrJsjZDkdmwtJGegWFp/S
	PJ/32zDLGBCdoFLs8P3H39Gy9tmXceaOrhoxFFa5OOm0J1JCuUcZ5iPmo5a70x9xNNI4UGixVT51V
	Wjos+dZHQg0jD8hRlqDNaboq4SezmPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYF24-0002WF-CK; Fri, 22 Nov 2019 19:55:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYF1u-0002VB-Lc
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 19:55:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9CE56113E;
 Fri, 22 Nov 2019 11:55:43 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A5BF3F6C4;
 Fri, 22 Nov 2019 11:55:42 -0800 (PST)
Date: Fri, 22 Nov 2019 19:55:41 +0000
From: Mark Brown <broonie@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Applied "dt-bindings: spi: Convert stm32 QSPI bindings to
 json-schema" to the spi tree
In-Reply-To: <20191120194444.10540-1-benjamin.gaignard@st.com>
Message-Id: <applied-20191120194444.10540-1-benjamin.gaignard@st.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_115546_791355_8FBFB04A 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   dt-bindings: spi: Convert stm32 QSPI bindings to json-schema

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.5

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

From ffa119f7c42d29be2dd759bb18cc4d1f45804c6b Mon Sep 17 00:00:00 2001
From: Benjamin Gaignard <benjamin.gaignard@st.com>
Date: Wed, 20 Nov 2019 20:44:44 +0100
Subject: [PATCH] dt-bindings: spi: Convert stm32 QSPI bindings to json-schema

Convert the STM32 QSPI binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Link: https://lore.kernel.org/r/20191120194444.10540-1-benjamin.gaignard@st.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../bindings/spi/spi-stm32-qspi.txt           | 47 -----------
 .../bindings/spi/st,stm32-qspi.yaml           | 83 +++++++++++++++++++
 2 files changed, 83 insertions(+), 47 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt
 create mode 100644 Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml

diff --git a/Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt b/Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt
deleted file mode 100644
index bfc038b9478d..000000000000
--- a/Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt
+++ /dev/null
@@ -1,47 +0,0 @@
-* STMicroelectronics Quad Serial Peripheral Interface(QSPI)
-
-Required properties:
-- compatible: should be "st,stm32f469-qspi"
-- reg: the first contains the register location and length.
-       the second contains the memory mapping address and length
-- reg-names: should contain the reg names "qspi" "qspi_mm"
-- interrupts: should contain the interrupt for the device
-- clocks: the phandle of the clock needed by the QSPI controller
-- A pinctrl must be defined to set pins in mode of operation for QSPI transfer
-
-Optional properties:
-- resets: must contain the phandle to the reset controller.
-
-A spi flash (NOR/NAND) must be a child of spi node and could have some
-properties. Also see jedec,spi-nor.txt.
-
-Required properties:
-- reg: chip-Select number (QSPI controller may connect 2 flashes)
-- spi-max-frequency: max frequency of spi bus
-
-Optional properties:
-- spi-rx-bus-width: see ./spi-bus.txt for the description
-- dmas: DMA specifiers for tx and rx dma. See the DMA client binding,
-Documentation/devicetree/bindings/dma/dma.txt.
-- dma-names: DMA request names should include "tx" and "rx" if present.
-
-Example:
-
-qspi: spi@a0001000 {
-	compatible = "st,stm32f469-qspi";
-	reg = <0xa0001000 0x1000>, <0x90000000 0x10000000>;
-	reg-names = "qspi", "qspi_mm";
-	interrupts = <91>;
-	resets = <&rcc STM32F4_AHB3_RESET(QSPI)>;
-	clocks = <&rcc 0 STM32F4_AHB3_CLOCK(QSPI)>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_qspi0>;
-
-	flash@0 {
-		compatible = "jedec,spi-nor";
-		reg = <0>;
-		spi-rx-bus-width = <4>;
-		spi-max-frequency = <108000000>;
-		...
-	};
-};
diff --git a/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml b/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml
new file mode 100644
index 000000000000..3665a5fe6b7f
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/st,stm32-qspi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 Quad Serial Peripheral Interface (QSPI) bindings
+
+maintainers:
+  - Christophe Kerello <christophe.kerello@st.com>
+  - Patrice Chotard <patrice.chotard@st.com>
+
+allOf:
+  - $ref: "spi-controller.yaml#"
+
+properties:
+  compatible:
+    const: st,stm32f469-qspi
+
+  reg:
+    items:
+      - description: registers
+      - description: memory mapping
+
+  reg-names:
+    items:
+     - const: qspi
+     - const: qspi_mm
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
+    items:
+      - description: tx DMA channel
+      - description: rx DMA channel
+
+  dma-names:
+    items:
+      - const: tx
+      - const: rx
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - interrupts
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    #include <dt-bindings/reset/stm32mp1-resets.h>
+    spi@58003000 {
+      compatible = "st,stm32f469-qspi";
+      reg = <0x58003000 0x1000>, <0x70000000 0x10000000>;
+      reg-names = "qspi", "qspi_mm";
+      interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
+      dmas = <&mdma1 22 0x10 0x100002 0x0 0x0>,
+             <&mdma1 22 0x10 0x100008 0x0 0x0>;
+      dma-names = "tx", "rx";
+      clocks = <&rcc QSPI_K>;
+      resets = <&rcc QSPI_R>;
+
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      flash@0 {
+        compatible = "jedec,spi-nor";
+        reg = <0>;
+        spi-rx-bus-width = <4>;
+        spi-max-frequency = <108000000>;
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
