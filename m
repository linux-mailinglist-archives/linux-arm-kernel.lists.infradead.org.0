Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C53EAC5CE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 11:21:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmxjzm4NHLvqJyP38OQYFu7ANp/GUhAkHrzxcDoSyp8=; b=p/6Ei7ohLnKweu
	U5B118MHtAl85l8Fq9bduC+zyh+ppZOubOQTt4q9RzarYmx5fOS5fUsIL8Bi/sC+hjjaQP4VWg/Hp
	4MYBbf0ecR8K6wfKRkQADEk2OwTJOfETYwl/M2kLJHT3GDEsZIv0/U2hmAMy8/YsyxweUkl8qv5Ve
	vUF8lhONPRIw3VVSbn56+TcdHPSyMwzdWHEE775h9nsy7nHp9TH/4sIZqJmrGcHd87DnHEL004ovp
	g1FZwh24cj0LcFojOeWfJwaMUcRNtecVtxP29QKAmh2SvuNkokzE10Nohcp6/EdbaAnKJ1MmHQ3gY
	Q8+r+cWgP3jWNo/vRFxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Wuj-00036H-7N; Sat, 07 Sep 2019 09:21:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6WtS-0002l9-39
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 09:20:32 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C39321907;
 Sat,  7 Sep 2019 09:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567848029;
 bh=kNGAeMnxvdXlA5z3Dc2JoX9K2D1dYgnE5dY/Pa4e/rU=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=RlXjtBMtEIK7dgmUEEbVbHPMJxgMv1gIygNPsQYOqbZqaGfPssGUrAa9QjlDviHOF
 iMRoC4mMevtJGnxRtl33iH5GH3ALBZsHNLCVBnhqa8/oKQr/OcBvoAvsPyLLJacH0n
 DC2y9AjIo/A6nbZIEPodP55H6rN++sLeHbm57s5Y=
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
Subject: [PATCH v2 02/11] dt-bindings: power: syscon-poweroff: Convert
 bindings to json-schema
Date: Sat,  7 Sep 2019 11:19:58 +0200
Message-Id: <20190907092007.9946-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190907092007.9946-1-krzk@kernel.org>
References: <20190907092007.9946-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_022030_394508_54328D41 
X-CRM114-Status: GOOD (  16.20  )
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

Convert the Syscon poweroff bindings to DT schema format using
json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Remove unneeded maxItems from uint32 fields,
2. Simplify if-else-then.
---
 .../bindings/power/reset/syscon-poweroff.txt  | 30 ----------
 .../bindings/power/reset/syscon-poweroff.yaml | 60 +++++++++++++++++++
 2 files changed, 60 insertions(+), 30 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/power/reset/syscon-poweroff.txt
 create mode 100644 Documentation/devicetree/bindings/power/reset/syscon-poweroff.yaml

diff --git a/Documentation/devicetree/bindings/power/reset/syscon-poweroff.txt b/Documentation/devicetree/bindings/power/reset/syscon-poweroff.txt
deleted file mode 100644
index 022ed1f3bc80..000000000000
--- a/Documentation/devicetree/bindings/power/reset/syscon-poweroff.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-Generic SYSCON mapped register poweroff driver
-
-This is a generic poweroff driver using syscon to map the poweroff register.
-The poweroff is generally performed with a write to the poweroff register
-defined by the register map pointed by syscon reference plus the offset
-with the value and mask defined in the poweroff node.
-
-Required properties:
-- compatible: should contain "syscon-poweroff"
-- regmap: this is phandle to the register map node
-- offset: offset in the register map for the poweroff register (in bytes)
-- value: the poweroff value written to the poweroff register (32 bit access)
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
-	poweroff {
-	   compatible = "syscon-poweroff";
-	   regmap = <&regmapnode>;
-	   offset = <0x0>;
-	   mask = <0x7a>;
-	};
diff --git a/Documentation/devicetree/bindings/power/reset/syscon-poweroff.yaml b/Documentation/devicetree/bindings/power/reset/syscon-poweroff.yaml
new file mode 100644
index 000000000000..fb812937b534
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/syscon-poweroff.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/reset/syscon-poweroff.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic SYSCON mapped register poweroff driver
+
+maintainers:
+  - Sebastian Reichel <sre@kernel.org>
+
+description: |+
+  This is a generic poweroff driver using syscon to map the poweroff register.
+  The poweroff is generally performed with a write to the poweroff register
+  defined by the register map pointed by syscon reference plus the offset
+  with the value and mask defined in the poweroff node.
+  Default will be little endian mode, 32 bit access only.
+
+properties:
+  compatible:
+    const: syscon-poweroff
+
+  mask:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Update only the register bits defined by the mask (32 bit).
+
+  offset:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Offset in the register map for the poweroff register (in bytes).
+
+  regmap:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the register map node.
+
+  value:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: The poweroff value written to the poweroff register (32 bit access).
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
+    poweroff {
+      compatible = "syscon-poweroff";
+      regmap = <&regmapnode>;
+      offset = <0x0>;
+      mask = <0x7a>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
