Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9896B1A96D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:39:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tvUGy38ap5zOJK7/EO1YipWktdPtfR3D6Hbv275jFhk=; b=Omd/IwK0s66lii
	Ew70d95be3eum9pIfPvjEhlkR1k6ek3RAA+5P3V9NRcu5P4ksTzRl8GM0yuxSy6msdUhXtHQRKvq6
	xkWqsRduimCDf5U2t4jeW5jOJu5dHIDV8vT9HUPT8+itMfm0otWOcIHDsVbr1Ga7OBO4QABe4aFAc
	TXCJ8b5aKlsSE201UVEtE9u4cXwZRLDuQnB0cknxealKrB3iJuuU+z/okzCv3nVasY9pwdhg6pqfS
	i3Wp17pLd88e4uiBLKOuxqtlcNsHjsAt1GOrGSuOm02FFzXNLuzOaebEZUqbZZzSF/93hz9VonbIF
	7So5aov32Ah054fUpQmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdZQ-000250-0N; Wed, 15 Apr 2020 08:38:56 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdWJ-0007si-3y
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:35:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1586939729;
 s=strato-dkim-0002; d=goldelico.com;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=gHzxZHsGJIjzLCfNxfA2uNhMWdRyM/UbwoNGCYKWho8=;
 b=qOovSAYfa59BUkGx9So48R/caD1qqKgunbczgfn+mM7UUU0T4FS/fUye+VD5aBMcaS
 BxKI+wwr+n0N2Gmmqkq5m2HcDNQu4Vk4tsauOW89SrsiMz+Od4vLAgojRqOR3X/PTyhf
 M8O3OX04FEUduMMkPQhy0tvbGGIo4N0Hy3+za/Ce+rA5aDnWCAFqXtY/4bLFSYvzjBVU
 WwkgJ84X7tLXj+0hPSG2B/A2rdLK2+X9Ft8pA0lwy6NeoDzceLVpBaYJmIljUMWHjos1
 3DxrXsc2qCiGS+K9AMTGSbrnu9QrsJVFNUH67cDrQDjnHZ2DaRb+ecayaAdNNheedarM
 fPcw==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1OAA2UNf2M7O2CKN9ej"
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 46.4.0 DYNA|AUTH)
 with ESMTPSA id 6028a2w3F8ZL0Ii
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Wed, 15 Apr 2020 10:35:21 +0200 (CEST)
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
Subject: [PATCH v6 01/12] dt-bindings: add img,
 pvrsgx.yaml for Imagination GPUs
Date: Wed, 15 Apr 2020 10:35:08 +0200
Message-Id: <06fb6569259bb9183d0a0d0fe70ec4f3033b8aab.1586939718.git.hns@goldelico.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1586939718.git.hns@goldelico.com>
References: <cover.1586939718.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_013543_790641_C7D3E5E9 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:3 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 openpvrsgx-devgroup@letux.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, kernel@pyra-handheld.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Imagination PVR/SGX GPU is part of several SoC from
multiple vendors, e.g. TI OMAP, Ingenic JZ4780, Intel Poulsbo,
Allwinner A83 and others.

With this binding, we describe how the SGX processor is
interfaced to the SoC (registers, interrupt etc.).

In most cases, Clock, Reset and power management is handled
by a parent node or elsewhere (e.g. code in the driver).

Tested by make dt_binding_check dtbs_check

Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
---
 .../devicetree/bindings/gpu/img,pvrsgx.yaml   | 122 ++++++++++++++++++
 1 file changed, 122 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml

diff --git a/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml b/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
new file mode 100644
index 000000000000..e3a4208dfab1
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
@@ -0,0 +1,122 @@
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
+  register area.
+
+properties:
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
+          - const: "ti,omap4470-sgx544-112
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
+required:
+  - compatible
+  - reg
+  - interrupts
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
