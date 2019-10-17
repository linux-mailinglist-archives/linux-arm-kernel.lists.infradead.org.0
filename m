Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6ABDA438
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 05:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jg+LyvlH+TeYYDxyes+BR3OXHxIf25RTwSCbjwcRa+c=; b=r1MlLFids78LxI
	jCI7GQvb3/+dg1Aj3saXtq+RoYAfAB2IdxD75OdLOoUwOvwdvlS/NC6QGoD8YpUWHqRUbO6EplKjl
	0+XrjzEvdnl0mon7ckKI/SxEcb99wbg4MNEYVkQwQ60jVT6m73Bi9p8yGR3arTNXuUMGE18guNE1p
	mqE2BruSjtYtV5k5PiJKSjda0TFq/2ci+04G7z0hpofkrN+vLdtJBd8BZk3fIxF3d40H5500L9bKa
	9I8Vq2NAJneKQtMRbzuDAs25VWvu48jyAEntNZwAxW2+SVsBhaxBeFzNpeiEvY3pHyZdt8WwnWDin
	E0Y8SF9yeWIUg6QLrmbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKwCN-0007cC-Us; Thu, 17 Oct 2019 03:11:35 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKwBy-0007QD-TS
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 03:11:13 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 2DC4C891AB;
 Thu, 17 Oct 2019 16:10:58 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1571281858;
 bh=RSNYgN3xa7Wn9y39HNKCBoTixs9Vyw+6lp44Vh1/gxU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=m7MNOAARevCrchHDWRurTIPyJPZa82fuDTngXhggE7Lis79i0qwy1kVwTRTYFpOaB
 kMQgjLKd37/93Ys2iI5BmZ7SpmI20DYGD2W55nFh9dGhK1z1CsZQD+VFbsSm30JLNO
 hYQj8TRt7dFefXQEQxSxhx893/dmQCkpLFQWgME+Bf5GmO91SAZ1JIP90GYQjbEXqC
 64CQzEgFLH3c6jdf4lsXH7oDGEB801k1CMKWh/DZdw2k8wW07CRRXNPkk6mvlo4x6Q
 mIn7d6XK1fjlMhvyZRlhIdEAOk5rHwhEO0RbGLiK4ToWU57vuS6OKBkEcIBoQJsssT
 yWdOGw7qSHkOQ==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5da7dbc20001>; Thu, 17 Oct 2019 16:10:58 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 1BC8D13EEB6;
 Thu, 17 Oct 2019 16:11:02 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 08B05280059; Thu, 17 Oct 2019 16:10:58 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v2 1/2] dt-bindings: gpio: brcm: Add bindings for xgs-iproc
Date: Thu, 17 Oct 2019 16:10:50 +1300
Message-Id: <20191017031051.20366-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191017031051.20366-1-chris.packham@alliedtelesis.co.nz>
References: <20191017031051.20366-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_201111_289365_DAF941E5 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
    Changes in v2:
    - Document as DT schema
    - Include ngpios, #gpio-cells and gpio-controller properties

 .../bindings/gpio/brcm,xgs-iproc.yaml         | 83 +++++++++++++++++++
 1 file changed, 83 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml

diff --git a/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml
new file mode 100644
index 000000000000..71998551209e
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml
@@ -0,0 +1,83 @@
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
+    enum:
+      - brcm,iproc-gpio-cca
+
+  reg:
+    minItems: 2
+    maxItems: 2
+    description:
+      The first region defines the base I/O address containing
+      the GPIO controller registers. The second region defines
+      the I/O address containing the Chip Common A interrupt
+      registers.
+
+  gpio-controller: true
+
+  '#gpio-cells':
+      const: 2
+
+  ngpios:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 32
+
+  interrupt-controller:
+    type: boolean
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
+allOf:
+ - if:
+     properties:
+       interrupt-controller:
+         contains:
+           const: true
+   then:
+     required:
+       - interrupts
+       - '#interrupt-cells'
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
