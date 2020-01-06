Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F34DF13106F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 11:22:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KxR5pZKw+1LeJjSlXiqS7KqfKRqSSIoO6UkFx+t3IC4=; b=BiFGKwKN9rlMeo
	WYOkSLebEKGQbLrY1UF1NbBkhOIW5eeZRL5me7f+IJEIBzfdKNRPBJ3UGPMdFU3uQZ3kXi3RtBNKX
	4HMO/ikK29elkYXPfY+N5Q7fE7ObhBKeFzPyAtV8mmzokMmL2zyjXfw5kB+PNAoUp5eIYdaRj2U0s
	BwYALD/CqoyyRQAjbFBRxBvdQS0jRUxRKRy7ZGyq9k88mNg9R2RhDP9IUJcoMepvx8Tih/ptYKzHn
	I3lkFg6Wj3v5XL8znFK0JxU+xMkBtb48yImjNs+Vl8MeRwl3w5eULBnJCf+Mpr+Zp49YQ8X0+NIna
	BiNrGxUxH3c6SuD9HvaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioPWz-0000pD-3L; Mon, 06 Jan 2020 10:22:41 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioPUF-0005dF-As
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 10:19:55 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 006AJiKn017828;
 Mon, 6 Jan 2020 04:19:44 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578305984;
 bh=kMVejcece56Z7APFJLIfRYCCisyKOo4MnfkhxDVoRwU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=zImxDox24Q6rK2O/4aaxMJgSygSti7VJXYDzNwfrCOsklFVCirpiHzMdG+vDHD0eU
 SWWXTLt9lTzrJV//yNs0iitcbkuMUgz7iy/kO+8eJNk1t/t/RU1x6i/KzA09FZqmQP
 0U840s7l7mXxyrVgPcHK0x1Yc/4UjhQN+N0UI25E=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 006AJiT1032525;
 Mon, 6 Jan 2020 04:19:44 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 6 Jan
 2020 04:19:43 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 6 Jan 2020 04:19:44 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 006AIqY3118652;
 Mon, 6 Jan 2020 04:19:40 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob
 Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Andrew Murray
 <andrew.murray@arm.com>
Subject: [PATCH v2 11/14] dt-bindings: PCI: Add EP mode dt-bindings for TI's
 J721E SoC
Date: Mon, 6 Jan 2020 15:50:55 +0530
Message-ID: <20200106102058.19183-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200106102058.19183-1-kishon@ti.com>
References: <20200106102058.19183-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_021951_723447_A7280FD6 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add PCIe EP mode dt-bindings for TI's J721E SoC.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../bindings/pci/ti,j721e-pci-ep.yaml         | 93 +++++++++++++++++++
 1 file changed, 93 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml

diff --git a/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
new file mode 100644
index 000000000000..30f441139926
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
@@ -0,0 +1,93 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/pci/ti,j721e-pci-ep.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: TI J721E PCI EP (PCIe Wrapper)
+
+maintainers:
+  - Kishon Vijay Abraham I <kishon@ti.com>
+
+allOf:
+  - $ref: "cdns-pcie-ep.yaml#"
+
+properties:
+  compatible:
+      enum:
+          - ti,j721e-pcie-ep
+
+  reg:
+    maxItems: 4
+
+  reg-names:
+    items:
+      - const: intd_cfg
+      - const: user_cfg
+      - const: reg
+      - const: mem
+
+  ti,syscon-pcie-ctrl:
+    description: Phandle to the SYSCON entry required for configuring PCIe mode
+                 and link speed.
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
+  max-functions:
+    minimum: 1
+    maximum: 6
+
+  dma-coherent:
+    description: Indicates that the PCIe IP block can ensure the coherency
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
+  - cdns,max-outbound-regions
+  - dma-coherent
+  - max-functions
+  - phys
+  - phy-names
+
+examples:
+  - |
+    #include <dt-bindings/soc/ti,sci_pm_domain.h>
+
+     pcie0_ep: pcie-ep@d000000 {
+            compatible = "ti,j721e-pcie-ep";
+            reg = <0x00 0x02900000 0x00 0x1000>,
+                  <0x00 0x02907000 0x00 0x400>,
+                  <0x00 0x0d000000 0x00 0x00800000>,
+                  <0x00 0x10000000 0x00 0x08000000>;
+            reg-names = "intd_cfg", "user_cfg", "reg", "mem";
+            ti,syscon-pcie-ctrl = <&pcie0_ctrl>;
+            max-link-speed = <3>;
+            num-lanes = <2>;
+            power-domains = <&k3_pds 239 TI_SCI_PD_EXCLUSIVE>;
+            clocks = <&k3_clks 239 1>;
+            clock-names = "fck";
+            cdns,max-outbound-regions = <16>;
+            max-functions = /bits/ 8 <6>;
+            dma-coherent;
+            phys = <&serdes0_pcie_link>;
+            phy-names = "pcie_phy";
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
