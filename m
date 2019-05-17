Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7914E21AC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 17:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ldFi/ieNcfb7rGEByAiR4j5m/iJm/vbgTAhQtq33AwU=; b=iy0KkmwcoSMb6n
	SrM1jUWFEppPlX0TAG5QKXZpfYRS17EZy4C61VizHj/RWArFWTxr4+0Rw2FUkEABaILaai2P61U3r
	/BxYx8+nLF/RMnNRQuqityI9PjYrU3INDJ8YSZEa4F4j62HwsFroaBW1ot5ubxhaK4gX1kA136TuO
	He8gzn/F5wnhYYcudHmr7d3AXG3cdB4yw7ujkGfBoZlJi/iUocBifoDo8jFs+VvgY1Kwo80urTfA3
	zKuK/J6xdJDeVxB/P6jQ75VYLC/gH59316wJiLTJ+RazJqyouWSsn0TLAk0FZrQCevBBkWPjpF7Rc
	l6XvJ0Rr7Zotyc1E3UZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRex6-0001YT-Q3; Fri, 17 May 2019 15:39:20 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRewz-0001Xv-Kp
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 15:39:15 +0000
Received: by mail-oi1-f196.google.com with SMTP id m204so5511751oib.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 08:39:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1ZJFnqXbbMGfRed5Kn6WC0h6J8lD9JCwinWKItAWlBw=;
 b=T1kis3NnY6yepgwK5f3dxNHV27G9CGRD/KZCli8trS+/j6mxku/HO72dQ7+XwkZpTX
 Ath/Imj7gF0vBQwTcpJ2svN+MQhzLM3u++KgF9Xtqmri5TPHKnZr3E42VNmCeq/TPDnQ
 Np1CqqsOmL5LjjTlxyjD4OQ64I79s/JCWirF71aAtyJmVXAnPrpmAtPohyIKtVJUC83G
 ajtT3ZNEuFDDcyqQluhW5DlnUgoDP3ems69iS9xERmjlDNSt35JF29xiOvt2n14VvDf3
 uOVXOZifMuBBVIg7Utw+tzWx3MA+llom5G64GLId+n3snEuOaxxTgo/xnQaWFIX+nq/V
 uMqA==
X-Gm-Message-State: APjAAAX+uy0CQozcBMyWg29uH0tgbOPGLveGwGWcRPM3ZYBrc7i3Fa9C
 yPRXaoQIboLsYxxu6LgjbQ==
X-Google-Smtp-Source: APXvYqwuuPC7HYh3fwL49BJeBz1+HW7LCTzBgIKuSMxc/RINra91W4qveSKa7ogrzB/6mLxO9Jgssg==
X-Received: by 2002:aca:fd45:: with SMTP id b66mr15188097oii.157.1558107552707; 
 Fri, 17 May 2019 08:39:12 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id 41sm3172439otm.6.2019.05.17.08.39.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 17 May 2019 08:39:12 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH v3] dt-bindings: arm: Convert Atmel board/soc bindings to
 json-schema
Date: Fri, 17 May 2019 10:39:11 -0500
Message-Id: <20190517153911.19545-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_083913_693907_93BC2EEF 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Atmel SoC bindings to DT schema format using json-schema.

Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
v3:
- correct maintainers

 .../devicetree/bindings/arm/atmel-at91.txt    |  72 ----------
 .../devicetree/bindings/arm/atmel-at91.yaml   | 133 ++++++++++++++++++
 2 files changed, 133 insertions(+), 72 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/atmel-at91.txt
 create mode 100644 Documentation/devicetree/bindings/arm/atmel-at91.yaml

diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.txt b/Documentation/devicetree/bindings/arm/atmel-at91.txt
deleted file mode 100644
index 4bf1b4da7659..000000000000
--- a/Documentation/devicetree/bindings/arm/atmel-at91.txt
+++ /dev/null
@@ -1,72 +0,0 @@
-Atmel AT91 device tree bindings.
-================================
-
-Boards with a SoC of the Atmel AT91 or SMART family shall have the following
-properties:
-
-Required root node properties:
-compatible: must be one of:
- * "atmel,at91rm9200"
-
- * "atmel,at91sam9" for SoCs using an ARM926EJ-S core, shall be extended with
-   the specific SoC family or compatible:
-    o "atmel,at91sam9260"
-    o "atmel,at91sam9261"
-    o "atmel,at91sam9263"
-    o "atmel,at91sam9x5" for the 5 series, shall be extended with the specific
-      SoC compatible:
-       - "atmel,at91sam9g15"
-       - "atmel,at91sam9g25"
-       - "atmel,at91sam9g35"
-       - "atmel,at91sam9x25"
-       - "atmel,at91sam9x35"
-    o "atmel,at91sam9g20"
-    o "atmel,at91sam9g45"
-    o "atmel,at91sam9n12"
-    o "atmel,at91sam9rl"
-    o "atmel,at91sam9xe"
- * "atmel,sama5" for SoCs using a Cortex-A5, shall be extended with the specific
-   SoC family:
-    o "atmel,sama5d2" shall be extended with the specific SoC compatible:
-       - "atmel,sama5d27"
-    o "atmel,sama5d3" shall be extended with the specific SoC compatible:
-       - "atmel,sama5d31"
-       - "atmel,sama5d33"
-       - "atmel,sama5d34"
-       - "atmel,sama5d35"
-       - "atmel,sama5d36"
-    o "atmel,sama5d4" shall be extended with the specific SoC compatible:
-       - "atmel,sama5d41"
-       - "atmel,sama5d42"
-       - "atmel,sama5d43"
-       - "atmel,sama5d44"
-
- * "atmel,samv7" for MCUs using a Cortex-M7, shall be extended with the specific
-   SoC family:
-    o "atmel,sams70" shall be extended with the specific MCU compatible:
-       - "atmel,sams70j19"
-       - "atmel,sams70j20"
-       - "atmel,sams70j21"
-       - "atmel,sams70n19"
-       - "atmel,sams70n20"
-       - "atmel,sams70n21"
-       - "atmel,sams70q19"
-       - "atmel,sams70q20"
-       - "atmel,sams70q21"
-    o "atmel,samv70" shall be extended with the specific MCU compatible:
-       - "atmel,samv70j19"
-       - "atmel,samv70j20"
-       - "atmel,samv70n19"
-       - "atmel,samv70n20"
-       - "atmel,samv70q19"
-       - "atmel,samv70q20"
-    o "atmel,samv71" shall be extended with the specific MCU compatible:
-       - "atmel,samv71j19"
-       - "atmel,samv71j20"
-       - "atmel,samv71j21"
-       - "atmel,samv71n19"
-       - "atmel,samv71n20"
-       - "atmel,samv71n21"
-       - "atmel,samv71q19"
-       - "atmel,samv71q20"
-       - "atmel,samv71q21"
diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
new file mode 100644
index 000000000000..7cc1d6c7af55
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -0,0 +1,133 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/atmel-at91.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel AT91 device tree bindings.
+
+maintainers:
+  - Alexandre Belloni <alexandre.belloni@bootlin.com>
+  - Ludovic Desroches <ludovic.desroches@microchip.com>
+
+description: |
+  Boards with a SoC of the Atmel AT91 or SMART family shall have the following
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - items:
+          - const: atmel,at91rm9200
+      - items:
+          - enum:
+              - olimex,sam9-l9260
+          - enum:
+              - atmel,at91sam9260
+              - atmel,at91sam9261
+              - atmel,at91sam9263
+              - atmel,at91sam9g20
+              - atmel,at91sam9g45
+              - atmel,at91sam9n12
+              - atmel,at91sam9rl
+              - atmel,at91sam9xe
+          - const: atmel,at91sam9
+
+      - items:
+          - enum:
+              - atmel,at91sam9g15
+              - atmel,at91sam9g25
+              - atmel,at91sam9g35
+              - atmel,at91sam9x25
+              - atmel,at91sam9x35
+          - const: atmel,at91sam9x5
+          - const: atmel,at91sam9
+
+      - items:
+          - const: atmel,sama5d27
+          - const: atmel,sama5d2
+          - const: atmel,sama5
+
+      - description: Nattis v2 board with Natte v2 power board
+        items:
+          - const: axentia,nattis-2
+          - const: axentia,natte-2
+          - const: axentia,linea
+          - const: atmel,sama5d31
+          - const: atmel,sama5d3
+          - const: atmel,sama5
+
+      - description: TSE-850 v3 board
+        items:
+          - const: axentia,tse850v3
+          - const: axentia,linea
+          - const: atmel,sama5d31
+          - const: atmel,sama5d3
+          - const: atmel,sama5
+
+      - items:
+          - const: axentia,linea
+          - const: atmel,sama5d31
+          - const: atmel,sama5d3
+          - const: atmel,sama5
+
+      - items:
+          - enum:
+              - atmel,sama5d31
+              - atmel,sama5d33
+              - atmel,sama5d34
+              - atmel,sama5d35
+              - atmel,sama5d36
+          - const: atmel,sama5d3
+          - const: atmel,sama5
+
+      - items:
+          - enum:
+              - atmel,sama5d41
+              - atmel,sama5d42
+              - atmel,sama5d43
+              - atmel,sama5d44
+          - const: atmel,sama5d4
+          - const: atmel,sama5
+
+      - items:
+          - enum:
+              - atmel,sams70j19
+              - atmel,sams70j20
+              - atmel,sams70j21
+              - atmel,sams70n19
+              - atmel,sams70n20
+              - atmel,sams70n21
+              - atmel,sams70q19
+              - atmel,sams70q20
+              - atmel,sams70q21
+          - const: atmel,sams70
+          - const: atmel,samv7
+
+      - items:
+          - enum:
+              - atmel,samv70j19
+              - atmel,samv70j20
+              - atmel,samv70n19
+              - atmel,samv70n20
+              - atmel,samv70q19
+              - atmel,samv70q20
+          - const: atmel,samv70
+          - const: atmel,samv7
+
+      - items:
+          - enum:
+              - atmel,samv71j19
+              - atmel,samv71j20
+              - atmel,samv71j21
+              - atmel,samv71n19
+              - atmel,samv71n20
+              - atmel,samv71n21
+              - atmel,samv71q19
+              - atmel,samv71q20
+              - atmel,samv71q21
+          - const: atmel,samv71
+          - const: atmel,samv7
+
+...
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
