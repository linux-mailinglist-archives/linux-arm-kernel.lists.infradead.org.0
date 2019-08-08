Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D704D85D75
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0aSLwWXK+QByHCIFyJSu9sVBFh5n+6yO7figq++3o18=; b=Mo20Q+Rp+aZcbF
	bFSkPVf7uy25LjHeXsUPMz/1bAQ3BxC9EPaMqV3UUMuoZYDp1/XVeNMJqrz4OrHqT1Fko6hjXqAOd
	gii01JTbQZCNMpaCLa2oRVySWt5i5CVq7vnDhkNzV2yS8SXFMkotBGy3lqKTUwbdWv3XBhneV0ZMG
	sWgu6mslDplfOCqxB2nkyQF9m03l1pJkgbWCE2NVcka4cjOzAnSJv5HO5raweEZLJzJOtQUJP2Zx7
	B9268QusRUaV8BrhxEJYYiOfW2kj0y70fqIo1Qkfc9mKnqmojSSuiparErL90rL0VRi81YOR32RhO
	IRzU5pqMrHHV7En4XGRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveCU-0003FP-8u; Thu, 08 Aug 2019 08:55:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hve9F-0000dc-MD
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 08:51:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id u25so1570772wmc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 01:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QuKnpe4s6wxZssdxaTJXUi4v/CLyskF3O3BoNBEfIYk=;
 b=yA5hh0G7Rxyn8Ascb9XWOF7kH4sg1O3CAw8PJf77TPLVmT4vq+bnR5KmKObkuWNMY3
 Tquu8Zn5MxviArmtsQzzlzOL37eWrNCdZxRLYm8EyIJruWHD2FdppmT0A0VsVUivFvx5
 PUpDHBYBidyUNSXGE7Wj/EyhGRV7LFd8Hl4X6QpsH5yA9v42+unJHAIN3q4BT49TOWvt
 JCAuMmxZ41l9iFZNnVOibDrrHaL3OksQjx7OUsKLUE6kBkqgdG0UBkRjuTrguOmLSVbU
 YLyG8woX1NHtlanO9dcfS0AgTf2rv/jm8503HiyxdBOhWHsc5KIdc+DNEEQuEudtr3O0
 F8Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QuKnpe4s6wxZssdxaTJXUi4v/CLyskF3O3BoNBEfIYk=;
 b=EJADAhcuitLxC7+dCngnLjPwen8klddBYiWkPW7ehhy9kif9VGabr4j49RoK6iArzT
 XnwK/YkvePzDw5HICSyWtB+dRYvz5pQdfU8RV3tJua5VkUCvtDSCc66AE+8km82RGt12
 Q8w1je9isfKxg0b8EpetZzeP3owH/f8z/Fjt2FvyQ/AvsMWsDx5wmw0hVuuv/faB7mXx
 d4Yc0YyimcrJGviDXg5iV2NiQFyz5A7JnSn98PKkWSx9nwGAboC3gqGOy2r2jS7inAsm
 aamHn2m0+4MkDTcwyBZVkQsfMP2vDsgj45V9/A9kLogFe/kPdihZCuG2LTXIvaNDGIMY
 OAtQ==
X-Gm-Message-State: APjAAAU3o5vWOfKitYLiR2mp67VFxs/q67GxEzhny9bq11DAW7x7m6e/
 SCImrS9kMg28K8qFGy14sHazbQ==
X-Google-Smtp-Source: APXvYqxY+fZCA8sP5uDcKzjh0AosyO7e8SkHTxEHpKA8LYVoRk+dlpyZtIsrOORhJJIK9nHKYpW1yw==
X-Received: by 2002:a1c:a8d7:: with SMTP id r206mr3070378wme.47.1565254308227; 
 Thu, 08 Aug 2019 01:51:48 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id i66sm3360031wmi.11.2019.08.08.01.51.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 01:51:47 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [PATCH 8/9] dt-bindings: serial: meson-uart: convert to yaml
