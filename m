Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF041CBC68
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 04:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+eF9ue6tcHCUwcHMoakn/otnEiMLAmQFAa9g1CxTVL4=; b=l2FhFMgb9pkfQt
	lnNcG/33fBumSljNxoUroEx44ZUH8s5BgLZ9kC2hJndmEIiqNXZ96hkvme1bOJf8ea8uyyUynDmKj
	4XHX7K8MKSph3CfvxjAAk3ReoNLkNCjG5USDlLp/dSKl9fE9oRTaYWC1R1FxkSblWk/qT70QvkMVR
	V8urgW3GPK5P+VyczqJDPdQIeIBIR79UtNmeiNDqCeKHlWvNDla049MpnhAn345fRXrroxdg5kIIn
	Hq9vey/je1TOWMnB6c2YDLtR/+OxM2yDqMhejpq8ZfW2XuQsWmFgxJ0fOvbrSjLRKRyNYbVN6v+HZ
	w6xITw2JSQqB0lQwa7Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXF6B-00010v-Bk; Sat, 09 May 2020 02:20:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXF5w-0008TP-10; Sat, 09 May 2020 02:20:06 +0000
X-UUID: e2d48d213ec649c58c6592b17d48c408-20200508
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=NQ4Pb0x5/UXRB48kOzeFnv0h5Ut4Y2l+aTUUIM6e5EQ=; 
 b=ZCfjx8+mM0iIShk0+Eq6ME1K0DYOucEiU2cgPgAmF5/ILpe46bqkNj50z9sc+xV46wZXaIBmRkG2n/eXIH+p99K0VxxVVsmdqjlYJ2zp+qPsUqk87siXiSHjK+fF4u9mU2x4yne9tpVl/VKkEb1/O8Wq/Xei/UAcxN13XysEIJM=;
X-UUID: e2d48d213ec649c58c6592b17d48c408-20200508
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1936767380; Fri, 08 May 2020 18:19:56 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 19:09:56 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 10:09:53 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 9 May 2020 10:09:49 +0800
From: Fengping Yu <fengping.yu@mediatek.com>
To: Marco Felsch <m.felsch@pengutronix.de>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Yingjoe Chen <yingjoe.chen@mediatek.com>
Subject: [PATCH v6 1/3] dt-bindings: Change keypad documentation schema
Date: Sat, 9 May 2020 10:04:59 +0800
Message-ID: <20200509020458.8359-2-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200509020458.8359-1-fengping.yu@mediatek.com>
References: <20200509020458.8359-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D2C1052DCD8F07E6C954DA3FD14A1A5834520A776BC93C6B5DD1C47EBB8092012000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_192004_093544_18AB5913 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "fengping.yu" <fengping.yu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "fengping.yu" <fengping.yu@mediatek.com>

Change Mediatek matrix keypad dt-bindings doc to yaml schema.

Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
---
 .../devicetree/bindings/input/mtk-kpd.txt     | 61 ------------
 .../devicetree/bindings/input/mtk-kpd.yaml    | 93 +++++++++++++++++++
 2 files changed, 93 insertions(+), 61 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.txt
 create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.yaml

