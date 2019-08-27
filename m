Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A19DB9EAEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 16:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzusz32+uwWL4lzixWJuERwD5JFdHSupOm4dJA1CEzM=; b=tg0npzeWcjsaf3
	19OwTW+WX4VOrdYsvPIHPq/ilztpFeNuwKwacgKp5SPK5aY/tzWjPZ62hGBvLs3ux4q5BH63/xAaT
	bHS59T459wNF38w9Mll7nNRWkvAuEtM7sM8umbgcOd537/MohxsdoCnr5tSRyfLuM5of2sMScxi7+
	dpKr2xGhHkZ9pEALZTh7eC1M3MkvSgmOUQpjPa34RA98jZLvdoumZI3wS+nnQkhJdUwUofx6ltzug
	y52JRpwXcEtcq9FP7SfJ0rW/9xMDJYznKa4fNZ6BCM0jPwpuhiz4aD37PUg+6LLzHK/GBeCNgsFbk
	zaHcFqZaaDHDAYf7qw6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2cR3-00064m-Vy; Tue, 27 Aug 2019 14:27:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cQ5-0005NZ-Us
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 14:26:03 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C0092189D;
 Tue, 27 Aug 2019 14:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566915961;
 bh=6kDDKXGQGcLuzzUQBEmfMLlipuZZde3zVKewWDp2+VA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uvGVJw72AC9KVhVJ6x7rkODTFdxTU+/AOuxgpRkO0E2UZjTp0evK7XYCPs5k+8qwg
 CdwE64QrFKCwJPVwp/FRBq/bUctxiLVBlSRhhi6CFH7zNqXIuAm9pFkNORsrxm0nsE
 0adsFcVB8mgljXxaC2DnkbhuhvG/CSJhVN7zCKKw=
From: Maxime Ripard <mripard@kernel.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 5/5] dt-bindings: sound: Convert Allwinner A64 analog codec to
 a schema
Date: Tue, 27 Aug 2019 16:25:47 +0200
Message-Id: <20190827142547.14577-5-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190827142547.14577-1-mripard@kernel.org>
References: <20190827142547.14577-1-mripard@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_072602_170975_FDE17626 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
