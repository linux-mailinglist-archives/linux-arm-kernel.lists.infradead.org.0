Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6961172712
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:26:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6+4Qt6h1VTy9EvZztlIYAmO2jS0TZca2vOte/f97nI4=; b=FPCOfCL8rDEuyFu0PCmaStiHO+
	DDqzGmrYH2pJ4mmn+Bfrck8FLDl63tMdWWSWjvKQHi4ffXLp3WI2bnGMHA62r1cVy6mEF444r6KhX
	PEhK23F74hYgJAnm/LazXQpF6P8YdgqWbukKIJA2FZHwZfyKrwTrZJQl31KBFnHaSVPLrQSwG7Lbu
	tqH4Xte35ZNmKxHMYvx222trRPzqX4Wyb6UsBgdM9esH4spidRtQ+RHFDsd9sNNHVxR47Z/+sakBj
	h9zuHoedE7BjiSRcekihuknGv/azwTUi2/fU9kvXHq3yUpwqCttUnYIijpcmW1UJ63ltqXpcWRI/v
	hYu18mHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Ns3-0003h9-Ih; Thu, 27 Feb 2020 18:26:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7No2-0007Od-Hg
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:22:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4ABD91FB;
 Thu, 27 Feb 2020 10:22:41 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B5D83F73B;
 Thu, 27 Feb 2020 10:22:39 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 11/13] dt-bindings: ipmi: Convert IPMI-SMIC bindings to
 json-schema
Date: Thu, 27 Feb 2020 18:22:08 +0000
Message-Id: <20200227182210.89512-12-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227182210.89512-1-andre.przywara@arm.com>
References: <20200227182210.89512-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_102242_792380_F7267F64 
X-CRM114-Status: GOOD (  14.59  )
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
 Robert Richter <rric@kernel.org>, Corey Minyard <minyard@acm.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Eric Auger <eric.auger@redhat.com>, soc@kernel.org,
 openipmi-developer@lists.sourceforge.net, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the generic IPMI controller bindings to DT schema format
using json-schema.

I removed the formerly mandatory device-type property, since this
is deprecated in the DT spec, except for the legacy CPU and memory
nodes.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Cc: Corey Minyard <minyard@acm.org>
Cc: openipmi-developer@lists.sourceforge.net
---
 .../devicetree/bindings/ipmi/ipmi-smic.txt    | 25 ---------
 .../devicetree/bindings/ipmi/ipmi-smic.yaml   | 56 +++++++++++++++++++
 2 files changed, 56 insertions(+), 25 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/ipmi/ipmi-smic.txt
 create mode 100644 Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml

diff --git a/Documentation/devicetree/bindings/ipmi/ipmi-smic.txt b/Documentation/devicetree/bindings/ipmi/ipmi-smic.txt
deleted file mode 100644
index d5f1a877ed3e..000000000000
--- a/Documentation/devicetree/bindings/ipmi/ipmi-smic.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-IPMI device
-
-Required properties:
-- compatible: should be one of ipmi-kcs, ipmi-smic, or ipmi-bt
-- device_type: should be ipmi
-- reg: Address and length of the register set for the device
-
-Optional properties:
-- interrupts: The interrupt for the device.  Without this the interface
-	is polled.
-- reg-size - The size of the register.  Defaults to 1
-- reg-spacing - The number of bytes between register starts.  Defaults to 1
-- reg-shift - The amount to shift the registers to the right to get the data
-	into bit zero.
-
-Example:
-
-smic@fff3a000 {
-	compatible = "ipmi-smic";
-	device_type = "ipmi";
-	reg = <0xfff3a000 0x1000>;
-	interrupts = <0 24 4>;
-	reg-size = <4>;
-	reg-spacing = <4>;
-};
diff --git a/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml b/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
new file mode 100644
index 000000000000..c859e0e959b9
--- /dev/null
+++ b/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ipmi/ipmi-smic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: IPMI device bindings
+
+description: IPMI device bindings
+
+maintainers:
+  - Corey Minyard <cminyard@mvista.com>
+
+properties:
+  compatible:
+    enum:
+      - ipmi-kcs
+      - ipmi-smic
+      - ipmi-bt
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description: Interface is polled if this property is omitted.
+    maxItems: 1
+
+  reg-size:
+    description: The access width of the register in bytes. Defaults to 1.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [1, 2, 4, 8]
+
+  reg-spacing:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: The number of bytes between register starts. Defaults to 1.
+
+  reg-shift:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      The amount of bits to shift the register content to the right to get
+      the data into bit zero.
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    smic@fff3a000 {
+        compatible = "ipmi-smic";
+        reg = <0xfff3a000 0x1000>;
+        interrupts = <0 24 4>;
+        reg-size = <4>;
+        reg-spacing = <4>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
