Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7D6103869
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 12:15:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6z3wkn9WP7HUPOF9Guvi6gPkKFTH55pi4/xFGvLHjQ=; b=Pi/pTrof1MTVM1
	z5Re7EWqnW7tiyAoSJB633gNC+r7QJH42E6k1kVHrCzg3Imrs/tKmpLRf7/ab7EBJOO1Q5gPIGWa4
	Ru6EJQb7oASYUc6zWPbScrWVhBcCZIvt99NXiUgz21VkUmTKI6rAmArvkor37lf4sT3ZkXuzVdW2d
	v1B4qUIfsUJCLiDfI4+9rodATZLxE6R9BHQJu0zBjZMGOgj5vXhIhDnpSI12alCy98bBZWyjOFx9B
	bZBoL+IvdrZTILz6oyHRx4dwVoOWvYNmyXGulLCuWMyciVArh/SEcm43V/yzUAasCIlL11C/LVPh/
	0RiRxdYqPlBZHrSJZX2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXNxS-0000Nz-1n; Wed, 20 Nov 2019 11:15:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXNwT-0006oz-Bf
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 11:14:41 +0000
Received: by mail-wm1-x341.google.com with SMTP id q70so6539551wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 03:14:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7OQW2DHYgmBIlXG6zmK9XIg6mefmFvu2tJV+rZvlPNo=;
 b=TwqwRr+zepj15txJ0fs0OG/rGXM125OJhoTlBAUsZcKjdlA//X5OCOGSiEn2a3tOYg
 P53qU9y+dIbTQPLV2Ap0RT8L32wV+8BEfV6W6qOAS5rp2TtWCh/IaUK/xSvwwlACBGar
 5MPqyxE+fvHUufnpBOILhvWTphexPXwJloG/Ap9UrAo1mQWE3tzsscqzAN6F67eY8lsl
 WnbsJxx3QEkjFrWEaBRF0ir9+upwfyzX5cpZhIDZHg6bMHz5/FwtzrQezgxG9kEXXfNf
 qZ6At8e0wTQPEFDiIgDL242/fEW6t58C8QAyfy6gvLs2apd3kR7/AfTwZtIPzm/T/Aco
 y0GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7OQW2DHYgmBIlXG6zmK9XIg6mefmFvu2tJV+rZvlPNo=;
 b=pE6/2meFw6U2evjmAx4HnJqniJ4RCAUbX45iQlMOsP8HToH3ki69ctYH1oauoQBEd+
 eQnQc5Q5qW0ulBsizOdABUsH58aUSRW/a/sxEtSBiARnTMFSIAc7DLSSF7aFY5rsqp+H
 ek9ZkHEw3+eVNUPWqZJAzgsPsxUR/lon2ouBxmvV0iXcx1y8WwNsqyYv/UNrB+ZmOfiX
 tBoUUhlAlMTjMUTvDiRaC51b9aSM++kNxzwZarHgRLz6AxlY++5e5pYboyqNtH5cqotW
 FPtkZ1b2iVCpBt8yiwUxs0rcx+Ur49vMKKw7kgM9ON23BDp5OZEuXYpD6umGrGYR4qxN
 0l3A==
X-Gm-Message-State: APjAAAV4J1GvSfPIuhwxlGzK3fRurmBrfWBQoi2xpDfSHxBkn/wWu/kB
 opFxHqLW5zjMdFgD1u05tf66cA==
X-Google-Smtp-Source: APXvYqwFDyPMhX8v9E0rkiIozBRcvsgT5k1HZL0RhzlHO09Ao7gy4hXMq6JF8MlgV+FBDmeJxrHonA==
X-Received: by 2002:a05:600c:210b:: with SMTP id
 u11mr2546194wml.170.1574248475131; 
 Wed, 20 Nov 2019 03:14:35 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id u1sm6061748wmc.3.2019.11.20.03.14.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 03:14:34 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mjourdan@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: media: amlogic,vdec: convert to yaml
Date: Wed, 20 Nov 2019 12:14:27 +0100
Message-Id: <20191120111430.29552-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191120111430.29552-1-narmstrong@baylibre.com>
References: <20191120111430.29552-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_031437_397027_BA916025 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic Video Controller over to YAML schemas.

This yaml bindings will then be extended to support new SoCs.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/media/amlogic,gx-vdec.yaml       | 107 ++++++++++++++++++
 .../bindings/media/amlogic,vdec.txt           |  72 ------------
 2 files changed, 107 insertions(+), 72 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
 delete mode 100644 Documentation/devicetree/bindings/media/amlogic,vdec.txt

