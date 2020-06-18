Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D081FF0DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 13:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ovi55lFk7uL/MG3AYdaeztU6zgiWrSkSRYES4NGg2lM=; b=EHQr36PjEOvzwe
	aPeaD6Ob16d9b24RYH9pqX13uexV72jQfExgRfmD27P3m9bbrLaZa+l9nN1pCtRuCo9D7CQu2hfIc
	tL+2cImteV2784AHvNpcToZogBCmCsih40em1fiVyLOqUqYFu5M7y+lKJqVtHe2spynTpJ5RLGQ8/
	4bXhK7OEcEBBcIde/5VUZJKBswMJFXZo4ObL9sK51Gzm6jfxYgTkIE2PlgAT+pFebTdMXdl88TCnE
	l4/piEzG7qDzbVk7ezVURTJ/ihdZWmSRE00vVXmHi8elXUJaLXjqq+HnJoD5PjQTezQ7dxv0BVhqR
	qpjfAxtvdkk0CS+2XJsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlsz1-0000L9-Ah; Thu, 18 Jun 2020 11:45:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlsxm-0007Jp-S8; Thu, 18 Jun 2020 11:44:12 +0000
X-UUID: ba79e400b0c04248b35e8abc1b426831-20200618
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=YOyQ+xNoYb3LVTxsjHvGeSZpfP5WbSuesuRvHY3x/ss=; 
 b=KSPLphkk9G/Z+DRNrWvRtW13llGR9kE1HpuyPWjN+im9c3Mk6jVwmgQQxoIF0tCfxytUL+6k2rVtz4NgVcMwGRjwkJ5KpK+y1x4ripBR4/3MUgTSL3lxjbwAjiulFsp4xoOxBpomO3L9Dk+ax+elvR83PujdMyijLArccHwEjSc=;
X-UUID: ba79e400b0c04248b35e8abc1b426831-20200618
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <hanks.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 414446399; Thu, 18 Jun 2020 03:43:55 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 04:34:03 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 19:34:01 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 18 Jun 2020 19:34:01 +0800
From: Hanks Chen <hanks.chen@mediatek.com>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, "Michael
 Turquette" <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, "Sean
 Wang" <sean.wang@kernel.org>
Subject: [PATCH v6 1/7] dt-bindings: pinctrl: add bindings for MediaTek MT6779
 SoC
Date: Thu, 18 Jun 2020 19:33:32 +0800
Message-ID: <1592480018-3340-2-git-send-email-hanks.chen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1592480018-3340-1-git-send-email-hanks.chen@mediatek.com>
References: <1592480018-3340-1-git-send-email-hanks.chen@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 591640295288D394FECD5647B9F01693616AD9C0716C35C57EF74C52D2E77B222000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_044410_939785_1D33A2A9 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Andy Teng <andy.teng@mediatek.com>,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org,
 mtk01761 <wendell.lin@mediatek.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andy Teng <andy.teng@mediatek.com>

Add devicetree bindings for MediaTek MT6779 pinctrl driver.

Signed-off-by: Andy Teng <andy.teng@mediatek.com>
---
 .../bindings/pinctrl/mediatek,mt6779-pinctrl.yaml  |  210 ++++++++++++++++++++
 1 file changed, 210 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
