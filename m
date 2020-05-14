Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E311D362C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1YboelflE1csrHHD5B817rtl4YedwwemduzU2AbvU2c=; b=W03XemkWLXLZEGZrRvsiPEJ+cu
	NMdIg+VK9edVLX2m8sUG7dguZVMSwvCtEcYyHPEX1zDpmYen0zxosx4M6opvLmfBGMbuYYyuE42Wi
	5ote7rVcADl4iWmFZmtsXAzUWh6K6j61JVrkTNlOgTb2T3JKzkgh5WRHs4WdAXhbnl4K0nlcYA7tr
	eB4aoY5rAzFVsajt/uj43pnVeUbIYb3UYssNtVpQXSpvyPMMUYsWTt31tP9Uio/VdfTBI70iSRwzk
	FXeaqNCcIw1OqmAH6hDW8Ll7fOQNjpVhi9Y4oR8J+iK/FzxX0nKw/oKuc70CymSyFuznz9uw9mh0S
	7bRIGTnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGUT-0005Tv-Ht; Thu, 14 May 2020 16:13:45 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGSr-0004HZ-1K; Thu, 14 May 2020 16:12:10 +0000
Received: by mail-pl1-x644.google.com with SMTP id k22so60206pls.10;
 Thu, 14 May 2020 09:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ES8afuL7PSuY7X1eTte9GLtkb9S07PMJ4/U2q/1l3LQ=;
 b=Itw4gj29hGMizedRPJwNNjoNbwd9nz3Tfc+zIJDtulSOotvysbj+DkrpCoW9KbzC+P
 rHjF3TgJP6owOXEDDCwJ6OZoacQsRZt3Khtj6mIDI0KpViSoPydhUk7d4UhOif/4EGMo
 9MyX9bG5AuZfnXjBH4sp0DUQuYBjLTLVSiLZLrfgmGAz0qGLiBD7vF7/Hl28TILx42CZ
 cHI0XF0iRG8NcTzddzXLOFfaTpJkdBeFyuJqyUUk0LhjXrrUc1fD0t6k0RWfzIFB2OnX
 dAp9SN+Fg2ByOcdTrwrhFmtz/3OMqzFfIeNsaYuJ4kZTzgcytBA6H2jBdpWBVkkJ1Z30
 Z1Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ES8afuL7PSuY7X1eTte9GLtkb9S07PMJ4/U2q/1l3LQ=;
 b=qDeIpi6wuX3pUedyY2NR4FnSh7038d3WSpj8zPLZQkR0sTiPLQpJAfHdkUPkwztAJe
 jDwZ8mkCFHGqLVb7PwL8Ms/F7DR7a/bzO88wRxCZwwF/GQWJAbMKUBD7gb6gnvUvLQqc
 y/dfR8jViTw/x4ghQeFoHXov6j1oQ7vUZRCuScqMl36iIc12JjUmUraXPbijyonfOccq
 UprtSvthMgPk3suyC8gfp8n55SEUrd88f938EeWZAgsqHVSOCl5MYvixynYWfzDshsBG
 F5kybWa7rAhrmxtkkcBCv5MwO5qcoAfX0ggbdAvAtjAqbc4JQ83Cpx9gtStzvJtVmuhl
 kc1Q==
X-Gm-Message-State: AOAM530epr9mARLgozydGJK3V96IuBCW2m5j5inYw3aXMoSbb/Tva8HY
 4tGFQJim2f0SyuNzJUyKDH4=
X-Google-Smtp-Source: ABdhPJyObmtYnStJLaJtJzAGemjZQ1QgrOmeN7N6Q26fz2KGs69RXBqWup98xXOKuxVxlEJx/NGYrQ==
X-Received: by 2002:a17:902:b114:: with SMTP id
 q20mr4363148plr.120.1589472722763; 
 Thu, 14 May 2020 09:12:02 -0700 (PDT)
Received: from localhost.localdomain ([106.215.24.137])
 by smtp.gmail.com with ESMTPSA id t5sm2331755pgp.80.2020.05.14.09.11.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 May 2020 09:12:02 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v1 5/9] dt-bindings: dmaengine: convert Actions Semi Owl SoCs
 bindings to yaml
