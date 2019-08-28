Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF96DA0244
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKHigFVXRx0qkDYx1ud7FoVgfcn4dnBzNHnetkNppII=; b=U6+b7Mdtq6dCot
	0fWolrGnNZYgqD85T3ymjnanMoRB0KOA32ZTVd6ADa5512Eovqt67qZeNvaLdLXQwFICWU+TMgf/i
	wDuELGR4dNzNzsw/iJKRMo7d1o74lCO5mDLKSeOEZVn7cA7JxDRQCBfdHe8UEUtdCfZ4+OsDLzcbt
	NlYjhdLKDJp94KSgLayhu2GoGd+1Xxabn4O1kJmLYr68HPZcyStlsMBgDnZJlufKHAY2RlVE7tX+h
	9VmmOfHht/hRWzo17zAlKGgyr4/FUY80DQGWqQvZ+sTAWdFAyM/QkW19LNYLkk0UBEA/iKi3VRZ8y
	Ka/oVMTBuzJ6NxjhOw1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xRv-00065h-29; Wed, 28 Aug 2019 12:53:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xQz-0005Vb-Gs
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 12:52:23 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B1A9222CF8;
 Wed, 28 Aug 2019 12:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566996741;
 bh=zQw8LzDmwpIGMXLOyWCtXHZtnoi68tcriooxow7vOPc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cz8l3NiSK4N9HDbC4FjA7phW1DNisC5pt1PSTy9OX+/Fef4OdeDiSUm3xC+hYzeu6
 6sR+1yaFAuKODKNnB6b9ZTF4vhsWj6I6Yb4TjbL7eogI29suNOKhqn5pZ3GFHQi0tb
 9gbKBAhT87orJ0VX6ecinsgR9HN0LgcoiPNtdK8Y=
From: Maxime Ripard <mripard@kernel.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v2 5/5] ASoC: dt-bindings: Convert Allwinner A64 analog codec
 to a schema
Date: Wed, 28 Aug 2019 14:52:09 +0200
Message-Id: <20190828125209.28173-5-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190828125209.28173-1-mripard@kernel.org>
References: <20190828125209.28173-1-mripard@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_055221_682816_3D680365 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The Allwinner A64 SoC has an embedded audio codec that uses a separate
controller to drive its analog part, which is supported in Linux, with a
matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - Fix subject prefix
---
 .../allwinner,sun50i-a64-codec-analog.yaml    | 39 +++++++++++++++++++
 .../bindings/sound/sun50i-codec-analog.txt    | 14 -------
 2 files changed, 39 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun50i-a64-codec-analog.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/sun50i-codec-analog.txt

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun50i-a64-codec-analog.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun50i-a64-codec-analog.yaml
new file mode 100644
index 000000000000..f290eb72a878
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun50i-a64-codec-analog.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/allwinner,sun50i-a64-codec-analog.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A64 Analog Codec Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  compatible:
+    const: allwinner,sun50i-a64-codec-analog
+
+  reg:
+    maxItems: 1
+
+  cpvdd-supply:
+    description:
+      Regulator for the headphone amplifier
+
+required:
+  - compatible
+  - reg
+  - cpvdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    codec_analog: codec-analog@1f015c0 {
+      compatible = "allwinner,sun50i-a64-codec-analog";
+      reg = <0x01f015c0 0x4>;
+      cpvdd-supply = <&reg_eldo1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/sound/sun50i-codec-analog.txt b/Documentation/devicetree/bindings/sound/sun50i-codec-analog.txt
deleted file mode 100644
index 056a098495cc..000000000000
--- a/Documentation/devicetree/bindings/sound/sun50i-codec-analog.txt
+++ /dev/null
@@ -1,14 +0,0 @@
-* Allwinner A64 Codec Analog Controls
-
-Required properties:
-- compatible: must be one of the following compatibles:
-		- "allwinner,sun50i-a64-codec-analog"
-- reg: must contain the registers location and length
-- cpvdd-supply: Regulator supply for the headphone amplifier
-
-Example:
-	codec_analog: codec-analog@1f015c0 {
-		compatible = "allwinner,sun50i-a64-codec-analog";
-		reg = <0x01f015c0 0x4>;
-		cpvdd-supply = <&reg_eldo1>;
-	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
