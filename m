Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A822183797
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:31:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IfW6ytq+nu/SqVTOX4Tmyisatn48IMahUL6oxrHHBoI=; b=m9k
	MMWIp+0QVW7nEljDeIFSSDPcCkavHQ7oEcTQbI15a/JLa03+P553i/ILj5AXu+QBxpi+/pdnFpBGA
	iQ5heV6r0bys4+UdJLPpmZse77jMIuBaiBQPFyW1kDhevBRrlFAxFRQAnC/71odHGaXCW1I7iYbPG
	1Yl6gtjNlchMxNb1MtFKxTC2W4a+DQXRObsYu2Y1d7+rVFNIiZeuQg+8Fz9vG1qO7Kf7hb/IeJOHV
	cKHUXXF/iAdXEBvuv7Tu7enxdgE3OAiXCFhYc2w8G/8JcAnqpqdF4CM2tFHPoRWfFpEHWCw6fWwDI
	JdkD1Au75zowbVIa7x/Y38Uhl6ZMaWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRfv-00007x-8b; Thu, 12 Mar 2020 17:31:15 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRfU-0008M4-8j; Thu, 12 Mar 2020 17:30:49 +0000
Received: by mail-wm1-x333.google.com with SMTP id 11so7001944wmo.2;
 Thu, 12 Mar 2020 10:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=xSnW9A8X74vMXdw1AZNYRfnq/dFpU0Q61rYWfM27gUE=;
 b=dqZ+cS/Prcg+PDSUIoMKAOEp40uZVlpGw5ZOWddF1Z+/e20AXbLSPQFzeZ7bd+Z4q+
 4uKT3g1n3TNaUsBmQNyL0iatlr3q3BMU+UCYm1losTAgpsFzjIVGBRlrLH+BCJ0lvz/D
 oW1p+URZaH4dQIOw2PGC3Gmk6LxtBexxtvJAiuqjcQzmxkLbPJp/vSzX+rf0g4fA7rCg
 XOKvY1oZc0waeoUcTIPSLdIwnf+ZvTUJTNkTK/XYTlFrO3wn2oKTzSPMSmQk1pZ3gUe2
 mOwHloguKVYmhmfoshAzANf4zmtWL+5AxDuOC0NE8y/jFyi47KCYNQp0zTLsAnlChnyN
 VWYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xSnW9A8X74vMXdw1AZNYRfnq/dFpU0Q61rYWfM27gUE=;
 b=suHgRq0vgTMzgrg4Saiyu+qic1twaAWuMv6W8+B2jFmeCQBIpvNa/YAXmh+UcZ/DsU
 pplV0WFQFS2ou3o9QHcmCm8a3E+crKM8kwdfLpOwmFHvmvhH68h81i/KZT8wuVgd90tU
 p9zKZiHceTGs19zVCUY3KeRSKO91H6x2mhVRGeX0Jfxqure1Zj0kyA4UGqAMXtRySCXy
 6864yagET3k1OXdL7QXhyfz06MuV9yYunOluDvibbqvWspFSp3Kz9efN+BG7LAorNS1m
 FxeBQHxePsnCc2+5BIHU4qcQT3aNOjq9eCe0Dgzx02HopmF48lYcqsL6wamHXgXCBbKL
 SJeQ==
X-Gm-Message-State: ANhLgQ3+8G6WxxuoxRdfi86fmLZxQeosIC90TMgrn0u3L22oATz9vOFf
 Fyju9rHP0vU3W4r0v5h8jfU=
X-Google-Smtp-Source: ADFU+vuVG0oUJL9NNxpSgAnmiNK0aLUEyjsbXdwHcCKQBXDbnFceiU248kw7koVVOEdnC7MW0sy9zQ==
X-Received: by 2002:a1c:59c6:: with SMTP id n189mr5786802wmb.178.1584034245527; 
 Thu, 12 Mar 2020 10:30:45 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id x24sm13170222wmc.36.2020.03.12.10.30.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Mar 2020 10:30:44 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: lgirdwood@gmail.com
Subject: [PATCH v1 1/2] dt-bindings: sound: convert rockchip spdif bindings to
 yaml
Date: Thu, 12 Mar 2020 18:30:36 +0100
Message-Id: <20200312173037.21477-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_103048_307427_CF4B045F 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current dts files with 'spdif' nodes are manually verified.
In order to automate this process rockchip-spdif.txt
has to be converted to yaml.