diff --git a/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml b/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
new file mode 100644
index 000000000000..878944867d6e
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
@@ -0,0 +1,107 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/media/amlogic,gx-vdec.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Video Decoder
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+  - Maxime Jourdan <mjourdan@baylibre.com>
+
+description: |
+  The video decoding IP lies within the DOS memory region,
+  except for the hardware bitstream parser that makes use of an undocumented
+  region.
+
+  It makes use of the following blocks:
+  - ESPARSER is a bitstream parser that outputs to a VIFIFO. Further VDEC blocks
+    then feed from this VIFIFO.
+  - VDEC_1 can decode MPEG-1, MPEG-2, MPEG-4 part 2, MJPEG, H.263, H.264, VC-1.
+  - VDEC_HEVC can decode HEVC and VP9.
+
+  Both VDEC_1 and VDEC_HEVC share the "vdec" IRQ and as such cannot run
+  concurrently.
+
+properties:
+  compatible:
+    items:
+      - enum:
+        - amlogic,gxbb-vdec # GXBB (S905)
+        - amlogic,gxl-vdec # GXL (S905X, S905D)
+        - amlogic,gxm-vdec # GXM (S912)
+      - const: amlogic,gx-vdec
+
+  interrupts:
+    minItems: 2
+
+  interrupt-names:
+    items:
+      - const: vdec
+      - const: esparser
+
+  reg:
+    minItems: 2
+
+  reg-names:
+    items:
+      - const: dos
+      - const: esparser
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: esparser
+
+  clocks:
+    minItems: 4
+
+  clock-names:
+    items:
+      - const: dos_parser
+      - const: dos
+      - const: vdec_1
+      - const: vdec_hevc
+
+  amlogic,ao-sysctrl:
+    description: should point to the AOBUS sysctrl node
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/phandle
+
+  amlogic,canvas:
+    description: should point to a canvas provider node
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/phandle
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - amlogic,ao-sysctrl
+  - amlogic,canvas
+
+examples:
+  - |
+    vdec: video-decoder@c8820000 {
+          compatible = "amlogic,gxl-vdec", "amlogic,gx-vdec";
+          reg = <0xc8820000 0x10000>, <0xc110a580 0xe4>;
+          reg-names = "dos", "esparser";
+          interrupts = <44>, <32>;
+          interrupt-names = "vdec", "esparser";
+          clocks = <&clk_dos_parser> ,<&clk_dos>, <&clk_vdec_1>, <&clk_vdec_hevc>;
+          clock-names = "dos_parser", "dos", "vdec_1", "vdec_hevc";
+          resets = <&reset_parser>;
+          reset-names = "esparser";
+          amlogic,ao-sysctrl = <&sysctrl_AO>;
+          amlogic,canvas = <&canvas>;
+    };
diff --git a/Documentation/devicetree/bindings/media/amlogic,vdec.txt b/Documentation/devicetree/bindings/media/amlogic,vdec.txt
deleted file mode 100644
index 9b6aace86ca7..000000000000
--- a/Documentation/devicetree/bindings/media/amlogic,vdec.txt
+++ /dev/null
@@ -1,72 +0,0 @@
-Amlogic Video Decoder
-================================
-
-The video decoding IP lies within the DOS memory region,
-except for the hardware bitstream parser that makes use of an undocumented
-region.
-
-It makes use of the following blocks:
-
-- ESPARSER is a bitstream parser that outputs to a VIFIFO. Further VDEC blocks
-then feed from this VIFIFO.
-- VDEC_1 can decode MPEG-1, MPEG-2, MPEG-4 part 2, MJPEG, H.263, H.264, VC-1.
-- VDEC_HEVC can decode HEVC and VP9.
-
-Both VDEC_1 and VDEC_HEVC share the "vdec" IRQ and as such cannot run
-concurrently.
-
-Device Tree Bindings:
----------------------
-
-VDEC: Video Decoder
---------------------------
-
-Required properties:
-- compatible: value should be different for each SoC family as :
-	- GXBB (S905) : "amlogic,gxbb-vdec"
-	- GXL (S905X, S905D) : "amlogic,gxl-vdec"
-	- GXM (S912) : "amlogic,gxm-vdec"
-	followed by the common "amlogic,gx-vdec"
-- reg: base address and size of he following memory-mapped regions :
-	- dos
-	- esparser
-- reg-names: should contain the names of the previous memory regions
-- interrupts: should contain the following IRQs:
-	- vdec
-	- esparser
-- interrupt-names: should contain the names of the previous interrupts
-- amlogic,ao-sysctrl: should point to the AOBUS sysctrl node
-- amlogic,canvas: should point to a canvas provider node
-- clocks: should contain the following clocks :
-	- dos_parser
-	- dos
-	- vdec_1
-	- vdec_hevc
-- clock-names: should contain the names of the previous clocks
-- resets: should contain the parser reset
-- reset-names: should be "esparser"
-
-Example:
-
-vdec: video-codec@c8820000 {
-	compatible = "amlogic,gxbb-vdec", "amlogic,gx-vdec";
-	reg = <0x0 0xc8820000 0x0 0x10000>,
-	      <0x0 0xc110a580 0x0 0xe4>;
-	reg-names = "dos", "esparser";
-
-	interrupts = <GIC_SPI 44 IRQ_TYPE_EDGE_RISING>,
-		     <GIC_SPI 32 IRQ_TYPE_EDGE_RISING>;
-	interrupt-names = "vdec", "esparser";
-
-	amlogic,ao-sysctrl = <&sysctrl_AO>;
-	amlogic,canvas = <&canvas>;
-
-	clocks = <&clkc CLKID_DOS_PARSER>,
-		 <&clkc CLKID_DOS>,
-		 <&clkc CLKID_VDEC_1>,
-		 <&clkc CLKID_VDEC_HEVC>;
-	clock-names = "dos_parser", "dos", "vdec_1", "vdec_hevc";
-
-	resets = <&reset RESET_PARSER>;
-	reset-names = "esparser";
-};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
