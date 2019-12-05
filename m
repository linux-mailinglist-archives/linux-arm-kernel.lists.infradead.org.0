Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC401143B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 16:35:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Banm7Cq8ghqEn0njc8sn/vF3qK0XN7rdwXMc2W5Cr0Q=; b=enevFQCzdDTCN5
	DOqs4gvc6W48CGIg63msaXPJL7KVI/8sEqwO+FUBKFOUk34AUXbA8skVIocRFjNxsgUGFbfzZkIWD
	1gFWT0AUuwTKxSEQ3DyX8Digr0qD/KXVWKDV1r025EynqDjtVid5ngwN/vU2j/iD+Tvvi0KhTw+My
	JQ/29NlwtylxBdV3WnzcwNzsv6sNVB1sNku5CjT7/HWLq+nmQa8Npq9Vqa713nyIXNPmwKFEy41WJ
	cif2mm+ixCSqTbBMJtfnyaQI9yxTdS5yTxtnE06d/AhcCHeI6PT/ZBcFYWK0NISX6FebtimSHfCFl
	zUYRYeQV8FAplfDTYulg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ict9p-00040J-KV; Thu, 05 Dec 2019 15:35:09 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ict8y-0003So-7Y
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 15:34:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id c20so2704624wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 07:34:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9UAzxsWf4W83oyvFQkH2hZ4vYVx6AktY/uiCE2SmLc4=;
 b=kK5tYBPengXlEp3cXfE31aL8ioJ/Jeb3OtQZRhtxXwubJE9Nd2KtnBcbF/Zk2nmSgN
 nCFQhFu+ptx1ASM6Tncq2RZ0Wf7Li76CdM3/4Aw1dQNwP3w/XBai54MKJfKTN04mor1y
 BoUpLTZFh/stv9NxxbEVM8zVadVW4sM1hMQ4JytGPWU6L1blZFORKQtY+ghZzFH/DzJd
 EDHZjbwYYiH/QSuFJyZky3Sc4YcMTPqR7a6hmUk1tY3jiIm1e0zerfmNPGhD4qAUtbtG
 RxPMxZEIUm/rkkYxZc1eESPgRziIPE3/BuKYCDROguRrpEd/o5+/ZCqqXp8dsFEtaGz+
 Cv0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9UAzxsWf4W83oyvFQkH2hZ4vYVx6AktY/uiCE2SmLc4=;
 b=tzUFmdJnHvr1F/IBGUaHO0jLexgoER6/eOpq/jWwm93NnvvVbDcfrxPynowpHXXdG1
 XSYpOmt1N6nSJeNRobULzc9vv3W4Wx1VnN22KymaWagtnVE+T2+b3o8qZEDHWc7/Dx7/
 PBDmsTJOFQPhGDDjNbmfHU2uJudZxxpbAVPIT7GK/pAPUydyfYhLtRzfsqC/zDNVqLjJ
 L9opADatpfWExadnq59lmM7DT+sQuBwBCQ21SPV0T/qzTGB/+jjmiP7W0ZH27jjbq2hj
 J7Jp4ObDxl+6P0PDjBmD8jgsUp7jY3IVz5+9cz8qNsg7h1rvy6EWKvKGWTbcuujhVzKD
 6I5g==
X-Gm-Message-State: APjAAAWvchFajuAQuQ7PaudMvj4TzmbrBST1VPHhxXo6R7vEuTiyW+ZE
 c/kz6Ei7iO7JFubIXd1S/8FJRA==
X-Google-Smtp-Source: APXvYqytDDgpTYAFLUeWNzloXYLz3bfneqtytMmrNgelFHFkE8a3YG2PQkv47tfqpbhGNV2Q/AK2xg==
X-Received: by 2002:a1c:4f:: with SMTP id 76mr3234343wma.69.1575560053556;
 Thu, 05 Dec 2019 07:34:13 -0800 (PST)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id u26sm191894wmj.9.2019.12.05.07.34.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 07:34:13 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mjourdan@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: media: amlogic,vdec: convert to yaml
Date: Thu,  5 Dec 2019 16:34:05 +0100
Message-Id: <20191205153408.26500-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191205153408.26500-1-narmstrong@baylibre.com>
References: <20191205153408.26500-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_073416_279621_480CE808 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic Video Controller over to YAML schemas.

This yaml bindings will then be extended to support new SoCs.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
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
