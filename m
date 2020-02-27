Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB03172711
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:26:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U1q/uAUkH2/u6HCkagZstvdXgAwGZhr7Noz7PHBxA/I=; b=Iijk+8VlCkmHAbfds12C1jUFDl
	Vdxrn4/+IA+24qBEmG0ZD38UeEg/zoEWtsM0zNrOPy560dX8qvGAmfu7sbNmCFYHHTFzWX0WY/gMz
	JzhgfOawD3SD3tFGds7mC2A/yXqRbc/eo4zKriP93XLZoF+FFRDvtFJaf1Md1wdfFwGJzGzNwWD+Y
	n3dGPQGCigVKCTTbblxzFTH0YwTCyzg4slhk+k/7xdtCuXgYijlBCfMQZT8sbwG9lsO6QCAG6pV1O
	CE5tRi2RDHSJNiXBYsOc9tJ8NxD0kQV45prUFDtrhzxWVJfzn8FaFXoHmoP36mX/5irRHLCFRJwA1
	Q7yCPXEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Nro-0003Sq-Lr; Thu, 27 Feb 2020 18:26:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Nnz-0007MJ-NH
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:22:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 36C2730E;
 Thu, 27 Feb 2020 10:22:39 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8C2B13F73B;
 Thu, 27 Feb 2020 10:22:37 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 10/13] dt-bindings: memory-controllers: Convert Calxeda DDR
 to json-schema
Date: Thu, 27 Feb 2020 18:22:07 +0000
Message-Id: <20200227182210.89512-11-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227182210.89512-1-andre.przywara@arm.com>
References: <20200227182210.89512-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_102239_865865_9887C37B 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jon Loeliger <jdl@jdl.com>, Mark Langsdorf <mlangsdo@redhat.com>,
 Robert Richter <rric@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Eric Auger <eric.auger@redhat.com>,
 soc@kernel.org, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the Calxeda DDR memory controller binding to DT schema format
using json-schema.
Although this technically covers the whole DRAM controller, the
intention to use it only for error reporting and mapping fault addresses
to DRAM chips.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../memory-controllers/calxeda-ddr-ctrlr.txt  | 16 -------
 .../memory-controllers/calxeda-ddr-ctrlr.yaml | 42 +++++++++++++++++++
 2 files changed, 42 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.yaml

diff --git a/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt b/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt
deleted file mode 100644
index 049675944b78..000000000000
--- a/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-Calxeda DDR memory controller
-
-Properties:
-- compatible : Should be:
-  - "calxeda,hb-ddr-ctrl" for ECX-1000
-  - "calxeda,ecx-2000-ddr-ctrl" for ECX-2000
-- reg : Address and size for DDR controller registers.
-- interrupts : Interrupt for DDR controller.
-
-Example:
-
-	memory-controller@fff00000 {
-		compatible = "calxeda,hb-ddr-ctrl";
-		reg = <0xfff00000 0x1000>;
-		interrupts = <0 91 4>;
-	};
diff --git a/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.yaml b/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.yaml
new file mode 100644
index 000000000000..d9739501d61d
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/calxeda-ddr-ctrlr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Calxeda DDR memory controller binding
+
+description: |
+  The Calxeda DDR memory controller is initialised and programmed by the
+  firmware, but an OS might want to read its registers for error reporting
+  purposes and to learn about the DRAM topology.
+
+maintainers:
+  - Andre Przywara <andre.przywara@arm.com>
+
+properties:
+  compatible:
+    enum:
+      - calxeda,hb-ddr-ctrl
+      - calxeda,ecx-2000-ddr-ctrl
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
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
+    memory-controller@fff00000 {
+        compatible = "calxeda,hb-ddr-ctrl";
+        reg = <0xfff00000 0x1000>;
+        interrupts = <0 91 4>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