diff --git a/Documentation/devicetree/bindings/input/mtk-kpd.txt b/Documentation/devicetree/bindings/input/mtk-kpd.txt
deleted file mode 100644
index 8b154a5e2f7d..000000000000
--- a/Documentation/devicetree/bindings/input/mtk-kpd.txt
+++ /dev/null
@@ -1,61 +0,0 @@
-* Mediatek's Keypad Controller device tree binding
-
-Mediatek's Keypad controller is used to interface a SoC with a matrix-type
-keypad device. The keypad controller supports multiple row and column lines.
-A key can be placed at each intersection of a unique row and a unique column.
-The keypad controller can sense a key-press and key-release and report the
-event using a interrupt to the cpu.
-
-Required properties:
-- compatible should contain:
-	* "mediatek,kp" for common keypad
-	* "mediatek,mt6779-keypad" for specific keypad chip
-
-- reg: The base address of the Keypad register bank.
-
-- interrupts: A single interrupt specifier.
-
-- mediatek,debounce-us: Debounce interval in microseconds, maximum value
-  is 256000 microseconds.
-
-- keypad,num-rows: Number of row lines connected to the keypad controller, it is
-	not equal to PCB rows number, instead you should add required value for each IC.
-
-- keypad,num-columns: Number of column lines connected to the keypad controller,
-	it is not equal to PCB columns number, instead you should add required value
-	for each IC.
-
-- linux,keymap: The keymap for keys as described in the binding document
-  devicetree/bindings/input/matrix-keymap.txt.
-
-- pinctrl: Should specify pin control groups used for this controller.
-  See ../pinctrl/pinctrl-bindings.txt for details.
-
-- clocks: Must contain one entry, for the module clock.
-  See ../clocks/clock-bindings.txt for details.
-
-- clock-names: Names of the clocks listed in clocks property in the same order.
-
-Optional Properties:
-- wakeup-source: use any event on keypad as wakeup event.
-
-Example:
-
-	keypad: kp@10010000 {
-		compatible = "mediatek,kp";
-		reg = <0 0x10010000 0 0x1000>;
-		wakeup-source;
-		interrupts = <GIC_SPI 75 IRQ_TYPE_EDGE_FALLING>;
-		clocks = <&clk26m>;
-		clock-names = "kpd";
-	};
-
-	&keypad {
-		mediatek,debounce-us = <32000>;
-		keypad,num-rows = <8>;
-		keypad,num-columns = <9>;
-		linux,keymap = < MATRIX_KEY(0x00, 0x00, KEY_VOLUMEDOWN) >;
-		status = "okay";
-		pinctrl-names = "default";
-		pinctrl-0 = <&kpd_gpios_def_cfg>;
-	};
diff --git a/Documentation/devicetree/bindings/input/mtk-kpd.yaml b/Documentation/devicetree/bindings/input/mtk-kpd.yaml
new file mode 100644
index 000000000000..bd4247322e3c
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/mtk-kpd.yaml
@@ -0,0 +1,93 @@
+%YAML 1.2
+---
+version: 1
+
+id: mtk-keypad
+
+title: Mediatek's Keypad Controller device tree bindings
+
+maintainer:
+  - name: Fengping Yu <fengping.yu@mediatek.com>
+
+description: >
+  TODO
+
+properties:
+  - name: "compatible"
+      constraint: |
+        "mediatek,mt6779-keypad"
+        "mediatek, kp"
+    clock-names:
+    clocks:
+    interrupts:
+    linux,keymap
+    pinctrl-0:
+    pinctrl-names:
+    reg:
+    wakeup-source:
+    keypad,num-columns:
+    keypad,num-rows:
+    mediatek,debounce-us
+    status:
+...
+# * Mediatek's Keypad Controller device tree binding
+#
+# Mediatek's Keypad controller is used to interface a SoC with a matrix-type
+# keypad device. The keypad controller supports multiple row and column lines.
+# A key can be placed at each intersection of a unique row and a unique column.
+# The keypad controller can sense a key-press and key-release and report the
+# event using a interrupt to the cpu.
+#
+# Required properties:
+# - compatible should contain:
+# 	* "mediatek,kp" for common keypad
+# 	* "mediatek,mt6779-keypad" for specific keypad chip
+#
+# - reg: The base address of the Keypad register bank.
+#
+# - interrupts: A single interrupt specifier.
+#
+# - mediatek,debounce-us: Debounce interval in microseconds, maximum value
+#   is 256000 microseconds.
+#
+# - keypad,num-rows: Number of row lines connected to the keypad controller, it is
+# 	not equal to PCB rows number, instead you should add required value for each IC.
+#
+# - keypad,num-columns: Number of column lines connected to the keypad controller,
+# 	it is not equal to PCB columns number, instead you should add required value
+# 	for each IC.
+#
+# - linux,keymap: The keymap for keys as described in the binding document
+#   devicetree/bindings/input/matrix-keymap.txt.
+#
+# - pinctrl: Should specify pin control groups used for this controller.
+#   See ../pinctrl/pinctrl-bindings.txt for details.
+#
+# - clocks: Must contain one entry, for the module clock.
+#   See ../clocks/clock-bindings.txt for details.
+#
+# - clock-names: Names of the clocks listed in clocks property in the same order.
+#
+# Optional Properties:
+# - wakeup-source: use any event on keypad as wakeup event.
+#
+# Example:
+#
+# 	keypad: kp@10010000 {
+# 		compatible = "mediatek,kp";
+# 		reg = <0 0x10010000 0 0x1000>;
+# 		wakeup-source;
+# 		interrupts = <GIC_SPI 75 IRQ_TYPE_EDGE_FALLING>;
+# 		clocks = <&clk26m>;
+# 		clock-names = "kpd";
+# 	};
+#
+# 	&keypad {
+# 		mediatek,debounce-us = <32000>;
+# 		keypad,num-rows = <8>;
+# 		keypad,num-columns = <9>;
+# 		linux,keymap = < MATRIX_KEY(0x00, 0x00, KEY_VOLUMEDOWN) >;
+# 		status = "okay";
+# 		pinctrl-names = "default";
+# 		pinctrl-0 = <&kpd_gpios_def_cfg>;
+# 	};
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
