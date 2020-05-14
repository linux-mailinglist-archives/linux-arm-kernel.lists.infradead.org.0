Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B45471D2F1D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 14:04:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LTGt286zNAPFLK1IBcQvqHX1QrIv+dvYOF//vWpNAu4=; b=Xle0GPFojsQqKUR8j1QjH+jYZf
	nVRqc6WWcb7zvWctfAkNAnWZprekHkAJSBovqpsw3c9Uy4pGi3JfJ1iP/w1+jye8ZAATLXp/txSjX
	iwCXrbnSXAnRqR0k5vaAik5mwCNGCN+xeb3dp2+J7Gq+iWkckrDf58nqsHMK0eYHR7tvlYLohfeLl
	1XVj3navhBizz3cWYOWL+pXjhgysDX519jR7j4M+xxiremcns9sSjJAuF8IeDdGhZT0HxtqV/0qI5
	SaxyDd1SOPsPthvr29gUDIil5neC9VbfyPtk3+cw4/4a8sc343grjelLVElKOyTwYRZwNWApDSp1j
	G+vKObJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZCaj-0006n2-H1; Thu, 14 May 2020 12:03:57 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZCaE-0006Za-Te
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 12:03:28 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 14 May 2020 21:03:24 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 6DC58180082;
 Thu, 14 May 2020 21:03:24 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 14 May 2020 21:03:24 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 26FF61A12B9;
 Thu, 14 May 2020 21:03:24 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH v4 1/2] dt-bindings: PCI: Add UniPhier PCIe endpoint
 controller description
Date: Thu, 14 May 2020 21:03:20 +0900
Message-Id: <1589457801-12796-2-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589457801-12796-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1589457801-12796-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_050327_193335_90877F37 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT bindings for PCIe controller implemented in UniPhier SoCs
when configured in endpoint mode. This controller is based on
the DesignWare PCIe core.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../bindings/pci/socionext,uniphier-pcie-ep.yaml   | 92 ++++++++++++++++++++++
 MAINTAINERS                                        |  2 +-
 2 files changed, 93 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/pci/socionext,uniphier-pcie-ep.yaml

diff --git a/Documentation/devicetree/bindings/pci/socionext,uniphier-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/socionext,uniphier-pcie-ep.yaml
new file mode 100644
index 0000000..f0558b9
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/socionext,uniphier-pcie-ep.yaml
@@ -0,0 +1,92 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/socionext,uniphier-pcie-ep.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Socionext UniPhier PCIe endpoint controller
+
+description: |
+  UniPhier PCIe endpoint controller is based on the Synopsys DesignWare
+  PCI core. It shares common features with the PCIe DesignWare core and
+  inherits common properties defined in
+  Documentation/devicetree/bindings/pci/designware-pcie.txt.
+
+maintainers:
+  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
+
+allOf:
+  - $ref: "pci-ep.yaml#"
+
+properties:
+  compatible:
+    const: socionext,uniphier-pro5-pcie-ep
+
+  reg:
+    maxItems: 4
+
+  reg-names:
+    items:
+      - const: dbi
+      - const: dbi2
+      - const: link
+      - const: addr_space
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: gio
+      - const: link
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: gio
+      - const: link
+
+  num-ib-windows:
+    const: 16
+
+  num-ob-windows:
+    const: 16
+
+  num-lanes: true
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: pcie-phy
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    pcie_ep: pcie-ep@66000000 {
+        compatible = "socionext,uniphier-pro5-pcie-ep";
+        reg-names = "dbi", "dbi2", "link", "addr_space";
+        reg = <0x66000000 0x1000>, <0x66001000 0x1000>,
+              <0x66010000 0x10000>, <0x67000000 0x400000>;
+        clock-names = "gio", "link";
+        clocks = <&sys_clk 12>, <&sys_clk 24>;
+        reset-names = "gio", "link";
+        resets = <&sys_rst 12>, <&sys_rst 24>;
+        num-ib-windows = <16>;
+        num-ob-windows = <16>;
+        num-lanes = <4>;
+        phy-names = "pcie-phy";
+        phys = <&pcie_phy>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 92657a1..7f26748 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13211,7 +13211,7 @@ PCIE DRIVER FOR SOCIONEXT UNIPHIER
 M:	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
 L:	linux-pci@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/pci/uniphier-pcie.txt
+F:	Documentation/devicetree/bindings/pci/uniphier-pcie*
 F:	drivers/pci/controller/dwc/pcie-uniphier.c
 
 PCIE DRIVER FOR ST SPEAR13XX
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
