Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 022F21EC117
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 19:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lCkjz4zRP3xXWvqvGy739lq55CVjI5jqXf2NS6e/zj4=; b=TyBa4V8PFscT6BgMBSdwrJYneu
	tUI5xHQQ81me7CqFk1xD+CsTMxjL2zaS0SxIgm3s12iExqsAK4zP5Wd1rW12MtQwKhE1z5R1qn5j1
	VE6g6HENkjnh8LUtDmb3XoxkR0ZQsH1+pIzIZ3ESGNLLX8TESp4NXqKomB5cvBlKA3hYyYHGJK+qx
	YIMu2ugiU2jkobN+9f8lxrLrpfCuWEMmmbRl5HuJpZjn9Dc6C/CX1KqthmrZGs0PCVYwEOKkBiFuQ
	NQASoDHavTLv3sVMhf9JifiwzhL6vgIDFo90p0jxtsNphsLU6WvoyKT0vR16w45iSKgBXgtapK4ec
	e0WK4ltw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgArL-0002nS-JD; Tue, 02 Jun 2020 17:37:55 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgArB-0002ky-Fn; Tue, 02 Jun 2020 17:37:47 +0000
Received: by mail-pj1-x1041.google.com with SMTP id i12so1722955pju.3;
 Tue, 02 Jun 2020 10:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=E+2KNhccpvYloQu0PsdQGEpNQg5/dPaiop5EurBVv1E=;
 b=Clmum6eIR6XcmO2XMZ0pyzIVvBytBGDCsz1BRX7EFnilH0qLu34+Wxp236+r/oOMpn
 r7eJHXb+0zBBklmFhNuN8SCRb0k/3UdC0Ke6ofK4UtwxPxRa6U15rjVwbbLv0285Z/nx
 /6cXqpEkaPTFVMcECnQBDv6BqcYExE4z4ujkJC0lwehm2luaEKfjNbEGSI39Zo3GUFk1
 IH9HN2nEjgY7uW+QSBVOQASWP/rDqQO2ZZ0j2b+8ZeNcKrZtfAzRLrzK576sfRnnJ98/
 MRqF9Sh8Kfj1YirYq8LoU4Amgdeh8PPRqE4Ikoq5WBNWM3+pmWbak4apeSHPB3fACVqG
 Da9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=E+2KNhccpvYloQu0PsdQGEpNQg5/dPaiop5EurBVv1E=;
 b=sSE1nWAi2mTy84d7dUxc8yceuKbgrlTAUkzOrT9Su8znA1U5ZvgmCeyf4yXQ1U4OGz
 v+Uzsdm8wFh7TgJgRjLIjzBkS3RaX9LiZkB96ERixLw3cqqzTQbgaDdQCxDPUvVTIuhw
 cnh34//trpkCiaFNlFBAEjFI8HKg407yRJe3XlosXlkDjckpuZXFoWjivuoNZr9uC2Lb
 w+lWv+y98YKpUGpEKHxYMKgnaxkq2eduy8x77OYtgce2GUFBajJx/a3e3kXMlbxj7aBX
 MGKVClvZvARstfqLyc0Inaf/pgITdLX04ec8gxy44uC58qdQDuTsdoyjNSmuY1CJ0OyR
 bm3g==
X-Gm-Message-State: AOAM530bVoZKayx3AJ5Nz34tq8LkGBwcws62aAJ5jbvfiz3ZMJn6FzaM
 XzT44JnAQ4wxpBK0LDgplM2FADh95qS8rw==
X-Google-Smtp-Source: ABdhPJzZolzcCOfoXwrX67EAdfHxoHcGcuiRuqWt+GtbjqmjiIiL53Ag7XirWPXStW/CtkAuv0PTeA==
X-Received: by 2002:a17:90b:28d:: with SMTP id
 az13mr304999pjb.67.1591119464856; 
 Tue, 02 Jun 2020 10:37:44 -0700 (PDT)
Received: from localhost.localdomain ([223.235.152.125])
 by smtp.gmail.com with ESMTPSA id i22sm2864382pfo.92.2020.06.02.10.37.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jun 2020 10:37:44 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, vkoul@kernel.org,
 manivannan.sadhasivam@linaro.org, robh+dt@kernel.org
Subject: [PATCH v3 05/10] dt-bindings: dmaengine: convert Actions Semi Owl
 SoCs bindings to yaml
Date: Tue,  2 Jun 2020 23:03:07 +0530
Message-Id: <1591119192-18538-6-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
References: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_103745_530687_9597C27E 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, cristian.ciocaltea@gmail.com,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Converts the device tree bindings for the Actions Semi Owl SoCs DMA
Controller over to YAML schemas.

It also adds new compatible string "actions,s700-dma".

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since v2:
	* Addressed Rob's comments:
           - removed unnecessary description. 
	   - added unevaluatedProperties
	   - added relevant information about
             dma-channels and dma-request
	* Added power-domain property.   	
Change since v1:
        * Updated the description field to reflect
          only the necessary information.
        * replaced the maxItems field with description for each
          controller attribute(except interrupts).
        * Replaced the clock macro with number to keep the example
          as independent as possible.

 New patch, was not there in RFC.
---
 Documentation/devicetree/bindings/dma/owl-dma.txt  | 47 -------------
 Documentation/devicetree/bindings/dma/owl-dma.yaml | 79 ++++++++++++++++++++++
 2 files changed, 79 insertions(+), 47 deletions(-)
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
index 000000000000..5577cd910781
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/owl-dma.yaml
@@ -0,0 +1,79 @@
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
+    description:
+      controller supports 4 interrupts, which are freely assignable to the
+      DMA channels.
+    maxItems: 4
+
+  "#dma-cells":
+    const: 1
+
+  dma-channels:
+    maximum: 12
+
+  dma-requests:
+    maximum: 46
+
+  clocks:
+    maxItems: 1
+    description:
+      Phandle and Specifier of the clock feeding the DMA controller.
+
+  power-domains:
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
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
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
+        clocks = <&clock 22>;
+    };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