Date: Thu, 14 May 2020 21:40:53 +0530
Message-Id: <1589472657-3930-6-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_091205_365118_EE56EE7D 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Converts the device tree bindings for the Actions Semi Owl SoCs DMA
Controller over to YAML schemas.

It also adds new compatible string "actions,s700-dma" to match
the driver.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
New patch, was not there in RFC.
---
 Documentation/devicetree/bindings/dma/owl-dma.txt  | 47 ------------
 Documentation/devicetree/bindings/dma/owl-dma.yaml | 84 ++++++++++++++++++++++
 2 files changed, 84 insertions(+), 47 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/dma/owl-dma.txt
 create mode 100644 Documentation/devicetree/bindings/dma/owl-dma.yaml

diff --git a/Documentation/devicetree/bindings/dma/owl-dma.txt b/Documentation/devicetree/bindings/dma/owl-dma.txt
deleted file mode 100644
index 03e9bb12b75f..000000000000
--- a/Documentation/devicetree/bindings/dma/owl-dma.txt
+++ /dev/null
@@ -1,47 +0,0 @@
-* Actions Semi Owl SoCs DMA controller
-
-This binding follows the generic DMA bindings defined in dma.txt.
-
-Required properties:
-- compatible: Should be "actions,s900-dma".
-- reg: Should contain DMA registers location and length.
-- interrupts: Should contain 4 interrupts shared by all channel.
-- #dma-cells: Must be <1>. Used to represent the number of integer
-              cells in the dmas property of client device.
-- dma-channels: Physical channels supported.
-- dma-requests: Number of DMA request signals supported by the controller.
-                Refer to Documentation/devicetree/bindings/dma/dma.txt
-- clocks: Phandle and Specifier of the clock feeding the DMA controller.
-
-Example:
-
-Controller:
-                dma: dma-controller@e0260000 {
-                        compatible = "actions,s900-dma";
-                        reg = <0x0 0xe0260000 0x0 0x1000>;
-                        interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
-                                     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
-                                     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
-                                     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
-                        #dma-cells = <1>;
-                        dma-channels = <12>;
-                        dma-requests = <46>;
-                        clocks = <&clock CLK_DMAC>;
-                };
-
-Client:
-
-DMA clients connected to the Actions Semi Owl SoCs DMA controller must
-use the format described in the dma.txt file, using a two-cell specifier
-for each channel.
-
-The two cells in order are:
-1. A phandle pointing to the DMA controller.
-2. The channel id.
-
-uart5: serial@e012a000 {
-        ...
-        dma-names = "tx", "rx";
-        dmas = <&dma 26>, <&dma 27>;
-        ...
-};
diff --git a/Documentation/devicetree/bindings/dma/owl-dma.yaml b/Documentation/devicetree/bindings/dma/owl-dma.yaml
new file mode 100644
index 000000000000..12e68c0ece67
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/owl-dma.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/owl-dma.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Actions Semi Owl SoCs DMA controller
+
+description: |
+  The OWL DMA is a general-purpose direct memory access controller capable of
+  supporting 10 and 12 independent DMA channels for S700 and S900 SoCs
+  respectively.
+  DMA clients connected to the Actions Semi Owl SoCs DMA controller must
+  use the format described in the owl-dma.yaml file, using a two-cell specifier
+  for each channel.
+
+  The two cells in order are:
+  1. A phandle pointing to the DMA controller.
+  2. The channel id.
+
+  uart5: serial@e012a000 {
+    ...
+    dma-names = "tx", "rx";
+    dmas = <&dma 26>, <&dma 27>;
+    ...
+  };
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+allOf:
+  - $ref: "dma-controller.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - actions,s900-dma
+      - actions,s700-dma
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 4
+
+  "#dma-cells":
+    const: 1
+
+  dma-channels:
+    maxItems: 1
+
+  dma-requests:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#dma-cells"
+  - dma-channels
+  - dma-requests
+  - clocks
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/actions,s700-cmu.h>
+    dma: dma-controller@e0260000 {
+        compatible = "actions,s900-dma";
+        reg = <0x0 0xe0260000 0x0 0x1000>;
+        interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
+        #dma-cells = <1>;
+        dma-channels = <12>;
+        dma-requests = <46>;
+        clocks = <&clock CLK_DMAC>;
+    };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
