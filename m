Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43713168E58
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 12:05:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+48+bKnDjhYdUH287cJIvGmOAfW6ovcRfbPDO7ejG+k=; b=IpJ
	4eVkhjnHdxApder7iOC/1IIezKQ4uQFbIoSpnWJayeNHtZXPbgAZhlV1iXOzGaTEMx4zhN8j3wgUA
	+p9/jN6nXHSRftcxG3XQAJMH/OyK1AbDdqX2XiBiEee9lIW7YDJFVxvfVAJwMO4ib8eNo7aXnvL+H
	Re9Rv0oZ3LV4pVlgOQqP0794UFGsToK6umB4HvQB57/wVniRYvj3eoH5WysJNrkIxFHx0RyKvBFoX
	3LX1HxHfgd5nmcXLJHlVVA79RSPnGe96fSyQHlPSoYU/Sox9JznvJhr8dn/SNd64ST2eidzYaFt9C
	L+1o20KBl5/ACe1Pcv9iK/PqRUzkYSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Sau-00021S-Kw; Sat, 22 Feb 2020 11:05:12 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Sah-0001lv-34
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 11:05:01 +0000
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id 01MB4alo020451;
 Sat, 22 Feb 2020 20:04:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 01MB4alo020451
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582369476;
 bh=QUtc/zt9J0Re8J3lue0pAvtGUOq+B5S2sXMyFuVNQpw=;
 h=From:To:Cc:Subject:Date:From;
 b=tL77W5FH0U9kZMw1COHxjPFCyr0/vNN3EXD2Hhli6b/WVxmfuVq4a2s+CnV9vbm9t
 B2H7i8eAw7IMRQtB8vWpV5/78B+XyR7WpiLsI4Lxp6S84yoNJSgSthZE9SKvrKHDf8
 bpFLa4XqcVVjnt3dLiWkWwAeU/SSCWdThIaMYTQk5DzNF8X7WSmMdW9UZsAaVZf5zc
 L4Q4+S5rWB/8CkahNwQwRfFizi2hOZQs22KeIjndcEFXlUqAds5F0jP/3ttRHlmteh
 WMeXaOhQCVI0LWjJOjwA0M9l12HEFcgDTcEvS8mMzjR2kW1+37T/lv5EfK/MRjxiJ+
 q/wBwDrQAx75g==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] dt-bindings: interrupt-controller: Convert UniPhier AIDET
 to json-schema
Date: Sat, 22 Feb 2020 20:04:35 +0900
Message-Id: <20200222110435.18772-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_030459_453499_1A224246 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.77 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 masahiroy@kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the UniPhier AIDET (ARM Interrupt Detector) binding to DT
schema format.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Some qeustions:

I was wondering when 'additionalProperties: false' should be added.

If I add it to a bus controller device (e.g. I2C),
I see some schema warnings because various sub-nodes
are added depending on which device you connect.

On the other hand, the interrupt controller like this
does not have a subnode.
So, probably this is the case where we can add
'additionalProperties: false'.

Is this correct?

One more thing.

There are multiple ways to do a similar thing:

   compatible:
     enum:
        - socionext,uniphier-ld4-aidet
        - socionext,uniphier-pro4-aidet
        ...
vs

   compatible:
     oneOf:
        - const: socionext,uniphier-ld4-aidet
        - const: socionext,uniphier-pro4-aidet
        ...

I adopted the former because I can save 'const'.
If there is a preferred way, I will follow it.

END

---

Changes in v2:
  - fix the schema warning in the example

 .../socionext,uniphier-aidet.txt              | 32 ----------
 .../socionext,uniphier-aidet.yaml             | 61 +++++++++++++++++++
 2 files changed, 61 insertions(+), 32 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/socionext,uniphier-aidet.txt
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/socionext,uniphier-aidet.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/socionext,uniphier-aidet.txt b/Documentation/devicetree/bindings/interrupt-controller/socionext,uniphier-aidet.txt
deleted file mode 100644
index 48e71d3ac2ad..000000000000
--- a/Documentation/devicetree/bindings/interrupt-controller/socionext,uniphier-aidet.txt
+++ /dev/null
@@ -1,32 +0,0 @@
-UniPhier AIDET
-
-UniPhier AIDET (ARM Interrupt Detector) is an add-on block for ARM GIC (Generic
-Interrupt Controller).  GIC itself can handle only high level and rising edge
-interrupts.  The AIDET provides logic inverter to support low level and falling
-edge interrupts.
-
-Required properties:
-- compatible: Should be one of the following:
-    "socionext,uniphier-ld4-aidet"  - for LD4 SoC
-    "socionext,uniphier-pro4-aidet" - for Pro4 SoC
-    "socionext,uniphier-sld8-aidet" - for sLD8 SoC
-    "socionext,uniphier-pro5-aidet" - for Pro5 SoC
-    "socionext,uniphier-pxs2-aidet" - for PXs2/LD6b SoC
-    "socionext,uniphier-ld11-aidet" - for LD11 SoC
-    "socionext,uniphier-ld20-aidet" - for LD20 SoC
-    "socionext,uniphier-pxs3-aidet" - for PXs3 SoC
-- reg: Specifies offset and length of the register set for the device.
-- interrupt-controller: Identifies the node as an interrupt controller
-- #interrupt-cells : Specifies the number of cells needed to encode an interrupt
-  source.  The value should be 2.  The first cell defines the interrupt number
-  (corresponds to the SPI interrupt number of GIC).  The second cell specifies
-  the trigger type as defined in interrupts.txt in this directory.
-
-Example:
-
-	aidet: aidet@5fc20000 {
-		compatible = "socionext,uniphier-pro4-aidet";
-		reg = <0x5fc20000 0x200>;
-		interrupt-controller;
-		#interrupt-cells = <2>;
-	};
diff --git a/Documentation/devicetree/bindings/interrupt-controller/socionext,uniphier-aidet.yaml b/Documentation/devicetree/bindings/interrupt-controller/socionext,uniphier-aidet.yaml
new file mode 100644
index 000000000000..f89ebde76dab
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/socionext,uniphier-aidet.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/socionext,uniphier-aidet.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: UniPhier AIDET
+
+description: |
+  UniPhier AIDET (ARM Interrupt Detector) is an add-on block for ARM GIC
+  (Generic Interrupt Controller). GIC itself can handle only high level and
+  rising edge interrupts. The AIDET provides logic inverter to support low
+  level and falling edge interrupts.
+
+maintainers:
+  - Masahiro Yamada <yamada.masahiro@socionext.com>
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+properties:
+  compatible:
+    enum:
+      - socionext,uniphier-ld4-aidet
+      - socionext,uniphier-pro4-aidet
+      - socionext,uniphier-sld8-aidet
+      - socionext,uniphier-pro5-aidet
+      - socionext,uniphier-pxs2-aidet
+      - socionext,uniphier-ld6b-aidet
+      - socionext,uniphier-ld11-aidet
+      - socionext,uniphier-ld20-aidet
+      - socionext,uniphier-pxs3-aidet
+
+  reg:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    description: |
+      The first cell defines the interrupt number (corresponds to the SPI
+      interrupt number of GIC). The second cell specifies the trigger type as
+      defined in interrupts.txt in this directory.
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - interrupt-controller
+  - '#interrupt-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    interrupt-controller@5fc20000 {
+        compatible = "socionext,uniphier-pro4-aidet";
+        reg = <0x5fc20000 0x200>;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
