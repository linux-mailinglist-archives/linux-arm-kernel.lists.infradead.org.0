Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B261C08EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=r9mVJ1LYRhOcUJ0BGMFDPCHZlEkYHRyDja7p8CGpZis=; b=UemjxIDR7IFfRbGuhJoFX0f8MV
	+Mn1fkcIUXb5MkSFQWNVKACun9Tm6TKqeqyOc5pvH08W1bBupt+lHXmAbR51NAL05RoWykbcclK4y
	uGg6XcvaOvyJQOnk0blGjcFfKskfgFq8Es4N6BftuWTHzzAUeNf2SDA4MTPyB8Ivw4UB/2j+9ut+v
	dtFmDSCjLTDwvcGUfoaAT0+6e6eJ39bbfRHSGg4jftO+2yHKkEkL2lDFlLPoV6V0qGFhb8SJ5Zfx1
	rn8AtMuKZDwzBCOCk5LOjAcbfTzZQ/Ycc8tSlt3aHDHxj/son9S06smVIIaUGb3PHLfzqTzd3+k5l
	b9wxlzPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGUd-0005Xb-5V; Thu, 30 Apr 2020 21:13:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGSh-00041o-2h
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 21:11:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8EDB2106F;
 Thu, 30 Apr 2020 14:11:14 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 75CE93F68F;
 Thu, 30 Apr 2020 14:11:13 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v3 7/8] dt-bindings: ipmi: Convert IPMI-SMIC bindings to
 json-schema
Date: Thu, 30 Apr 2020 22:10:53 +0100
Message-Id: <20200430211054.30466-8-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430211054.30466-1-andre.przywara@arm.com>
References: <20200430211054.30466-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_141115_231135_7A8795A5 
X-CRM114-Status: GOOD (  15.04  )
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
Cc: Maxime Ripard <mripard@kernel.org>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Corey Minyard <minyard@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the generic IPMI controller bindings to DT schema format
using json-schema.

The device_type property is deprecated for most node per the DT spec,
but at least the Linux driver matches on it, so I keep it in.

The Linux driver parses for some additional and optional properties,
but there are no in-tree users. Let's allow extra properties to cover
any other users.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../devicetree/bindings/ipmi/ipmi-smic.txt    | 25 --------
 .../devicetree/bindings/ipmi/ipmi-smic.yaml   | 63 +++++++++++++++++++
 2 files changed, 63 insertions(+), 25 deletions(-)
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
index 000000000000..f0bb157e9417
--- /dev/null
+++ b/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
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
+  device_type:
+    items:
+      - const: "ipmi"
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
+    description: |
+      The amount of bits to shift the register content to the right to get
+      the data into bit zero.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - maximum: 56
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    smic@fff3a000 {
+        compatible = "ipmi-smic";
+        device_type = "ipmi";
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
