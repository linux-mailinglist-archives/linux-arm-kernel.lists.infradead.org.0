Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EF21AD429
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 03:30:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wujLfnjMPZ2mucgUk1Vvn10A4bWUXrIiXXRNN9dBi3U=; b=OPR
	Y45tDoWffKupUfjFR4TcHEQxrQHW8uvSVhgKFqpjVDR+7QOQ637G+mJxBOUy9h5ZGcf5xPskckZcD
	L8Pqm0bLllg2j5J92iqzHIqWHn1M09QvMNi9mH6KrczVgnxjVdxJAz4jjsnj4nt4cV2SVki+uC8O1
	LiyaBl+wcAiqQUsQDuhBV7psYx93ZRCFjC4qUwbiM+IqJ9EbEtbHnkP8XqZJLnBlq0Gi9D46tCJMR
	pjevbD9F6PBiQDyDI39cZdDMaVPh9FeQoawo2nSZNii8f/LsmFDOwgCHIq9yteyi3cKa9IlS4A67y
	Oek5xsXKM/0XS1NK1+a7b43lrfLGkrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPFpu-0006CZ-7F; Fri, 17 Apr 2020 01:30:30 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPFpm-0006BM-Fj
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 01:30:24 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 17 Apr 2020 10:30:18 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 2F3B51800FB;
 Fri, 17 Apr 2020 10:30:18 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 17 Apr 2020 10:30:18 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id A40591A01BB;
 Fri, 17 Apr 2020 10:30:17 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH] dt-bindings: spi: Convert UniPhier SPI controller to
 json-schema
Date: Fri, 17 Apr 2020 10:30:14 +0900
Message-Id: <1587087014-14598-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_183022_638718_D05EC11D 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert UniPhier SPI controller binding to DT schema format.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../bindings/spi/socionext,uniphier-spi.yaml       | 55 ++++++++++++++++++++++
 .../devicetree/bindings/spi/spi-uniphier.txt       | 28 -----------
 2 files changed, 55 insertions(+), 28 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/socionext,uniphier-spi.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-uniphier.txt

diff --git a/Documentation/devicetree/bindings/spi/socionext,uniphier-spi.yaml b/Documentation/devicetree/bindings/spi/socionext,uniphier-spi.yaml
new file mode 100644
index 0000000..bab8bcc
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/socionext,uniphier-spi.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/socionext,uniphier-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Socionext UniPhier SPI controller
+
+description: |
+  UniPhier SoCs have SCSSI which supports SPI single channel.
+
+maintainers:
+  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
+  - Keiji Hayashibara <hayashibara.keiji@socionext.com>
+
+allOf:
+  - $ref: spi-controller.yaml#
+
+properties:
+  "#address-cells": true
+  "#size-cells": true
+
+  compatible:
+    const: socionext,uniphier-scssi
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
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+
+examples:
+  - |
+    spi0: spi@54006000 {
+        compatible = "socionext,uniphier-scssi";
+        reg = <0x54006000 0x100>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        interrupts = <0 39 4>;
+        clocks = <&peri_clk 11>;
+        resets = <&peri_rst 11>;
+    };
diff --git a/Documentation/devicetree/bindings/spi/spi-uniphier.txt b/Documentation/devicetree/bindings/spi/spi-uniphier.txt
deleted file mode 100644
index e120157..0000000
--- a/Documentation/devicetree/bindings/spi/spi-uniphier.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Socionext UniPhier SPI controller driver
-
-UniPhier SoCs have SCSSI which supports SPI single channel.
-
-Required properties:
- - compatible: should be "socionext,uniphier-scssi"
- - reg: address and length of the spi master registers
- - #address-cells: must be <1>, see spi-bus.txt
- - #size-cells: must be <0>, see spi-bus.txt
- - interrupts: a single interrupt specifier
- - pinctrl-names: should be "default"
- - pinctrl-0: pin control state for the default mode
- - clocks: a phandle to the clock for the device
- - resets: a phandle to the reset control for the device
-
-Example:
-
-spi0: spi@54006000 {
-	compatible = "socionext,uniphier-scssi";
-	reg = <0x54006000 0x100>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-	interrupts = <0 39 4>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_spi0>;
-	clocks = <&peri_clk 11>;
-	resets = <&peri_rst 11>;
-};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
