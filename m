Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A23617076D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:15:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=98Jl59FSQ04yey2d2JWEmrlOlVvsCyRtFUzww13AinM=; b=VQPOWGmQJH1EvDoggzZE71V9P6
	SPzoBmA2tjXiAfS/a6EYHPRNecEtwxJhIk5CRFCTRdOWsAgdOZX8k0kUWrslV8PNmqqcR6rWsB+Qc
	D4TGg4iC4LgoOYUJwet/F+nDDBi7YQT75LI3eb1f68g2xTZHFvlrypISiQfuR5vWRdUx24OjdzOfp
	N5DTIU310Haowa4/Z93Sn0nh4EYKEpopWfbxxGQwrxN9qRtv6Et3fCwDjOxrPsH8736yY7feKRcjY
	OxfgcDwO0DEV+uqFueUEUVEQkMkh7td6+HAAOX7fMvoGPDxU4alCCi7l48WjGhPHsMT2gaEJtEAFu
	9/64HJdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71Cv-0008MA-MV; Wed, 26 Feb 2020 18:14:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j717k-00029h-RD
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:09:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B178C31B;
 Wed, 26 Feb 2020 10:09:32 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC0A63F881;
 Wed, 26 Feb 2020 10:09:30 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 11/13] dt-bindings: ipmi: Convert IPMI-SMIC bindings to
 json-schema
Date: Wed, 26 Feb 2020 18:08:59 +0000
Message-Id: <20200226180901.89940-12-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226180901.89940-1-andre.przywara@arm.com>
References: <20200226180901.89940-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_100932_984115_23B4C3F4 
X-CRM114-Status: GOOD (  14.05  )
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
 Catalin Marinas <catalin.marinas@arm.com>, Eric Auger <eric.auger@redhat.com>,
 soc@kernel.org, openipmi-developer@lists.sourceforge.net,
 Will Deacon <will@kernel.org>
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
