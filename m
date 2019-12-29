Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DAB12CADF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 21:45:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qDmCKzRONqTN6Q2LKc9/MIgTX7okFho+BVrxpDeNUk4=; b=DOEmNDCYroTJ2p
	pOfOUge2bGpNunqbaaySOpC2nasvc2XJsC+886/CdprXX3CUGmYYHkLCUhFaVGGv4dmDx5i/OE724
	5cA80BiXo0vTVX609mTPV3CkPFbRlsOgaq5gSaxusC3SpMwowd6Q1KdITpLE3ZLpF6EIekeNWVVUV
	+UOr7u8zSnyP4MMK06xBsVgxQIPpkfxxTF79YwyOKCo932LmEp1ec2exQIYnPT2VVsSs0qLHzYWLl
	GBAgA32AR5V/yKBZiidgF3jT8MHdk3VP2swbeC1BD+xDFn4Il0n49TzanT35ZFbqbGGKegSbdSfyY
	d3Db5DfMnxJxujf4xFdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilfRK-0000xk-67; Sun, 29 Dec 2019 20:45:30 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilfQs-0008VP-NY
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 20:45:04 +0000
X-Originating-IP: 92.184.100.83
Received: from localhost (unknown [92.184.100.83])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 74922C0002;
 Sun, 29 Dec 2019 20:45:00 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org
Subject: [PATCH 2/9] dt-bindings: rtc: at91rm9200: convert bindings to
 json-schema
Date: Sun, 29 Dec 2019 21:44:14 +0100
Message-Id: <20191229204421.337612-2-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191229204421.337612-1-alexandre.belloni@bootlin.com>
References: <20191229204421.337612-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_124502_917777_349C7021 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Eugen.Hristev@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Real Time Clock for Atmel/Microchip SoCs bindings documentation
to json-schema.

Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 .../bindings/rtc/atmel,at91rm9200-rtc.txt     | 17 --------
 .../bindings/rtc/atmel,at91rm9200-rtc.yaml    | 42 +++++++++++++++++++
 2 files changed, 42 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.txt
 create mode 100644 Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml

diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.txt b/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.txt
deleted file mode 100644
index 5d3791e789c6..000000000000
--- a/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Atmel AT91RM9200 Real Time Clock
-
-Required properties:
-- compatible: should be: "atmel,at91rm9200-rtc" or "atmel,at91sam9x5-rtc"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- interrupts: rtc alarm/event interrupt
-- clocks: phandle to input clock.
-
-Example:
-
-rtc@fffffe00 {
-	compatible = "atmel,at91rm9200-rtc";
-	reg = <0xfffffe00 0x100>;
-	interrupts = <1 4 7>;
-	clocks = <&clk32k>;
-};
diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml b/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml
new file mode 100644
index 000000000000..55bd87e884d3
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/atmel,at91rm9200-rtc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel AT91 RTC Device Tree Bindings
+
+allOf:
+  - $ref: "rtc.yaml#"
+
+maintainers:
+  - Alexandre Belloni <alexandre.belloni@bootlin.com>
+
+properties:
+  compatible:
+    enum:
+      - atmel,at91rm9200-rtc
+      - atmel,at91sam9x5-rtc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    rtc@fffffe00 {
+        compatible = "atmel,at91rm9200-rtc";
+        reg = <0xfffffe00 0x100>;
+        interrupts = <1 4 7>;
+        clocks = <&clk32k>;
+    };
+...
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