Also rk3188.dtsi, rk3288.dtsi use an extra fallback string,
so change this in the documentation.

Changed:
"rockchip,rk3188-spdif", "rockchip,rk3066-spdif"
"rockchip,rk3288-spdif", "rockchip,rk3066-spdif"

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/sound/rockchip-spdif.txt   | 45 ----------
 .../devicetree/bindings/sound/rockchip-spdif.yaml  | 96 ++++++++++++++++++++++
 2 files changed, 96 insertions(+), 45 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/rockchip-spdif.txt
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.txt b/Documentation/devicetree/bindings/sound/rockchip-spdif.txt
deleted file mode 100644
index ec20c1271..000000000
--- a/Documentation/devicetree/bindings/sound/rockchip-spdif.txt
+++ /dev/null
@@ -1,45 +0,0 @@
-* Rockchip SPDIF transceiver
-
-The S/PDIF audio block is a stereo transceiver that allows the
-processor to receive and transmit digital audio via an coaxial cable or
-a fibre cable.
-
-Required properties:
-
-- compatible: should be one of the following:
-   - "rockchip,rk3066-spdif"
-   - "rockchip,rk3188-spdif"
-   - "rockchip,rk3228-spdif"
-   - "rockchip,rk3288-spdif"
-   - "rockchip,rk3328-spdif"
-   - "rockchip,rk3366-spdif"
-   - "rockchip,rk3368-spdif"
-   - "rockchip,rk3399-spdif"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- interrupts: should contain the SPDIF interrupt.
-- dmas: DMA specifiers for tx dma. See the DMA client binding,
-  Documentation/devicetree/bindings/dma/dma.txt
-- dma-names: should be "tx"
-- clocks: a list of phandle + clock-specifier pairs, one for each entry
-  in clock-names.
-- clock-names: should contain following:
-   - "hclk": clock for SPDIF controller
-   - "mclk" : clock for SPDIF bus
-
-Required properties on RK3288:
-  - rockchip,grf: the phandle of the syscon node for the general register
-                   file (GRF)
-
-Example for the rk3188 SPDIF controller:
-
-spdif: spdif@1011e000 {
-	compatible = "rockchip,rk3188-spdif", "rockchip,rk3066-spdif";
-	reg = <0x1011e000 0x2000>;
-	interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
-	dmas = <&dmac1_s 8>;
-	dma-names = "tx";
-	clock-names = "hclk", "mclk";
-	clocks = <&cru HCLK_SPDIF>, <&cru SCLK_SPDIF>;
-	#sound-dai-cells = <0>;
-};
diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
new file mode 100644
index 000000000..45c6eea30
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/rockchip-spdif.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SPDIF transceiver
+
+description:
+  The S/PDIF audio block is a stereo transceiver that allows the
+  processor to receive and transmit digital audio via a coaxial or
+  fibre cable.
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rk3066-spdif
+      - const: rockchip,rk3228-spdif
+      - const: rockchip,rk3328-spdif
+      - const: rockchip,rk3366-spdif
+      - const: rockchip,rk3368-spdif
+      - const: rockchip,rk3399-spdif
+      - items:
+          - enum:
+            - rockchip,rk3188-spdif
+            - rockchip,rk3288-spdif
+          - const: rockchip,rk3066-spdif
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: clock for SPDIF bus
+      - description: clock for SPDIF controller
+
+  clock-names:
+    items:
+      - const: mclk
+      - const: hclk
+
+  dmas:
+    items:
+      - description: TX DMA Channel
+
+  dma-names:
+    items:
+      - const: tx
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle of the syscon node for the GRF register.
+      Required property on RK3288.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - dmas
+  - dma-names
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: rockchip,rk3288-spdif
+
+then:
+  required:
+    - rockchip,grf
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3188-cru-common.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    spdif: spdif@1011e000 {
+      compatible = "rockchip,rk3188-spdif", "rockchip,rk3066-spdif";
+      reg = <0x1011e000 0x2000>;
+      interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru SCLK_SPDIF>, <&cru HCLK_SPDIF>;
+      clock-names = "mclk", "hclk";
+      dmas = <&dmac1_s 8>;
+      dma-names = "tx";
+    };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