Date: Thu,  8 Aug 2019 10:51:38 +0200
Message-Id: <20190808085139.21438-9-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808085139.21438-1-narmstrong@baylibre.com>
References: <20190808085139.21438-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_015149_898461_DC5DA656 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-serial@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic UART Serial controller over to a YAML schemas.

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/serial/amlogic,meson-uart.txt    | 38 ----------
 .../bindings/serial/amlogic,meson-uart.yaml   | 73 +++++++++++++++++++
 2 files changed, 73 insertions(+), 38 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/serial/amlogic,meson-uart.txt
 create mode 100644 Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml

diff --git a/Documentation/devicetree/bindings/serial/amlogic,meson-uart.txt b/Documentation/devicetree/bindings/serial/amlogic,meson-uart.txt
deleted file mode 100644
index c06c045126fc..000000000000
--- a/Documentation/devicetree/bindings/serial/amlogic,meson-uart.txt
+++ /dev/null
@@ -1,38 +0,0 @@
-Amlogic Meson SoC UART Serial Interface
-=======================================
-
-The Amlogic Meson SoC UART Serial Interface is present on a large range
-of SoCs, and can be present either in the "Always-On" power domain or the
-"Everything-Else" power domain.
-
-The particularity of the "Always-On" Serial Interface is that the hardware
-is active since power-on and does not need any clock gating and is usable
-as very early serial console.
-
-Required properties:
-- compatible : compatible: value should be different for each SoC family as :
-	- Meson6 : "amlogic,meson6-uart"
-	- Meson8 : "amlogic,meson8-uart"
-	- Meson8b : "amlogic,meson8b-uart"
-	- GX (GXBB, GXL, GXM) : "amlogic,meson-gx-uart"
-	eventually followed by : "amlogic,meson-ao-uart" if this UART interface
-	is in the "Always-On" power domain.
-- reg : offset and length of the register set for the device.
-- interrupts : identifier to the device interrupt
-- clocks : a list of phandle + clock-specifier pairs, one for each
-	   entry in clock names.
-- clock-names :
-   * "xtal" for external xtal clock identifier
-   * "pclk" for the bus core clock, either the clk81 clock or the gate clock
-   * "baud" for the source of the baudrate generator, can be either the xtal
-	or the pclk.
-
-e.g.
-uart_A: serial@84c0 {
-	compatible = "amlogic,meson-gx-uart";
-	reg = <0x0 0x84c0 0x0 0x14>;
-	interrupts = <GIC_SPI 26 IRQ_TYPE_EDGE_RISING>;
-	/* Use xtal as baud rate clock source */
-	clocks = <&xtal>, <&clkc CLKID_UART0>, <&xtal>;
-	clock-names = "xtal", "pclk", "baud";
-};
diff --git a/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml b/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
new file mode 100644
index 000000000000..214fe8beddc3
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/serial/amlogic,meson-uart.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson SoC UART Serial Interface
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+description: |
+  The Amlogic Meson SoC UART Serial Interface is present on a large range
+  of SoCs, and can be present either in the "Always-On" power domain or the
+  "Everything-Else" power domain.
+
+  The particularity of the "Always-On" Serial Interface is that the hardware
+  is active since power-on and does not need any clock gating and is usable
+  as very early serial console.
+
+properties:
+  compatible:
+    oneOf:
+      - description: Always-on power domain UART controller
+        items:
+        - enum:
+          - amlogic,meson6-uart
+          - amlogic,meson8-uart
+          - amlogic,meson8b-uart
+          - amlogic,meson-gx-uart
+        - const: amlogic,meson-ao-uart
+      - description: Everything-Else power domain UART controller
+        enum:
+        - amlogic,meson6-uart
+        - amlogic,meson8-uart
+        - amlogic,meson8b-uart
+        - amlogic,meson-gx-uart
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: external xtal clock identifier
+      - description: the bus core clock, either the clk81 clock or the gate clock
+      - description: the source of the baudrate generator, can be either the xtal or the pclk
+
+  clock-names:
+    items:
+      - const: xtal
+      - const: pclk
+      - const: baud
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
+    serial@84c0 {
+          compatible = "amlogic,meson-gx-uart";
+          reg = <0x84c0 0x14>;
+          interrupts = <26>;
+          clocks = <&xtal>, <&pclk>, <&xtal>;
+          clock-names = "xtal", "pclk", "baud";
+    };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
