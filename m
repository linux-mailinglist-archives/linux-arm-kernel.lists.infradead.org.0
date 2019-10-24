Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A440E2780
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 02:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOGY7rTWYSO+Bl1IjTHe/Lqlz/iDWGpNgHc99qZI0I8=; b=UdyZcz5VBeSzdv
	GJeVxU5u9Yko3MF0PqaLmKDanwMo0H6l7Qcdq4mjgapr0DKvsJP3GRYmB5SjgD5OPn26LMZ6nbXrU
	VZhO5AFxCGpelibQdgZC+QqkwoW2MuV01Cx2xTshBmwWD5iv4GmJmLuBOUV5plxz8Sx87byaN7nDe
	L/GmZIszyzwbGsynh+A6SSydIS2CHMuYftxk7XvjAuQ3qlrzmXPiAgMshqvTH27q78OgpgMy1f2NH
	tPBZKtjbvMFxqstk1CrKHC0ppIVjReGtcnFVICuheFzwjkS0gbNFM4Rh5kdt6FJL5ae5WM79GW+jt
	jQaxCMCgIDp42DQ4EWPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNRJX-0001yb-Oc; Thu, 24 Oct 2019 00:49:19 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNRJ1-0001iv-S7
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 00:48:49 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id EFDDE886BF;
 Thu, 24 Oct 2019 13:48:17 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1571878097;
 bh=Hjx2JI6pureQLHmmNJuUqkEbwbT6++g9hZ8eI416dYQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=o8wsuhOqs9YZLRGHDdAoCPKI29xyQ+qobp3y3jXloW/HQqA1NzOxdGNw+L18XdZ+c
 GHxfTuNmGAvgiPhaT6XOb1QqKXnq2sKQb2f8hHpfWkXM0smjXb8KTLjwloXGbISDxV
 5U0sWZJDZu9bAieprmNsN3IsOhcDoJ2gZe/S2o5Odhv2YJ3HQdMU78PQFA5UN9vh+k
 K8Ef34z3QpukxDXYvXtfxrwNO5LSxvfEmveWEg/XtFlH/Qfc/MgDkJw8/Ym6DNLGDd
 JyO9r0UNtbof5KXzewAwiHEZwv8vA8G96SSxs4yFUvGRW/FLfxdv6ZJZV4vYGeinjd
 uYjjYZkaJXROw==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5db0f4d10001>; Thu, 24 Oct 2019 13:48:17 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 0202A13ED56;
 Thu, 24 Oct 2019 13:48:22 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id C5D8128005C; Thu, 24 Oct 2019 13:48:17 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v3 1/2] dt-bindings: gpio: brcm: Add bindings for xgs-iproc
Date: Thu, 24 Oct 2019 13:48:14 +1300
Message-Id: <20191024004816.5539-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191024004816.5539-1-chris.packham@alliedtelesis.co.nz>
References: <20191024004816.5539-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_174848_282452_8534E058 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This GPIO controller is present on a number of Broadcom switch ASICs
with integrated SoCs. It is similar to the nsp-gpio and iproc-gpio
blocks but different enough to require a separate driver.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v3:
    - incorporate review comments from Rob and Bart
    
    Changes in v2:
    - Document as DT schema
    - Include ngpios, #gpio-cells and gpio-controller properties

 .../bindings/gpio/brcm,xgs-iproc.yaml         | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml

diff --git a/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml
new file mode 100644
index 000000000000..ec1fd3a64aa2
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/brcm,xgs-iproc.yaml#
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
