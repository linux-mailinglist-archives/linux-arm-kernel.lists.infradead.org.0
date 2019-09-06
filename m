Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1903ABBEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFkthwVglM3m2ShEkdgl2eDybjsLB/JCpuIOao6St48=; b=YLgELKicn+lNaF
	8SqMD/db4Nr6zfL0rEXYZgwjAbF5pTwZGhKEbL8Mn0NohtzYUIFAkDwaeAFt1CvY2nitQML2wcRNB
	RIZSor1uoqP23MNM4dH2iUHuWkYzSZMRlda0WCI004YIC4igCD9A3hmeV7e/8eBfL7+Io12SNSeUT
	V8r94CyuCT74O4XcT5CwUYfcrW8f8D0wG8jcKNhQBP5HcCVQCQh6w5z3TIukTtCNG2bzY1tC4CeUN
	HZYpeXtghpburfNlJFwY6KoPNM/Plzu5TBQbWeDf6sYoVanDngmiLokTEXagtcL/WyZlFdvdn4XbY
	rGhjLGR+6kPEl076U+gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Fuf-0000H7-Vq; Fri, 06 Sep 2019 15:12:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6FuU-0000GS-0v
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 15:12:27 +0000
Received: from localhost (unknown [194.251.198.105])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3CA95206BB;
 Fri,  6 Sep 2019 15:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567782745;
 bh=6GBxspgEsamlTCCJsfyJ2SfiGNAzXrdve0R0H91hsEU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KQA+pX5ZaCO86pfLNNXlSyts5HiNV0gdhmmNTMsFaLfMuVrL0E9Ev+83EmgpH1Bkc
 zJu+nCa43QGwO8bG/NGvyShYYWVY38WIC8jD7AFMXnYJF4y2fDkamyeHfTbAo7fpTC
 MvMZ/+ksTxzX6W6ThASeaY8b7+qk2SbBdpRYIUEo=
From: Maxime Ripard <mripard@kernel.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v3 2/2] ASoC: dt-bindings: Convert Allwinner A23 analog codec
 to a schema
Date: Fri,  6 Sep 2019 18:12:21 +0300
Message-Id: <20190906151221.3148-2-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190906151221.3148-1-mripard@kernel.org>
References: <20190906151221.3148-1-mripard@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_081226_111174_31B96393 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The Allwinner A23 SoC and later have an embedded audio codec that uses a
separate controller to drive its analog part, which is supported in Linux,
with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v2:
  - Use an enum instead of a oneOf for the compatibles

Changes from v1:
  - Fix subject prefix
---
 .../allwinner,sun8i-a23-codec-analog.yaml     | 38 +++++++++++++++++++
 .../bindings/sound/sun8i-codec-analog.txt     | 17 ---------
 2 files changed, 38 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
new file mode 100644
index 000000000000..85305b4c2729
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/allwinner,sun8i-a23-codec-analog.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A23 Analog Codec Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  compatible:
+    enum:
+      # FIXME: This is documented in the PRCM binding, but needs to be
+      # migrated here at some point
+      # - allwinner,sun8i-a23-codec-analog
+      - allwinner,sun8i-h3-codec-analog
+      - allwinner,sun8i-v3s-codec-analog
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    codec_analog: codec-analog@1f015c0 {
+      compatible = "allwinner,sun8i-h3-codec-analog";
+      reg = <0x01f015c0 0x4>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt b/Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
deleted file mode 100644
index 07356758bd91..000000000000
--- a/Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-* Allwinner Codec Analog Controls
-
-Required properties:
-- compatible: must be one of the following compatibles:
-		- "allwinner,sun8i-a23-codec-analog"
-		- "allwinner,sun8i-h3-codec-analog"
-		- "allwinner,sun8i-v3s-codec-analog"
-
-Required properties if not a sub-node of the PRCM node:
-- reg: must contain the registers location and length
-
-Example:
-prcm: prcm@1f01400 {
-	codec_analog: codec-analog {
-		compatible = "allwinner,sun8i-a23-codec-analog";
-	};
-};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
