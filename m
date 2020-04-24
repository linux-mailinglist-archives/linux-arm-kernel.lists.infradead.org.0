Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8AA1B8106
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFgZuSKIKqXDFYxkJ+2fOyV1Xye2XIr23+eR9xJKV+o=; b=Creu5KWUtaO8JX
	ShMOBb0CSpso0fSHhX41A/T+sh9Xwxj4Kw35p8sRIGTZakiCKtk3f10TTeqwuf0YxnwAPSzD54yqy
	/df2MrAMQyQRsngENn0HW+8+vc6l5sTm30UB9eGvjexzXxDhfWa8IYHXdZ4J+uM+nkswaArwMPw/0
	+hMV2dsWKSuvS8wJvMx5QBcNoQkK6CFbe62+VkjLe70O37Y7VX8TQdFGTVhD0m9/JS8FrLPXzrZJD
	bsWwwW0OdNWFBNn98oXvQjRQ5D7q+JTEEYs8Smj7vc1SQwjwcv55AowOJdj57mpoPgttUqHWfC41/
	C8rJEsRwrGx+T2g7nFZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS55U-00009q-Fy; Fri, 24 Apr 2020 20:38:16 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS521-0003OS-Lx
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:34:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1587760467;
 s=strato-dkim-0002; d=goldelico.com;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=29yW4jl8Gijq7hbCacHTWUb9S7HTZuMHUBBgy2QivvI=;
 b=CPIdZdbhJhchyCh/JnJTzyS4ymrH/FJ23xazxp80In3J+Ch7oeXNkpzV1B0r7pn34c
 FGklJI5cx2WS0CIWvqrhN1ykuOJxXoAfLbdeEDsGHGUlqVmNZbSifrWdWqtlNInDYPv9
 lGr/KdJMVJIReNZgSiw4/WnM+6BNCQG3ftC2d0sGYvZN7tmWTNeroCC3wIv4vGvOXIqM
 o4Cx5gWPoMZfBex8V/1PPHuLhxqlsg1sKDfxI51T6BzTis9NwYfzbwoCYPqLwpMkTRdn
 WajcfoK7NPt+hMtBzZ1W0IiUSbnAwHJrIzTdjBb/U4zqcNk7LskazFfgB6okJeeI/Lck
 HyHg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1mfYzBGHXH6GK44R2FE"
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id R0acebw3OKYJEV9
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Fri, 24 Apr 2020 22:34:19 +0200 (CEST)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Paul Cercueil <paul@crapouillou.net>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paulburton@kernel.org>,
 James Hogan <jhogan@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: [PATCH v7 01/12] dt-bindings: add img,
 pvrsgx.yaml for Imagination GPUs
Date: Fri, 24 Apr 2020 22:34:04 +0200
Message-Id: <3a451e360fed84bc40287678b4d6be13821cfbc0.1587760454.git.hns@goldelico.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1587760454.git.hns@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_133442_216349_50FBF8FE 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:2 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, letux-kernel@openphoenux.org,
 Philipp Rossak <embed3d@gmail.com>, "H. Nikolaus Schaller" <hns@goldelico.com>,
 Jonathan Bakker <xc-racer2@live.ca>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 kernel@pyra-handheld.com, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Imagination PVR/SGX GPU is part of several SoC from
multiple vendors, e.g. TI OMAP, Ingenic JZ4780, Intel Poulsbo,
Allwinner A83 and others.

With this binding, we describe how the SGX processor is
interfaced to the SoC (registers and interrupt).

The interface also consists of clocks, reset, power but
information from data sheets is vague and some SoC integrators
(TI) deciced to use a PRCM wrapper (ti,sysc) which does
all clock, reset and power-management through registers
outside of the sgx register block.

Therefore all these properties are optional.

Tested by make dt_binding_check

Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
---
 .../devicetree/bindings/gpu/img,pvrsgx.yaml   | 150 ++++++++++++++++++
 1 file changed, 150 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml

