Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 610721C08E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:12:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pBpNacZrK1lKksCcNJJnQnRBqUvMo2gwzbCnk7kgdKs=; b=qAG8OoRS/iN0pOC31ebitCCEM9
	QXor2oRvjDm/r3iR1E1GyD+drlvCdX3wzyB4XCIL7OCTX4IPOhFH0rkjOkpePn9maOAwOVxqPxQAt
	zMsOxm0uEKQRc7e6K6LVkc55e2K2tFapnZjcADkout3IsKYlyxY6I6zuGyCpIWvuYlZqvoE/f639j
	Ou3rHwVTIEiZslmYHc3ibMRasqc5goPkEF8MNwC8nCXv/GxvNrrmKyqztsuW2r4q8SVN9Z4YVKT/A
	AKKDv5WYxM/fmW6Luek5htAKUX5a2CEmdpH9FNJU+5CpdbwEgyovCl7daf9CMrMH3VSQUlb6ntHMz
	rhOhGjuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGTS-0004U7-Rv; Thu, 30 Apr 2020 21:12:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGSc-000407-MG
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 21:11:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 001E21042;
 Thu, 30 Apr 2020 14:11:10 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 18DC13F68F;
 Thu, 30 Apr 2020 14:11:08 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v3 3/8] dt-bindings: net: Convert Calxeda Ethernet binding to
 json-schema
Date: Thu, 30 Apr 2020 22:10:49 +0100
Message-Id: <20200430211054.30466-4-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430211054.30466-1-andre.przywara@arm.com>
References: <20200430211054.30466-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_141110_764520_CE5FB94E 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the Calxeda XGMAC Ethernet device binding to DT schema format
using json-schema.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../devicetree/bindings/net/calxeda-xgmac.txt | 18 -------
 .../bindings/net/calxeda-xgmac.yaml           | 49 +++++++++++++++++++
 2 files changed, 49 insertions(+), 18 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/calxeda-xgmac.txt
 create mode 100644 Documentation/devicetree/bindings/net/calxeda-xgmac.yaml

diff --git a/Documentation/devicetree/bindings/net/calxeda-xgmac.txt b/Documentation/devicetree/bindings/net/calxeda-xgmac.txt
deleted file mode 100644
index c8ae996bd8f2..000000000000
--- a/Documentation/devicetree/bindings/net/calxeda-xgmac.txt
+++ /dev/null
@@ -1,18 +0,0 @@
-* Calxeda Highbank 10Gb XGMAC Ethernet
-
-Required properties:
-- compatible : Should be "calxeda,hb-xgmac"
-- reg : Address and length of the register set for the device
-- interrupts : Should contain 3 xgmac interrupts. The 1st is main interrupt.
-  The 2nd is pwr mgt interrupt. The 3rd is low power state interrupt.
-
-Optional properties:
-- dma-coherent      : Present if dma operations are coherent
-
-Example:
-
-ethernet@fff50000 {
-        compatible = "calxeda,hb-xgmac";
-        reg = <0xfff50000 0x1000>;
-        interrupts = <0 77 4  0 78 4  0 79 4>;
-};
diff --git a/Documentation/devicetree/bindings/net/calxeda-xgmac.yaml b/Documentation/devicetree/bindings/net/calxeda-xgmac.yaml
new file mode 100644
index 000000000000..c3ca26666ede
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/calxeda-xgmac.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/calxeda-xgmac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Calxeda Highbank 10Gb XGMAC Ethernet controller
+
+description: |
+  The Calxeda XGMAC Ethernet controllers are directly connected to the
+  internal machine "network fabric", which is set up, initialised and
+  managed by the firmware. So there are no PHY properties in this
+  binding. Switches in the fabric take care of routing and mapping the
+  traffic to external network ports.
+
+maintainers:
+  - Andre Przywara <andre.przywara@arm.com>
+
+properties:
+  compatible:
+    const: calxeda,hb-xgmac
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description: |
+      Can point to at most 3 xgmac interrupts. The 1st one is the main
+      interrupt, the 2nd one is used for power management. The optional
+      3rd one is the low power state interrupt.
+    minItems: 2
+    maxItems: 3
+
+  dma-coherent: true
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    ethernet@fff50000 {
+        compatible = "calxeda,hb-xgmac";
+        reg = <0xfff50000 0x1000>;
+        interrupts = <0 77 4>, <0 78 4>, <0 79 4>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
