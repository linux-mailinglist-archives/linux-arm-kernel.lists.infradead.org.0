Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7235DE7991
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 21:06:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KGO0lSmc/EImQlcI54lkOSvYemDFddBORbIoFaAmel4=; b=ulH1NK4Jwh4ipW
	Cnm8BHzLdqSzHeH+eCg6HDyp2QTU4zJIf2BozykciE6a12NFXR+Zn/SsS8GWGc9CSdfNNpM2iZaE9
	W5x+T/W5auQA2B3PXYk6qnYTewvuh/nlaCsQSfbbQg2qXS9s3JYZjG08rLVNHCtSpFTr9mxz9l2jr
	7wr8FOdsN0c/uuDBbod+tOpqu0IshImBrq3Y4O4qW7JU67ekO8qX8b8kLHwzpLUkaXFmWP32VnaIH
	PVyBpzda/n1glfMKhGEbtDXpVlT3FoAuvE5VI5PyMiAGh5/coGZtxoNbrLk2KIvIRG1o10yyYr3Gm
	otVJc9LAGMge6dhef4OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPBHL-0007d2-8E; Mon, 28 Oct 2019 20:06:15 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPBHB-0007bk-W7
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 20:06:08 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 934968365D;
 Tue, 29 Oct 2019 09:05:59 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1572293159;
 bh=TrZJM1xTX9YI9Sdqm4mhE1ENesdMtbUdy83TCSciGhM=;
 h=From:To:Cc:Subject:Date;
 b=nNKt5jO5bgRnJhc6K+jGMLqOOKO5vycLmCX0Wase1PP9cT/2p2HG6wnb7TOt+Pcqu
 19Ljg4KDdskhm6ZBczGa6+ehBnrP8BhcdfhrsMC0x4woRMWxJ+6vggLPMuen9xW5nm
 14i0ARyseE+yUYY+p7CO25B4tX6++LFAU3S/j0xRA9lAj1p1AIFPz3NWInGoc4rZgk
 HoyI79t669QwjTPczbBxUn2BEh5hGL8rcGW7+Fznwzxbib9sOGRaeNYAKDJblfXO76
 N+4lgnq+zt7q9V3Y/Y8WzZ3Ray1qa5OAa7mQOT96cTMpEiqSNZvEVlDLBopvfouiAx
 dmNUjqSzlb6pg==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5db74a260000>; Tue, 29 Oct 2019 09:05:58 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 91EDF13EE9C;
 Tue, 29 Oct 2019 09:05:58 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id ACEA128005C; Tue, 29 Oct 2019 09:05:57 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v5] dt-bindings: gpio: brcm: Add bindings for xgs-iproc
Date: Tue, 29 Oct 2019 09:05:55 +1300
Message-Id: <20191028200555.27524-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_130606_421799_90580824 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This GPIO controller is present on a number of Broadcom switch ASICs
with integrated SoCs. It is similar to the nsp-gpio and iproc-gpio
blocks but different enough to require a separate driver.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Notes:
    Changes in v5:
    - correct $id line following rename
    - add reviewed-by from Rob
    
    Changes in v4:
    - rename brcm,xgs-iproc.yaml -> brcm,xgs-iproc-gpio.yaml as suggested
    
    Changes in v3:
    - incorporate review comments from Rob and Bart
    
    Changes in v2:
    - Document as DT schema
    - Include ngpios, #gpio-cells and gpio-controller properties

 .../bindings/gpio/brcm,xgs-iproc-gpio.yaml    | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml

diff --git a/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml
new file mode 100644
index 000000000000..64e279a4bc10
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/brcm,xgs-iproc-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom XGS iProc GPIO controller
+
+maintainers:
+  - Chris Packham <chris.packham@alliedtelesis.co.nz>
+
+description: |
+  This controller is the Chip Common A GPIO present on a number of Broadcom
+  switch ASICs with integrated SoCs.
+
+properties:
+  compatible:
+    const: brcm,iproc-gpio-cca
+
+  reg:
+    items:
+      - description: the I/O address containing the GPIO controller
+                     registers.
+      - description: the I/O address containing the Chip Common A interrupt
+                     registers.
+
+  gpio-controller: true
+
+  '#gpio-cells':
+      const: 2
+
+  ngpios:
+    minimum: 0
+    maximum: 32
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 2
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#gpio-cells"
+  - gpio-controller
+
+dependencies:
+  interrupt-controller: [ interrupts ]
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    gpio@18000060 {
+        compatible = "brcm,iproc-gpio-cca";
+        #gpio-cells = <2>;
+        reg = <0x18000060 0x50>,
+              <0x18000000 0x50>;
+        ngpios = <12>;
+        gpio-controller;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+        interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+    };
+
+
+...
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
