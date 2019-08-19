Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E73294CC7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EsHsx9nK4ieTqf23atmNp/BBzNRU2RL6ZIbtad4QO3k=; b=fGmGfL31kzwNtP
	AL1sAVSuVDXEAdKRdINwXeJU8STN/mvm7ZcnNsrXZtMZGBA1Ao7spjH4w/LvdKafpOVVCto34LZmK
	2Njn5gWFZrOefOMy8kSH8fU415i+Iwyh1qKWFjMycmdvtd9VfYPvo1PZdPia2NEz1RhTfHVdgtYPX
	E8UtDjV7ZkUNhjAJgDnVrPZU8qZMD0DUpcgEnx9Kpm1Ywu4Jmb7A4+EcgcvF4VI1r5/+qL29BjmIz
	OW1ZK80XJI/YKEDsgVOGRROs3WI/8cHvPdK9FltOkg5XThf3LXZOaoS8o4tM9z6rVrcSpOyipRbTB
	fhmwY1SUCbSdvc8fb8SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmN6-0001Xk-K6; Mon, 19 Aug 2019 18:27:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmMN-0001Bp-D7
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:26:29 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66F6022CF7;
 Mon, 19 Aug 2019 18:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566239187;
 bh=ADme5Wo3JeD5c8RZL82Aoo/RC8TvZRLkDiLpQHUrIZ0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y351sX1nqzokzUqSkoy5thHOF2QwhY4pA4hb0wnSLbuDx+BXZ3kUpoqexM3YgTcbK
 qDL7NpTJNF4HbQpHivU3RI7JNJhSDj1XEX3tdxtZ9IXi+8tIlCLIbuB4In3bHATic4
 HwVLBXcqhTgfgJ11oEFOJ+bL9PVd6UdEEN0MCNsc=
From: Maxime Ripard <mripard@kernel.org>
To: mchehab@kernel.org,
	sean@mess.org
Subject: [PATCH v2 2/2] dt-bindings: media: Convert Allwinner A10 IR to a
 schema
Date: Mon, 19 Aug 2019 20:26:19 +0200
Message-Id: <20190819182619.29065-2-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190819182619.29065-1-mripard@kernel.org>
References: <20190819182619.29065-1-mripard@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_112627_577621_5A66D3AB 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The older Allwinner SoCs have a IR receiver supported in Linux, with a
matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../media/allwinner,sun4i-a10-ir.yaml         | 80 +++++++++++++++++++
 .../devicetree/bindings/media/sunxi-ir.txt    | 35 --------
 2 files changed, 80 insertions(+), 35 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml
 delete mode 100644 Documentation/devicetree/bindings/media/sunxi-ir.txt

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml
new file mode 100644
index 000000000000..98c1bdde9a86
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/allwinner,sun4i-a10-ir.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Infrared Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+allOf:
+  - $ref: "rc.yaml#"
+
+properties:
+  compatible:
+    oneOf:
+      - const: allwinner,sun4i-a10-ir
+      - const: allwinner,sun5i-a13-ir
+      - items:
+          - const: allwinner,sun8i-a83t-ir
+          - const: allwinner,sun6i-a31-ir
+      - const: allwinner,sun6i-a31-ir
+      - items:
+          - const: allwinner,sun50i-a64-ir
+          - const: allwinner,sun6i-a31-ir
+      - items:
+          - const: allwinner,sun50i-h6-ir
+          - const: allwinner,sun6i-a31-ir
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Bus Clock
+      - description: Module Clock
+
+  clock-names:
+    items:
+      - const: apb
+      - const: ir
+
+  resets:
+    maxItems: 1
+
+  clock-frequency:
+    default: 8000000
+    description:
+      IR Receiver clock frequency, in Hertz.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+# FIXME: We should set it, but it would report all the generic
+# properties as additional properties.
+# additionalProperties: false
+
+examples:
+  - |
+      ir0: ir@1c21800 {
+          compatible = "allwinner,sun4i-a10-ir";
+          clocks = <&apb0_gates 6>, <&ir0_clk>;
+          clock-names = "apb", "ir";
+          clock-frequency = <3000000>;
+          resets = <&apb0_rst 1>;
+          interrupts = <0 5 1>;
+          reg = <0x01C21800 0x40>;
+          linux,rc-map-name = "rc-rc6-mce";
+      };
+
+...
diff --git a/Documentation/devicetree/bindings/media/sunxi-ir.txt b/Documentation/devicetree/bindings/media/sunxi-ir.txt
deleted file mode 100644
index 81eaf95fb764..000000000000
--- a/Documentation/devicetree/bindings/media/sunxi-ir.txt
+++ /dev/null
@@ -1,35 +0,0 @@
-Device-Tree bindings for SUNXI IR controller found in sunXi SoC family
-
-Required properties:
-- compatible	    :
-	"allwinner,sun4i-a10-ir"
-	"allwinner,sun5i-a13-ir"
-	"allwinner,sun6i-a31-ir"
-	"allwinner,sun50i-a64-ir", "allwinner,sun6i-a31-ir"
-	"allwinner,sun50i-h6-ir", "allwinner,sun6i-a31-ir"
-- clocks	    : list of clock specifiers, corresponding to
-		      entries in clock-names property;
-- clock-names	    : should contain "apb" and "ir" entries;
-- interrupts	    : should contain IR IRQ number;
-- reg		    : should contain IO map address for IR.
-
-Required properties since A31:
-- resets	    : phandle + reset specifier pair
-
-Optional properties:
-- linux,rc-map-name: see rc.txt file in the same directory.
-- clock-frequency  : IR Receiver clock frequency, in Hertz. Defaults to 8 MHz
-		     if missing.
-
-Example:
-
-ir0: ir@1c21800 {
-	compatible = "allwinner,sun4i-a10-ir";
-	clocks = <&apb0_gates 6>, <&ir0_clk>;
-	clock-names = "apb", "ir";
-	clock-frequency = <3000000>;
-	resets = <&apb0_rst 1>;
-	interrupts = <0 5 1>;
-	reg = <0x01C21800 0x40>;
-	linux,rc-map-name = "rc-rc6-mce";
-};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
