Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6BE818D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:06:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eEsc00cIk/tWsjEx8viY0nGZsketLZVJXVfSpZowSBI=; b=Lqdjc/QdKEkg5u
	5c10bbbwOlrmGQ4rU8AbOnZXCoUrz7807BlagLYuuL/MSEVltHoAF/4ALsbqixImQIJmSYmgSCKsf
	wV97+iCZAXuqf4A6U31q7jq9bxjKnprwdxOIaA7cn0V+iruRkYA2f3vRpLGorDe3QbqL19wx32YWn
	uBMvZr0J3G7xLPr5z8HknoxpBqS2AisvUnrtka7skku4z0KUu/RIvZSUBMSm1ae9WkggvpxELNsS9
	ELKD4dBc26ORmNbicv01SgnZ29N0YMlnDcoELtowCxqYlOaqQa72+C3apH2avK2CLXNuJxJ9l5NXz
	sYsRFDIbdawuiEw/f66w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubkb-000701-Bh; Mon, 05 Aug 2019 12:06:05 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubi8-0003BG-Gr
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:03:37 +0000
Received: by mail-wr1-x431.google.com with SMTP id c2so80924896wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1UVbrDvxHP5fxAN2NFQuc4DUAHk3kIbjh3o2fngqONY=;
 b=Hp4E2CtC/CqVj2zUXcx0mf2aKRE8qNhjqoRkDLzn/2ALVO8KG/wgxj/8JsqNdYoCpX
 LicIz8U0wOImo8ByhkgKlAT2i2vDKQCFheCdpBLfCArxDd6WBiXfwKw7z15Ks2rMXTH2
 NbfvUjP+OL4hyJGMpBylUgSTnW6SvBeZr4SijYlyt7Ei3Rwq6RwHWeIyJ80NaRTUEtBR
 o2pBGhEzT8fF4N0EUANccvuhKuGV/2R9kDehR/iaTt15tVHhUzqE5UDn/VPWAYRpelgb
 ntJl39mCOUe24RS7FdTCz8Y8OCo2nJ7VUEwpnGsXrq+jU3tOcCyJ9LIJAtxHCKzfKtSF
 R5PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1UVbrDvxHP5fxAN2NFQuc4DUAHk3kIbjh3o2fngqONY=;
 b=nRVIqYxPHKU7tqFH0Qm/dwfGL6N9U1qE8vetCf8rMdWIhL8b6RBgH4jVVFzc0s/fFN
 48AjesnrBOyrVS8s6CMqcmj17snzlLuDUDZgKCWPSBevxrttkrPP+XCG1mQ8+QBnohbW
 nHCIbF+n0w5sFRd7oAla5mXkatrauAvofDgtnZRZF6VO4OOU59jWH9aQdQup3uLcfMER
 cLMucJvIt7PGIaxw/fg4lVUCu2vhin3pXCSttJGE6ke8i6UYzK5VKuQuEZrJw7D2yaoJ
 W/59YlJYt14ZjXNd+GITsNsvK3D8o3wmcfaXavfBnkkenu/7+wJs518PmqXkoRqkeFrH
 WvVA==
X-Gm-Message-State: APjAAAXO4i4CFNJT1somB+7YDku2YASbFa/6Mh5dUvAM39gSuWGWuzZL
 AK6acB4OkPwpEURkErs8xvOydg==
X-Google-Smtp-Source: APXvYqyd3wkTX3t9piiXsiUvpCyXSr8KaClorqcwW6T6bYRCzKarSSd9WohTarGxBu0zlFBS9XZbCA==
X-Received: by 2002:a5d:428a:: with SMTP id k10mr4966844wrq.329.1565006607836; 
 Mon, 05 Aug 2019 05:03:27 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x6sm88683668wrt.63.2019.08.05.05.03.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 05:03:27 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFCv2 3/9] dt-bindings: spi: meson: convert to yaml
Date: Mon,  5 Aug 2019 14:03:14 +0200
Message-Id: <20190805120320.32282-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190805120320.32282-1-narmstrong@baylibre.com>
References: <20190805120320.32282-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_050332_948674_DBD885BB 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic SPI controllers over to two separate YAML schemas.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/spi/amlogic,meson-gx-spicc.yaml  | 67 +++++++++++++++++++
 .../bindings/spi/amlogic,meson6-spifc.yaml    | 53 +++++++++++++++
 .../devicetree/bindings/spi/spi-meson.txt     | 55 ---------------
 3 files changed, 120 insertions(+), 55 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml
 create mode 100644 Documentation/devicetree/bindings/spi/amlogic,meson6-spifc.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-meson.txt