new file mode 100644
index 0000000..85819a4
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
@@ -0,0 +1,210 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/mediatek,mt6779-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek MT6779 Pin Controller Device Tree Bindings
+
+maintainers:
+  - Andy Teng <andy.teng@mediatek.com>
+
+description: |+
+  The pin controller node should be the child of a syscon node with the
+  required property:
+  - compatible: "syscon"
+
+properties:
+  compatible:
+    const: mediatek,mt6779-pinctrl
+
+  reg:
+    minItems: 9
+    maxItems: 9
+    description: |
+      physical address base for gpio-related control registers.
+
+  reg-names:
+    description: |
+      GPIO base register names. The names are "gpio", "iocfg_rm",
+      "iocfg_br", "iocfg_lm", "iocfg_lb", "iocfg_rt", "iocfg_lt",
+      "iocfg_tl", "eint";
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+    description: |
+      Number of cells in GPIO specifier. Since the generic GPIO
+      binding is used, the amount of cells must be specified as 2. See the below
+      mentioned gpio binding representation for description of particular cells.
+
+  gpio-ranges:
+    minItems: 1
+    maxItems: 5
+    description: |
+      GPIO valid number range.
+
+  interrupt-controller: true
+
+  interrupts:
+    maxItems: 1
+    description: |
+      Specifies the summary IRQ.
+
+  "#interrupt-cells":
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - gpio-controller
+  - "#gpio-cells"
+  - gpio-ranges
+  - interrupt-controller
+  - interrupts
+  - "#interrupt-cells"
+
+patternProperties:
+  '-[0-9]*$':
+    type: object
+    patternProperties:
+      '-pins*$':
+        type: object
+        description: |
+          A pinctrl node should contain at least one subnodes representing the
+          pinctrl groups available on the machine. Each subnode will list the
+          pins it needs, and how they should be configured, with regard to muxer
+          configuration, pullups, drive strength, input enable/disable and input schmitt.
+
+        properties:
+          pinmux:
+            description:
+              integer array, represents gpio pin number and mux setting.
+              Supported pin number and mux varies for different SoCs, and are defined
+              as macros in boot/dts/<soc>-pinfunc.h directly.
+
+          bias-disable:
+            type: boolean
+
+          bias-pull-up:
+            type: boolean
+
+          bias-pull-down:
+            type: boolean
+
+          input-enable:
+            type: boolean
+
+          input-disable:
+            type: boolean
+
+          output-low:
+            type: boolean
+
+          output-high:
+            type: boolean
+
+          input-schmitt-enable:
+            type: boolean
+
+          input-schmitt-disable:
+            type: boolean
+
+          mediatek,pull-up-adv:
+            description: |
+              Pull up setings for 2 pull resistors, R0 and R1. User can
+              configure those special pins. Valid arguments are described as below:
+              0: (R1, R0) = (0, 0) which means R1 disabled and R0 disable.
+              1: (R1, R0) = (0, 1) which means R1 disabled and R0 enabled.
+              2: (R1, R0) = (1, 0) which means R1 enabled and R0 disabled.
+              3: (R1, R0) = (1, 1) which means R1 enabled and R0 enabled.
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+              - enum: [0, 1, 2, 3]
+
+          mediatek,pull-down-adv:
+            description: |
+              Pull down settings for 2 pull resistors, R0 and R1. User can
+              configure those special pins. Valid arguments are described as below:
+              0: (R1, R0) = (0, 0) which means R1 disabled and R0 disable.
+              1: (R1, R0) = (0, 1) which means R1 disabled and R0 enabled.
+              2: (R1, R0) = (1, 0) which means R1 enabled and R0 disabled.
+              3: (R1, R0) = (1, 1) which means R1 enabled and R0 enabled.
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+              - enum: [0, 1, 2, 3]
+
+          drive-strength:
+            description: |
+              Selects the drive strength for the specified pins in mA.
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+              - enum: [2, 4, 6, 8, 10, 12, 14, 16]
+
+        required:
+          - pinmux
+
+        additionalProperties: false
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/pinctrl/mt6779-pinfunc.h>
+
+    pio: pinctrl@10005000 {
+        compatible = "mediatek,mt6779-pinctrl";
+        reg = <0 0x10005000 0 0x1000>,
+            <0 0x11c20000 0 0x1000>,
+            <0 0x11d10000 0 0x1000>,
+            <0 0x11e20000 0 0x1000>,
+            <0 0x11e70000 0 0x1000>,
+            <0 0x11ea0000 0 0x1000>,
+            <0 0x11f20000 0 0x1000>,
+            <0 0x11f30000 0 0x1000>,
+            <0 0x1000b000 0 0x1000>;
+        reg-names = "gpio", "iocfg_rm",
+          "iocfg_br", "iocfg_lm",
+          "iocfg_lb", "iocfg_rt",
+          "iocfg_lt", "iocfg_tl",
+          "eint";
+        gpio-controller;
+        #gpio-cells = <2>;
+        gpio-ranges = <&pio 0 0 210>;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+        interrupts = <GIC_SPI 204 IRQ_TYPE_LEVEL_HIGH>;
+
+        mmc0_pins_default: mmc0-0 {
+            cmd-dat-pins {
+                pinmux = <PINMUX_GPIO168__FUNC_MSDC0_DAT0>,
+                    <PINMUX_GPIO172__FUNC_MSDC0_DAT1>,
+                    <PINMUX_GPIO169__FUNC_MSDC0_DAT2>,
+                    <PINMUX_GPIO177__FUNC_MSDC0_DAT3>,
+                    <PINMUX_GPIO170__FUNC_MSDC0_DAT4>,
+                    <PINMUX_GPIO173__FUNC_MSDC0_DAT5>,
+                    <PINMUX_GPIO171__FUNC_MSDC0_DAT6>,
+                    <PINMUX_GPIO174__FUNC_MSDC0_DAT7>,
+                    <PINMUX_GPIO167__FUNC_MSDC0_CMD>;
+                input-enable;
+                mediatek,pull-up-adv = <1>;
+            };
+            clk-pins {
+                pinmux = <PINMUX_GPIO176__FUNC_MSDC0_CLK>;
+                mediatek,pull-down-adv = <2>;
+            };
+            rst-pins {
+                pinmux = <PINMUX_GPIO178__FUNC_MSDC0_RSTB>;
+                mediatek,pull-up-adv = <0>;
+            };
+        };
+    };
+
+    mmc0 {
+       pinctrl-0 = <&mmc0_pins_default>;
+       pinctrl-names = "default";
+    };
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
