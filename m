Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD91818D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l5gvxL2KsFxL+vZkfxO0npr80HpfTNzJ79yzgvFBS0I=; b=WZaFzMffQ4k89a
	6sISoPN3xFmQlfn9Mad+dShT8VeBreMTOPFLEYbp7zzoIJHx6/KISLqMfZJSWzUNgfpCOlCV04vrC
	SyaOAiNBd8aURPSfbh3kemM/JXaoH37vCD67Sy7Oil8tgg6fFMTlLy0FJ0SNL2f8rA1NamshYRQdw
	tXyH0lZQLwzWfZevSJ3e+zL/48pouzL+Gj4N/+4MZzUB3FERqeryqQ8aCXDprzwMh/tCEH8HeSDCk
	lURUwCIdr1MynLVSrJfgrn/n/dPk0E5s5e38uuItqZahtPD0NQDFHwCB2oUJLaGmORN5jQ/8Sx8u/
	TwCju6ooByGM89iG0DEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubkM-0006lV-Ag; Mon, 05 Aug 2019 12:05:50 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubi9-0003FB-Ow
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:03:37 +0000
Received: by mail-wm1-x32f.google.com with SMTP id v19so72759358wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=03cjrsP0RDgNB463NC5l+ar2rIPSWRGFuDWfbzKJer4=;
 b=bvHJb3/6rwm4ri0PWxAXqnx3tGsomLKgntrlR6roxjbfUP6TEBJURIDqmlmcSRxvPl
 fimBqtk8WQSAlH9LrMqsF9EmNosdDF36A800TTFj/lVL6VodbYKGqPaHntux/YWADAa7
 Ei33K9eY8iK/Thb3RpTv/AU3l8LkQRen5fAEJUshRIcPclZw4Cu7Q9+N3YBZTibaRDhK
 ljuJoHKVDwCteZkH+J8kAfOHTENu+wOVpDYIslaHSJ21GRdB82HSYhNqgaDvZ9SPtSdK
 gHjYtUsui5gFXpHlmnn3t1844q+M2rAKUkkMsRdl2cA3TLV7sGLHF6Yk+IcM+zwiWjw5
 DBxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=03cjrsP0RDgNB463NC5l+ar2rIPSWRGFuDWfbzKJer4=;
 b=mtwchSsUebuTTnYMvAbsh6aMjPZiszMT6wkLcwVr3hzvHoYZ/0WdJJFImntcAFXIdr
 EYc2CaYJA68FNZUGVvsDTHZpx9eGwLz8BmYOlVD+ZuArsyUukAs+t86SKmXre1fx7lgt
 SD9T+G7RWBq7LOw8cbjyANZVRrcy62BkIra7mojL/UTj7M2Q7dzIz7e3ShZb1g4VOWQv
 tMJvqA6ElComhePFEBYA2A/2+xXrER1JwGVrR9SE2MlaewLo6NUktzZSX76U9tEQbm6A
 UHFlBdkTx/XwWihTqVvyUTSVTmFZtg9Z4C+VlbSU2YHi5uq/p/Z5uT7moQ4tKtczgK3F
 GdWg==
X-Gm-Message-State: APjAAAUcOyb+W50HpY+ZLFNG37DLtp0SsBmEHJNAfK5RQ1eFNJSzobj9
 /erO06OWtxzIm5yLHlkn5va//A==
X-Google-Smtp-Source: APXvYqywE8Dp7JVC/Lpdsu06qvWsy2pnvNdftrd1iabEJoCm13l1U9u7UmUh513R4CWlvucD+q1S+A==
X-Received: by 2002:a7b:cd9a:: with SMTP id y26mr19568536wmj.44.1565006611348; 
 Mon, 05 Aug 2019 05:03:31 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x6sm88683668wrt.63.2019.08.05.05.03.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 05:03:30 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFCv2 8/9] dt-bindings: serial: meson-uart: convert to yaml
Date: Mon,  5 Aug 2019 14:03:19 +0200
Message-Id: <20190805120320.32282-9-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190805120320.32282-1-narmstrong@baylibre.com>
References: <20190805120320.32282-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_050333_839393_AAA3B935 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32f listed in]
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
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic UART Serial controller over to a YAML schemas.

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
index 000000000000..5d48a8c04aa9
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
+      - description: Allways-on power domain UART controller
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