diff --git a/Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml b/Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml
new file mode 100644
index 000000000000..49b617c98ae7
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/spi/amlogic,meson-gx-spicc.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson SPI Communication Controller
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+allOf:
+  - $ref: "spi-controller.yaml#"
+
+description: |
+  The Meson SPICC is a generic SPI controller for general purpose Full-Duplex
+  communications with dedicated 16 words RX/TX PIO FIFOs.
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-gx-spicc # SPICC controller on Amlogic GX and compatible SoCs
+      - amlogic,meson-axg-spicc # SPICC controller on Amlogic AXG and compatible SoCs
+
+  interrupts:
+    maxItems: 1
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
+    description: input clock for the baud rate generator
+    items:
+      - const: core
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    spi@c1108d80 {
+          compatible = "amlogic,meson-gx-spicc";
+          reg = <0xc1108d80 0x80>;
+          interrupts = <112>;
+          clocks = <&clk81>;
+          clock-names = "core";
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          ethernet-switch@0 {
+              compatible = "micrel,ks8995m";
+              spi-max-frequency = <1000000>;
+              reg = <0>;
+          };
+    };
+
diff --git a/Documentation/devicetree/bindings/spi/amlogic,meson6-spifc.yaml b/Documentation/devicetree/bindings/spi/amlogic,meson6-spifc.yaml
new file mode 100644
index 000000000000..67dcedc81a5e
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/amlogic,meson6-spifc.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/spi/amlogic,meson6-spifc.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson SPI Flash Controller
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+allOf:
+  - $ref: "spi-controller.yaml#"
+
+description: |
+  The Meson SPIFC is a controller optimized for communication with SPI
+  NOR memories, without DMA support and a 64-byte unified transmit /
+  receive buffer.
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson6-spifc # SPI Flash Controller on Meson6 and compatible SoCs
+      - amlogic,meson-gxbb-spifc # SPI Flash Controller on GXBB and compatible SoCs
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+examples:
+  - |
+    spi@c1108c80 {
+          compatible = "amlogic,meson6-spifc";
+          reg = <0xc1108c80 0x80>;
+          clocks = <&clk81>;
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          flash: m25p80@0 {
+              compatible = "spansion,m25p80", "jedec,spi-nor";
+              reg = <0>;
+              spi-max-frequency = <40000000>;
+          };
+    };
+
diff --git a/Documentation/devicetree/bindings/spi/spi-meson.txt b/Documentation/devicetree/bindings/spi/spi-meson.txt
deleted file mode 100644
index b7f5e86fed22..000000000000
--- a/Documentation/devicetree/bindings/spi/spi-meson.txt
+++ /dev/null
@@ -1,55 +0,0 @@
-Amlogic Meson SPI controllers
-
-* SPIFC (SPI Flash Controller)
-
-The Meson SPIFC is a controller optimized for communication with SPI
-NOR memories, without DMA support and a 64-byte unified transmit /
-receive buffer.
-
-Required properties:
- - compatible: should be "amlogic,meson6-spifc" or "amlogic,meson-gxbb-spifc"
- - reg: physical base address and length of the controller registers
- - clocks: phandle of the input clock for the baud rate generator
- - #address-cells: should be 1
- - #size-cells: should be 0
-
-	spi@c1108c80 {
-		compatible = "amlogic,meson6-spifc";
-		reg = <0xc1108c80 0x80>;
-		clocks = <&clk81>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-	};
-
-* SPICC (SPI Communication Controller)
-
-The Meson SPICC is generic SPI controller for general purpose Full-Duplex
-communications with dedicated 16 words RX/TX PIO FIFOs.
-
-Required properties:
- - compatible: should be:
-	"amlogic,meson-gx-spicc" on Amlogic GX and compatible SoCs.
-	"amlogic,meson-axg-spicc" on Amlogic AXG and compatible SoCs
- - reg: physical base address and length of the controller registers
- - interrupts: The interrupt specifier
- - clock-names: Must contain "core"
- - clocks: phandle of the input clock for the baud rate generator
- - #address-cells: should be 1
- - #size-cells: should be 0
-
-Optional properties:
- - resets: phandle of the internal reset line
-
-See ../spi/spi-bus.txt for more details on SPI bus master and slave devices
-required and optional properties.
-
-Example :
-	spi@c1108d80 {
-		compatible = "amlogic,meson-gx-spicc";
-		reg = <0xc1108d80 0x80>;
-		interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
-		clock-names = "core";
-		clocks = <&clk81>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-	};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
