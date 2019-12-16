Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35162120321
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:02:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIaxi8TW6/7kc2+ri3jCQvUDcvRqu4DcRQH+PcSrqFE=; b=cb79RIetq9xDMB
	WjzGeSpWqqJFBoypJgtl/f0hMNvDJo23OqyPAA3XiHnd/1OiFVtIaHj0rl0/7mBUqLfVJzym3AJq8
	MbvE4H5sbjLxLskuQnjMJoITqCzh1fly6HBgLOQJRHZU3rLBVnkbRPgRv+nRt5Nqi5M3aJp1a3qsL
	8hPhH1PkGeofP4XjfWvnfl7nhg21+dC3Bxu86pb1aKPogRL6Rw4FGwOawF3ySHMGue4t9OfGcUh+B
	NI08Au81lvrfZys52Hfb5S7BXmj8vd/1fGqW97GjBdZcHjdUNMfFHHlC4SmLwJqvKdVWpgJH01sdP
	29RmPOdzQSiBF+WIhx2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igo8U-0003Jg-MK; Mon, 16 Dec 2019 11:01:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igo80-00036F-By; Mon, 16 Dec 2019 11:01:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0A418ABF4;
 Mon, 16 Dec 2019 11:01:27 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: andrew.murray@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v5 1/6] dt-bindings: PCI: Add bindings for brcmstb's PCIe
 device
Date: Mon, 16 Dec 2019 12:01:07 +0100
Message-Id: <20191216110113.30436-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191216110113.30436-1-nsaenzjulienne@suse.de>
References: <20191216110113.30436-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_030128_695398_7DDDD9AA 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 mbrugger@suse.com, devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 phil@raspberrypi.org, jeremy.linton@arm.com, Rob Herring <robh+dt@kernel.org>,
 wahrenst@gmx.net, james.quinlan@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
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
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>

---

Changes since v2:
  - Add pci reference schema
  - Drop all default properties
  - Assume msi-controller and msi-parent are properly defined
  - Add num entries on multiple properties
  - use unevaluatedProperties
  - Update required properties
  - Fix license

Changes since v1:
  - Fix commit Subject
  - Remove linux,pci-domain

This was based on Jim's original submission[1], converted to yaml and
adapted to the RPi4 case.

[1] https://patchwork.kernel.org/patch/10605937/

 .../bindings/pci/brcm,stb-pcie.yaml           | 97 +++++++++++++++++++
 1 file changed, 97 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml

diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
new file mode 100644
index 000000000000..77d3e81a437b
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
@@ -0,0 +1,97 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
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
+allOf:
+  - $ref: /schemas/pci/pci-bus.yaml#
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
+  ranges:
+    maxItems: 1
+
+  dma-ranges:
+    maxItems: 1
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
+
+  msi-parent:
+    description: MSI controller the device is capable of using.
+
+  brcm,enable-ssc:
+    description: Indicates usage of spread-spectrum clocking.
+    type: boolean
+
+required:
+  - reg
+  - dma-ranges
+  - "#interrupt-cells"
+  - interrupts
+  - interrupt-names
+  - interrupt-map-mask
+  - interrupt-map
+  - msi-controller
+
+unevaluatedProperties: false
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
+                    device_type = "pci";
+                    #address-cells = <3>;
+                    #size-cells = <2>;
+                    #interrupt-cells = <1>;
+                    interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+                                 <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+                    interrupt-names = "pcie", "msi";
+                    interrupt-map-mask = <0x0 0x0 0x0 0x7>;
+                    interrupt-map = <0 0 0 1 &gicv2 GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
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
