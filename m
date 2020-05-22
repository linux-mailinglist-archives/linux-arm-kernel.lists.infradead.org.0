Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0051DDE39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 05:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z2cHETnTeQFVvnDsFKoM1GAGK1NaSUOA63l3rmgrvrw=; b=sMJTPA6W12QiEF
	YdRTDQQejABO1Zv8PsKYa1+R71WVJ15ykxn04qhAeLpsh0p9Sojax4+lKJ14dN7nzRx6l7lb9W6Pn
	1pRWynckDzF3KzDl50tN+ClENe4F4fEOHcg8cf0WAbP2+SKZO8faqfLZ76po9kgitJt/hwybtI5NE
	BYWvDQL7oYwgcW5ITjl/mPE58ui4jCuvFEJ0Mpx4cOotx/U44IzAIHLaIdylc8fF/LtHkDeJz0X4y
	QdBrNg8vyVTGbYj0wP3oKsVdA3DPLNmiwOvE5PxccT8jc/bpGdVCvFiE88J74azWlEQjGYwXnACee
	OJlBdmZSG9DGwuoxf6mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbyYB-0004U3-AX; Fri, 22 May 2020 03:40:47 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbyUv-00081Z-EP
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 03:37:28 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04M3bGHO037603;
 Thu, 21 May 2020 22:37:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590118636;
 bh=o7DMocX7rlMLQL03fwQQZCPBjquUDY+oSrh6N/Sv4XY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=tOYIPbczCozXFYyE6izHIIGwUuRbRTR4xdKE3aMxD2by8lNpHBVUJLQC3Lp6PPxwe
 e+OM5CKV/w/jVcDA+R3sXlz42amzYoOkNJkcMBcfNZz4q61Mnl9cNv6CplXCeZFixm
 BhxNfEeUJx8IGM3B/WBXbXb6gxVFrxHE6pY5RPRI=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04M3bGf8027405
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 May 2020 22:37:16 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 May 2020 22:37:16 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 May 2020 22:37:16 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04M3aYc6062596;
 Thu, 21 May 2020 22:37:13 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>
Subject: [PATCH v5 10/14] dt-bindings: PCI: Add host mode dt-bindings for TI's
 J721E SoC
Date: Fri, 22 May 2020 09:06:27 +0530
Message-ID: <20200522033631.32574-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200522033631.32574-1-kishon@ti.com>
References: <20200522033631.32574-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_203725_666082_044D99F1 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add host mode dt-bindings for TI's J721E SoC.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/pci/ti,j721e-pci-host.yaml       | 113 ++++++++++++++++++
 1 file changed, 113 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml

diff --git a/Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml b/Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml
new file mode 100644
index 000000000000..d7b60487c6c3
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
+    enum:
+      - ti,j721e-pcie-host
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
