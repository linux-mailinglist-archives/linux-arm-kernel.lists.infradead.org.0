Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19281AC5CD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 11:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6OifxdNIq/jDK+kigHb0vIJsYjX5QBvArc1pgv/6u3g=; b=DgJgr0shWGDzIz
	5WwJsC7dlXpD/iqnz0DBv+jlxj0Tc+HO+jKwMP1Wr1cBzF/43/hvvHm58k3gnZG5hKDvGNuVh/w+d
	opFxeTrc9zw4pAwM+z49m+Ahc1UaVNFVotO/gF6kHYY3U9BrR0yggXi4o780/8LgNvCt8FSbsXBVm
	CLzNS8soOpdJCcfDHfTOWDj0AJk5iBzv4mzOsXhUsblhqJicXVnqdQyT/TGesXTT2ZrFfT77httQb
	XkcBw4A0Jy78Gg2vLTVEVAVgVfNNkuQvn7D/aIjFF0Glico72MDz8p7vDAm7xG58NYLZZW6aHFLzy
	npsZ3TQBNDNyTsP1LDsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Wu9-0002lr-Qw; Sat, 07 Sep 2019 09:21:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6WtN-0002kc-NR
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 09:20:30 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 611E621871;
 Sat,  7 Sep 2019 09:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567848024;
 bh=YW3cSp+6yaPlzX+R34NGx4VQpIygRBkmXy1O+2BFvhA=;
 h=From:To:Subject:Date:From;
 b=POZiDSpXI7YV72+/U/6LtF4K3W/T9FkK8K54DJ88Shvk2AtYu+l7PLeqS1hE8lnCR
 g75LZzcdJ09m2BIoMitqPtX0Pk1z2Qs56q5UCZAaOJRP5uXX+lddzdnHTYxJg/d5+A
 4H9fFHbsnqfF2dOCv+kWFlf1CDnikg2Hz5fFu494=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Sebastian Reichel <sre@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 =?UTF-8?q?Pawe=C5=82=20Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rtc@vger.kernel.org
Subject: [PATCH v2 01/11] dt-bindings: power: syscon-reboot: Convert bindings
 to json-schema
Date: Sat,  7 Sep 2019 11:19:57 +0200
Message-Id: <20190907092007.9946-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_022026_205169_8A724033 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the Syscon reboot bindings to DT schema format using
json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Remove unneeded maxItems from uint32 fields,
2. Simplify if-else-then.
---
 .../bindings/power/reset/syscon-reboot.txt    | 30 ----------
 .../bindings/power/reset/syscon-reboot.yaml   | 60 +++++++++++++++++++
 2 files changed, 60 insertions(+), 30 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/power/reset/syscon-reboot.txt
 create mode 100644 Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml

diff --git a/Documentation/devicetree/bindings/power/reset/syscon-reboot.txt b/Documentation/devicetree/bindings/power/reset/syscon-reboot.txt
deleted file mode 100644
index e23dea8344f8..000000000000
--- a/Documentation/devicetree/bindings/power/reset/syscon-reboot.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-Generic SYSCON mapped register reset driver
-
-This is a generic reset driver using syscon to map the reset register.
-The reset is generally performed with a write to the reset register
-defined by the register map pointed by syscon reference plus the offset
-with the value and mask defined in the reboot node.
-
-Required properties:
-- compatible: should contain "syscon-reboot"
-- regmap: this is phandle to the register map node
-- offset: offset in the register map for the reboot register (in bytes)
-- value: the reset value written to the reboot register (32 bit access)
-
-Optional properties:
-- mask: update only the register bits defined by the mask (32 bit)
-
-Legacy usage:
-If a node doesn't contain a value property but contains a mask property, the
-mask property is used as the value.
-
-Default will be little endian mode, 32 bit access only.
-
-Examples:
-
-	reboot {
-	   compatible = "syscon-reboot";
-	   regmap = <&regmapnode>;
-	   offset = <0x0>;
-	   mask = <0x1>;
-	};
diff --git a/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml b/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml
new file mode 100644
index 000000000000..a7920f5eef79
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/reset/syscon-reboot.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic SYSCON mapped register reset driver
+
+maintainers:
+  - Sebastian Reichel <sre@kernel.org>
+
+description: |+
+  This is a generic reset driver using syscon to map the reset register.
+  The reset is generally performed with a write to the reset register
+  defined by the register map pointed by syscon reference plus the offset
+  with the value and mask defined in the reboot node.
+  Default will be little endian mode, 32 bit access only.
+
+properties:
+  compatible:
+    const: syscon-reboot
+
+  mask:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Update only the register bits defined by the mask (32 bit).
+
+  offset:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Offset in the register map for the reboot register (in bytes).
+
+  regmap:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the register map node.
+
+  value:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: The reset value written to the reboot register (32 bit access).
+
+required:
+  - compatible
+  - regmap
+  - offset
+
+allOf:
+  - if:
+      not:
+        required:
+          - mask
+    then:
+      required:
+        - value
+
+examples:
+  - |
+    reboot {
+      compatible = "syscon-reboot";
+      regmap = <&regmapnode>;
+      offset = <0x0>;
+      mask = <0x1>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
