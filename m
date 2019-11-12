Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D25F94FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 17:00:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YpItwUnfq9bn8wd2Mj53gWwZlGGrN5aeKSfDJQr+8Q=; b=KIt1LhT/vA5p3D
	E+TXm13gYrCXxyS/SSEjPpVturANGyhkye1EAnrLqz0FwlNGzSVtDaq91Uwm/ftieUqDpyxLJaEIi
	+3+/aJYkRBlrpJBwE+7UqGyjmI02MMA1aV94BKksmkqvglm2N9mvs4xKiELC9X6z6buMmLIN2UcNT
	Qu2/a/Y40VMZZsLeut3VRH+aJyuVCUUwrlI2LFuVE/paKURGiWHuToi/AqzqOnSoKQz72u6a2omvb
	U2jm3Xr7m4kUi1Xv4WisTc9Ye9u2lJH9YBAELtSvaZepIS0l0FiAKEHg61EyMn1ivNgsxFeRJXPOR
	XTU5Cw3yit2r36boyynw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYay-0007gE-P2; Tue, 12 Nov 2019 16:00:44 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYZy-0005Wf-8l; Tue, 12 Nov 2019 15:59:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E3AEFB3B4;
 Tue, 12 Nov 2019 15:59:40 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: andrew.murray@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v2 2/6] dt-bindings: PCI: Add bindings for brcmstb's PCIe
 device
Date: Tue, 12 Nov 2019 16:59:21 +0100
Message-Id: <20191112155926.16476-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112155926.16476-1-nsaenzjulienne@suse.de>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_075942_621053_3EDF110B 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 mbrugger@suse.com, linux-pci@vger.kernel.org, phil@raspberrypi.org,
 jeremy.linton@arm.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <james.quinlan@broadcom.com>

The DT bindings description of the brcmstb PCIe device is described.
This node can only be used for now on the Raspberry Pi 4.

Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

---

Changes since v1:
  - Fix commit Subject
  - Remove linux,pci-domain

This was based on Jim's original submission[1], converted to yaml and
adapted to the RPi4 case.

[1] https://patchwork.kernel.org/patch/10605937/

 .../bindings/pci/brcm,stb-pcie.yaml           | 110 ++++++++++++++++++
 1 file changed, 110 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml

diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
new file mode 100644
index 000000000000..4cbb18821300
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
@@ -0,0 +1,110 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/brcm,stb-pcie.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Brcmstb PCIe Host Controller Device Tree Bindings
+
+maintainers:
+  - Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
+
+properties:
+  compatible:
+    const: brcm,bcm2711-pcie # The Raspberry Pi 4
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+    items:
+      - description: PCIe host controller
+      - description: builtin MSI controller
+
+  interrupt-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      - const: pcie
+      - const: msi
+
+  "#address-cells":
+    const: 3
+
+  "#size-cells":
+    const: 2
+
+  "#interrupt-cells":
+    const: 1
+
+  interrupt-map-mask: true
+
+  interrupt-map: true
+
+  ranges: true
+
+  dma-ranges: true
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: sw_pcie
+
+  msi-controller:
+    description: Identifies the node as an MSI controller.
+    type: boolean
+
+  msi-parent:
+    description: MSI controller the device is capable of using.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  brcm,enable-ssc:
+    description: Indicates usage of spread-spectrum clocking.
+    type: boolean
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - "#interrupt-cells"
+  - interrupt-map-mask
+  - interrupt-map
+  - ranges
+  - dma-ranges
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    scb {
+            #address-cells = <2>;
+            #size-cells = <1>;
+            pcie0: pcie@7d500000 {
+                    compatible = "brcm,bcm2711-pcie";
+                    reg = <0x0 0x7d500000 0x9310>;
+                    #address-cells = <3>;
+                    #size-cells = <2>;
+                    #interrupt-cells = <1>;
+                    interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+                                 <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+                    interrupt-names = "pcie", "msi";
+                    interrupt-map-mask = <0x0 0x0 0x0 0x7>;
+                    interrupt-map = <0 0 0 1 &gicv2 GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH
+                                     0 0 0 2 &gicv2 GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH
+                                     0 0 0 3 &gicv2 GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH
+                                     0 0 0 4 &gicv2 GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
+                    msi-parent = <&pcie0>;
+                    msi-controller;
+                    ranges = <0x02000000 0x0 0xf8000000 0x6 0x00000000 0x0 0x04000000>;
+                    dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000 0x0 0x80000000>;
+                    brcm,enable-ssc;
+            };
+    };
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
