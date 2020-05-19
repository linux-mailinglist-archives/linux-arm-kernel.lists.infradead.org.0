Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CBD1D9F3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZD40s2fxa11aHS3lWr3m0sewPeQCAnAdHXWYztPW/I8=; b=gZAEwdt+LBrldfU+ni+YH/Mnij
	gEkNuQk+Ha0uLza8wlyi3TmY652kPJ5k2G2+hHPJT2CaGHFuFnZYNdFlGtDvK2Z0n2pntaSh01V+B
	Fgt6tLS9CvCgPqHbglsv2UN93rF4GrgsCyfn8QbA0GmJrjgcRrEnMI+W8bLS1XrkudtcZ1cBomU7g
	zVd/ZmBe80td1dRO0loJPY+GEKM67rgPqBSRQA+tNVH/nPy3vwT9bVrmhfq+U9TV07ZYCCBxkCy/j
	ghqfs45G8uaBo50Y3lIa8PHuE5HvVHXVajYZv3TdhAPbfi87jIzFThP8wkD8rx/zqWpbBxEqnu3XH
	GmTjqUpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6tu-0001qL-Ui; Tue, 19 May 2020 18:23:38 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6sr-00012P-V0; Tue, 19 May 2020 18:22:37 +0000
Received: by mail-pj1-x1041.google.com with SMTP id cx22so51865pjb.1;
 Tue, 19 May 2020 11:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=62O+Kjf9ez3Kf4xkqOzU5F7vZ1myoqJtyp6hoNlnKyM=;
 b=G2vs88OzB+u+wmKqkgbsYbaeZPCEA5cjoEMGbppNuohGbpQ88FZ726G351bjaeKP07
 EvavyAetdJoh9rQwUkwzHS8rJfye46ACvYiSWMV19FnnYcXM3CcL7dqL7KfiKEqqwLhc
 hkDLPPW/SfqsAFP+SvP8evF1nJoPz2g+NsIt5Orkt8gYkeoB1s21rrkj2Z1kw+l1gqk5
 xJunjfQUdsw741jy8PyW/RA6yV3K/aVlN7WNnFVB80mtKBMQhONIXc3N7bfGjirggG+e
 qAXj/nzEKK9mU8two5iK9NGrMaYUz7RaCHruKHk4Hf2R/yPAkDJ/UdBOuwAawBzsadVh
 DTgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=62O+Kjf9ez3Kf4xkqOzU5F7vZ1myoqJtyp6hoNlnKyM=;
 b=S91+1dnLjnyeEVhRgEjKXFsUOZxiJzRv2AXyORBcvsqjiMjwRGAphk3i9MGU3kpxxi
 CC4++HOcVWctHk2mGLX1BiKdVHQacCg60Aek3PQFvLTCyVE4xRHD1gRO/dPwMDt4X78p
 7nDcUdQbOVJwbPeBNEByjCl8y6HR1AY0PaB1FdszlhFSvrxhfxEJcCAUD0RfD3fjhuNU
 QoxFNjGu+bIOSaUAVxGlBYqN7ke+Z19R8Bs38gAEcqsX/z/zkn37e/kJVc88bP+ljOus
 fVcVboww2zGmWCOs6clNQcRylJ0638Y0dsDlYN4n0ixZRf0b/TjLV49z/rLkXb7VqEjb
 3kiw==
X-Gm-Message-State: AOAM533kRJ6UCaSlLyWxpRaEy7XXsTETftDoDqFb2tKDsJ1t9IWRagAa
 WB4B4UYnUUJdz392YOorgHM=
X-Google-Smtp-Source: ABdhPJwNdsnKxASPNjb0mzWOZGYLLkfljDAYqhMp2/dFIDkWpYBoCddwISwRGA55Pdp9tak8O6JFxA==
X-Received: by 2002:a17:90a:2e17:: with SMTP id
 q23mr817001pjd.43.1589912552545; 
 Tue, 19 May 2020 11:22:32 -0700 (PDT)
Received: from localhost.localdomain ([223.235.145.232])
 by smtp.gmail.com with ESMTPSA id p2sm148399pgh.25.2020.05.19.11.22.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 May 2020 11:22:31 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, vkoul@kernel.org,
 manivannan.sadhasivam@linaro.org, robh+dt@kernel.org
Subject: [PATCH v2 05/10] dt-bindings: dmaengine: convert Actions Semi Owl
 SoCs bindings to yaml
Date: Tue, 19 May 2020 23:49:23 +0530
Message-Id: <1589912368-480-6-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
References: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_112234_007970_DBDC9710 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Documentation/devicetree/bindings/dma/owl-dma.yaml | 76 ++++++++++++++++++++++
 2 files changed, 76 insertions(+), 47 deletions(-)
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
index 000000000000..82e7d261e967
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/owl-dma.yaml
@@ -0,0 +1,76 @@
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
+    description:
+      DMA registers location and length.
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
+    description:
+      Physical channels supported.
+
+  dma-requests:
+    description:
+      Number of DMA request signals supported by the controller.
+
+  clocks:
+    description:
+      Phandle and Specifier of the clock feeding the DMA controller.
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