diff --git a/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml b/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
new file mode 100644
index 000000000000..33a9c4c6e784
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
@@ -0,0 +1,150 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpu/img,pvrsgx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Imagination PVR/SGX GPU
+
+maintainers:
+  - H. Nikolaus Schaller <hns@goldelico.com>
+
+description: |+
+  This binding describes the Imagination SGX5 series of 3D accelerators which
+  are found in several different SoC like TI OMAP, Sitara, Ingenic JZ4780,
+  Allwinner A83, and Intel Poulsbo and CedarView and more.
+
+  For an extensive list see: https://en.wikipedia.org/wiki/PowerVR#Implementations
+
+  The SGX node is usually a child node of some DT node belonging to the SoC
+  which handles clocks, reset and general address space mapping of the SGX
+  register area. If not, an optional clock can be specified here.
+
+properties:
+  $nodename:
+    pattern: '^gpu@[a-f0-9]+$'
+  compatible:
+    oneOf:
+      - description: SGX530-121 based SoC
+        items:
+          - enum:
+            - ti,omap3-sgx530-121 # BeagleBoard A/B/C, OpenPandora 600MHz and similar
+          - const: img,sgx530-121
+          - const: img,sgx530
+
+      - description: SGX530-125 based SoC
+        items:
+          - enum:
+            - ti,am3352-sgx530-125 # BeagleBone Black
+            - ti,am3517-sgx530-125
+            - ti,am4-sgx530-125
+            - ti,omap3-sgx530-125 # BeagleBoard XM, GTA04, OpenPandora 1GHz and similar
+            - ti,ti81xx-sgx530-125
+          - const: ti,omap3-sgx530-125
+          - const: img,sgx530-125
+          - const: img,sgx530
+
+      - description: SGX535-116 based SoC
+        items:
+          - const: intel,poulsbo-gma500-sgx535 # Atom Z5xx
+          - const: img,sgx535-116
+          - const: img,sgx535
+
+      - description: SGX540-116 based SoC
+        items:
+          - const: intel,medfield-gma-sgx540 # Atom Z24xx
+          - const: img,sgx540-116
+          - const: img,sgx540
+
+      - description: SGX540-120 based SoC
+        items:
+          - enum:
+            - samsung,s5pv210-sgx540-120
+            - ti,omap4-sgx540-120 # Pandaboard, Pandaboard ES and similar
+          - const: img,sgx540-120
+          - const: img,sgx540
+
+      - description: SGX540-130 based SoC
+        items:
+          - enum:
+            - ingenic,jz4780-sgx540-130 # CI20
+          - const: img,sgx540-130
+          - const: img,sgx540
+
+      - description: SGX544-112 based SoC
+        items:
+          - const: ti,omap4470-sgx544-112
+          - const: img,sgx544-112
+          - const: img,sgx544
+
+      - description: SGX544-115 based SoC
+        items:
+          - enum:
+            - allwinner,sun8i-a31-sgx544-115
+            - allwinner,sun8i-a31s-sgx544-115
+            - allwinner,sun8i-a83t-sgx544-115 # Banana-Pi-M3 (Allwinner A83T) and similar
+          - const: img,sgx544-115
+          - const: img,sgx544
+
+      - description: SGX544-116 based SoC
+        items:
+          - enum:
+            - ti,dra7-sgx544-116 # DRA7
+            - ti,omap5-sgx544-116 # OMAP5 UEVM, Pyra Handheld and similar
+          - const: img,sgx544-116
+          - const: img,sgx544
+
+      - description: SGX545 based SoC
+        items:
+          - const: intel,cedarview-gma3600-sgx545 # Atom N2600, D2500
+          - const: img,sgx545-116
+          - const: img,sgx545
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    maxItems: 1
+    items:
+      - const: sgx
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    maxItems: 4
+    items:
+      - const: core
+      - const: sys
+      - const: mem
+      - const: hyd
+
+  sgx-supply: true
+
+  power-domains:
+    maxItems: 1
+
+  resets:
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
+  - |+
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    gpu: gpu@fe00 {
+      compatible = "ti,omap5-sgx544-116", "img,sgx544-116", "img,sgx544";
+      reg = <0xfe00 0x200>;
+      interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
+    };
+
+...
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
