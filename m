Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 993631CAE01
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 15:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qwp3lsX16AtiEMsGOvMKpmPXRLWr0pu6kaZgWrLDulA=; b=sFL9LMkZ/2nnTX
	M4MWCq4T3M1Yn6f40QXcHgsInkmJc8dZpWIh6PEp+/Y60mecG85TI7awLBHZJEVew57J/BTrdiAAD
	wuAzN5HUu4riI+tb4z5rMBLRuo08oJL80gzkaiCfuH6L2ocqqmZegXMrdZ9x01vg5DE9BkfFJcQAg
	r1l7O7QGrreWPOJGj9mXZxXpAeD9MxozBtpBoNxRhleE6HEvB9zqCHPug7PISsU3ymnToMJI/zOlD
	joB6QOF8g3PQUY6ySR1xc5705T4IWR+Z6jo2dHJ/AIJPkOX95QL6bc15XPk7eFTE23MYQjp/NJviz
	hnkR89WB/Ch5y9nY6Iqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX2jJ-0001hF-4S; Fri, 08 May 2020 13:07:53 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX2iV-0001Y5-VW
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 13:07:05 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 048D6rJs088052;
 Fri, 8 May 2020 08:06:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588943213;
 bh=92Ee+tMLcURU8mNv/W9fRnCJAHuvD9EdOs9ASqzvK88=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=hjY4J2jGmYErx/clt3GNJdUEEKwfEszWnG2t/mJcvS8/8F2ikQIsSSmLGIrXGkBH0
 muYhrHuUnpulIom79b3xNftzB/iI2wlJodZi2VXtpdKkbx0wfYTkOmex/O6Ch+KJoX
 wRI1E8uEypLW+rOaraKD2DsBTGRIW3LF7heL0yVk=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 048D6rlq103723
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 8 May 2020 08:06:53 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 8 May
 2020 08:06:53 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 8 May 2020 08:06:53 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 048D6kYl018673;
 Fri, 8 May 2020 08:06:50 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Robin Murphy
 <robin.murphy@arm.com>, Tom Joseph <tjoseph@cadence.com>
Subject: [PATCH v3 1/4] dt-bindings: PCI: cadence: Deprecate inbound/outbound
 specific bindings
Date: Fri, 8 May 2020 18:36:43 +0530
Message-ID: <20200508130646.23939-2-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200508130646.23939-1-kishon@ti.com>
References: <20200508130646.23939-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_060704_095779_51B706AC 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
Cc: linux-pci@vger.kernel.org, kishon@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Deprecate cdns,max-outbound-regions and cdns,no-bar-match-nbits for
host mode as both these could be derived from "ranges" and "dma-ranges"
property. "cdns,max-outbound-regions" property would still be required
for EP mode.

Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Tom Joseph <tjoseph@cadence.com>
Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../bindings/pci/cdns,cdns-pcie-ep.yaml       |  2 +-
 .../bindings/pci/cdns,cdns-pcie-host.yaml     |  3 +--
 .../devicetree/bindings/pci/cdns-pcie-ep.yaml | 25 +++++++++++++++++++
 .../bindings/pci/cdns-pcie-host.yaml          | 10 ++++++++
 .../devicetree/bindings/pci/cdns-pcie.yaml    |  8 ------
 5 files changed, 37 insertions(+), 11 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/cdns-pcie-ep.yaml

diff --git a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.yaml
index 2996f8d4777c..50ce5d79d2c7 100644
--- a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Tom Joseph <tjoseph@cadence.com>
 
 allOf:
-  - $ref: "cdns-pcie.yaml#"
+  - $ref: "cdns-pcie-ep.yaml#"
   - $ref: "pci-ep.yaml#"
 
 properties:
diff --git a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml
index cabbe46ff578..84a8f095d031 100644
--- a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml
+++ b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml
@@ -45,8 +45,6 @@ examples:
             #size-cells = <2>;
             bus-range = <0x0 0xff>;
             linux,pci-domain = <0>;
-            cdns,max-outbound-regions = <16>;
-            cdns,no-bar-match-nbits = <32>;
             vendor-id = <0x17cd>;
             device-id = <0x0200>;
 
@@ -57,6 +55,7 @@ examples:
 
             ranges = <0x02000000 0x0 0x42000000  0x0 0x42000000  0x0 0x1000000>,
                      <0x01000000 0x0 0x43000000  0x0 0x43000000  0x0 0x0010000>;
+            dma-ranges = <0x02000000 0x0 0x0 0x0 0x0 0x1 0x00000000>;
 
             #interrupt-cells = <0x1>;
 
diff --git a/Documentation/devicetree/bindings/pci/cdns-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/cdns-pcie-ep.yaml
new file mode 100644
index 000000000000..6150a7a7bdbf
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/cdns-pcie-ep.yaml
@@ -0,0 +1,25 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/pci/cdns-pcie-ep.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Cadence PCIe Device
+
+maintainers:
+  - Tom Joseph <tjoseph@cadence.com>
+
+allOf:
+  - $ref: "cdns-pcie.yaml#"
+
+properties:
+  cdns,max-outbound-regions:
+    description: maximum number of outbound regions
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 32
+    default: 32
+
+required:
+  - cdns,max-outbound-regions
diff --git a/Documentation/devicetree/bindings/pci/cdns-pcie-host.yaml b/Documentation/devicetree/bindings/pci/cdns-pcie-host.yaml
index ab6e43b636ec..3d64f85aeb39 100644
--- a/Documentation/devicetree/bindings/pci/cdns-pcie-host.yaml
+++ b/Documentation/devicetree/bindings/pci/cdns-pcie-host.yaml
@@ -14,6 +14,15 @@ allOf:
   - $ref: "cdns-pcie.yaml#"
 
 properties:
+  cdns,max-outbound-regions:
+    description: maximum number of outbound regions
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 32
+    default: 32
+    deprecated: true
+
   cdns,no-bar-match-nbits:
     description:
       Set into the no BAR match register to configure the number of least
@@ -23,5 +32,6 @@ properties:
     minimum: 0
     maximum: 64
     default: 32
+    deprecated: true
 
   msi-parent: true
diff --git a/Documentation/devicetree/bindings/pci/cdns-pcie.yaml b/Documentation/devicetree/bindings/pci/cdns-pcie.yaml
index 6887ccc339cc..02553d5e6c51 100644
--- a/Documentation/devicetree/bindings/pci/cdns-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/cdns-pcie.yaml
@@ -10,14 +10,6 @@ maintainers:
   - Tom Joseph <tjoseph@cadence.com>
 
 properties:
-  cdns,max-outbound-regions:
-    description: maximum number of outbound regions
-    allOf:
-      - $ref: /schemas/types.yaml#/definitions/uint32
-    minimum: 1
-    maximum: 32
-    default: 32
-
   phys:
     description:
       One per lane if more than one in the list. If only one PHY listed it must
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
