Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 108EB1ADDC3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 15:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOWqFastlrTMti32B2nXho1Y11APUVOq6QHM8YS/oXo=; b=byndufkq6oss9S
	CLjR+Wmt86xtGNQ1K+0n49uAnHkL9YLi+vdxMvJLyZL9WOlfvxTph4rkLtnnUVYzXxse8E6jzURw5
	GoZVoIcmapMhNFtVnTexHSG7BdtmGnZlSs9fYS72iKXKkJuXfQRKey/6h3M8TKaAScgK5GTM18akl
	rKNXnO7Dv0ueWA5qM1uF0vjIvUu6wSbqH9bdzc4Yh5nMXOdMWCEs1xRmnqhHr2zNX5qrpPPOORqav
	ihdrxf56T+Ir2hB0+uaTh37WUctndYrMJnraiH0sBJiKmlkb09qB6iE4rrF1w1kAI+WRiTlIwAwWK
	3ZZMGoA9A3itvurpXtHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPQcb-00079s-7k; Fri, 17 Apr 2020 13:01:29 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPQZv-0002Qe-0G
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 12:58:51 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03HCwYrH051599;
 Fri, 17 Apr 2020 07:58:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587128314;
 bh=peR9oJnvUwucDzXnKqpf5C5NOv01hYO1Pcv0Nxgp3aw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=HvCRKTGFlB6aHHTeC7BvEZBOR2HeA1FLxTGAY2KIBh194qGe1nk18WGJLLz3C/gu7
 KUpdOqUgnsIQUcwUZzgU4yg9wZSb/68cjCOa3NxkP6EFepFBdjjXQkNOnDH+q80zb3
 +UnqcNJNeyYYez3G0kV0SzZEFHtRQbJOlmOZiEjM=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03HCwYkd051916;
 Fri, 17 Apr 2020 07:58:34 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 17
 Apr 2020 07:58:33 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 17 Apr 2020 07:58:33 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03HCvsDF031089;
 Fri, 17 Apr 2020 07:58:30 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Subject: [PATCH v3 10/14] dt-bindings: PCI: Add host mode dt-bindings for TI's
 J721E SoC
Date: Fri, 17 Apr 2020 18:27:49 +0530
Message-ID: <20200417125753.13021-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200417125753.13021-1-kishon@ti.com>
References: <20200417125753.13021-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_055843_170656_721BC911 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add host mode dt-bindings for TI's J721E SoC.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../bindings/pci/ti,j721e-pci-host.yaml       | 113 ++++++++++++++++++
 1 file changed, 113 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml

diff --git a/Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml b/Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml
new file mode 100644
index 000000000000..d8d3011fd578
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/pci/ti,j721e-pci-host.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: TI J721E PCI Host (PCIe Wrapper)
+
+maintainers:
+  - Kishon Vijay Abraham I <kishon@ti.com>
+
+allOf:
+  - $ref: "cdns-pcie-host.yaml#"
+
+properties:
+  compatible:
+      enum:
+        - ti,j721e-pcie-host
+
+  reg:
+    maxItems: 4
+
+  reg-names:
+    items:
+      - const: intd_cfg
+      - const: user_cfg
+      - const: reg
+      - const: cfg
+
+  ti,syscon-pcie-ctrl:
+    description: Phandle to the SYSCON entry required for configuring PCIe mode
+      and link speed.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/phandle
+
+  power-domains:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+    description: clock-specifier to represent input to the PCIe
+
+  clock-names:
+    items:
+      - const: fck
+
+  vendor-id:
+    const: 0x104c
+
+  device-id:
+    const: 0xb00d
+
+  msi-map: true
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - ti,syscon-pcie-ctrl
+  - max-link-speed
+  - num-lanes
+  - power-domains
+  - clocks
+  - clock-names
+  - vendor-id
+  - device-id
+  - msi-map
+  - dma-coherent
+  - dma-ranges
+  - ranges
+  - reset-gpios
+  - phys
+  - phy-names
+
+examples:
+  - |
+    #include <dt-bindings/soc/ti,sci_pm_domain.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pcie0_rc: pcie@2900000 {
+            compatible = "ti,j721e-pcie-host";
+            reg = <0x00 0x02900000 0x00 0x1000>,
+                  <0x00 0x02907000 0x00 0x400>,
+                  <0x00 0x0d000000 0x00 0x00800000>,
+                  <0x00 0x10000000 0x00 0x00001000>;
+            reg-names = "intd_cfg", "user_cfg", "reg", "cfg";
+            ti,syscon-pcie-ctrl = <&pcie0_ctrl>;
+            max-link-speed = <3>;
+            num-lanes = <2>;
+            power-domains = <&k3_pds 239 TI_SCI_PD_EXCLUSIVE>;
+            clocks = <&k3_clks 239 1>;
+            clock-names = "fck";
+            device_type = "pci";
+            #address-cells = <3>;
+            #size-cells = <2>;
+            bus-range = <0x0 0xf>;
+            vendor-id = <0x104c>;
+            device-id = <0xb00d>;
+            msi-map = <0x0 &gic_its 0x0 0x10000>;
+            dma-coherent;
+            reset-gpios = <&exp1 6 GPIO_ACTIVE_HIGH>;
+            phys = <&serdes0_pcie_link>;
+            phy-names = "pcie-phy";
+            ranges = <0x01000000 0x0 0x10001000  0x00 0x10001000  0x0 0x0010000>,
+                     <0x02000000 0x0 0x10011000  0x00 0x10011000  0x0 0x7fef000>;
+            dma-ranges = <0x02000000 0x0 0x0 0x0 0x0 0x10000 0x0>;
+        };
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
