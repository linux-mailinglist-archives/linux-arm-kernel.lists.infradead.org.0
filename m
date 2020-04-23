Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3461B63BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 20:28:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gzef3ZCONGT61+h/zdFjAXVHIFz17p2B/nH5sclpx0Y=; b=NTOXEGaCb+6DF7a/hD8oTEGZ1s
	dr6XL4W7WBzzae6l64SPmXrzR7RwLmLKIHJPpq+cppDYhDdKPpNjhNAdzLA1/6nUeIlM+DQOBc1U3
	Hy5fZM+CbyqGh8I6yCMPlJq8WpvYYPBz86TvlZjPeKulS6WFhaQainFTTWSOT3JmpLhKHcWlR8paY
	oo0egsXK1W0/W/M8VRGYI1Nchew/Dv3uwh/PlY6S3TklmE3s/VO5e8c/EZFAzgvHajMdN5SBpEbnJ
	MJmC3RuQYc0oPLPzvvBcwDU1fPET0+SF6+lZdQ0WGyOR7EHidwDlb85e7sHHr4Hg5N2K9zxu+KDa/
	egYcEESA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRgaK-0006Jc-8g; Thu, 23 Apr 2020 18:28:28 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRgYu-0005Dp-PJ; Thu, 23 Apr 2020 18:27:04 +0000
X-IronPort-AV: E=Sophos;i="5.73,307,1583161200"; d="scan'208";a="45332066"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie6.idc.renesas.com with ESMTP; 24 Apr 2020 03:26:59 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id 25A5B40C860A;
 Fri, 24 Apr 2020 03:26:54 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Tom Joseph <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v9 6/8] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
Date: Thu, 23 Apr 2020 19:22:37 +0100
Message-Id: <1587666159-6035-7-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_112700_952704_48A498FE 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the bindings for the R-Car PCIe endpoint driver.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
 .../devicetree/bindings/pci/rcar-pci-ep.yaml  | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml

diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
new file mode 100644
index 000000000000..aa483c7f27fd
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2020 Renesas Electronics Europe GmbH - https://www.renesas.com/eu/en/
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/rcar-pci-ep.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas R-Car PCIe Endpoint
+
+maintainers:
+  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
+  - Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
+
+properties:
+  compatible:
+    items:
+      - const: renesas,r8a774c0-pcie-ep
+      - const: renesas,rcar-gen3-pcie-ep
+
+  reg:
+    maxItems: 5
+
+  reg-names:
+    items:
+      - const: apb-base
+      - const: memory0
+      - const: memory1
+      - const: memory2
+      - const: memory3
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: pcie
+
+  max-functions:
+    minimum: 1
+    maximum: 1
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - resets
+  - power-domains
+  - clocks
+  - clock-names
+  - max-functions
+
+examples:
+  - |
+    #include <dt-bindings/clock/r8a774c0-cpg-mssr.h>
+    #include <dt-bindings/power/r8a774c0-sysc.h>
+
+     pcie0_ep: pcie-ep@fe000000 {
+            compatible = "renesas,r8a774c0-pcie-ep",
+                         "renesas,rcar-gen3-pcie-ep";
+            reg = <0xfe000000 0x80000>,
+                  <0xfe100000 0x100000>,
+                  <0xfe200000 0x200000>,
+                  <0x30000000 0x8000000>,
+                  <0x38000000 0x8000000>;
+            reg-names = "apb-base", "memory0", "memory1", "memory2", "memory3";
+            resets = <&cpg 319>;
+            power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
+            clocks = <&cpg CPG_MOD 319>;
+            clock-names = "pcie";
+            max-functions = /bits/ 8 <1>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
