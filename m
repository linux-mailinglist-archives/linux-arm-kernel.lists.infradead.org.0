Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2997D1909B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 10:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=95fKaX68lZs5Q82qS529LLkjN/W08ad6b+qhgg/cG8I=; b=jOo
	Po+5NVry7Ht8cvEa7siRGIhs+wiPCizc88tTtZCIpE/X52saCW7EsOrQO8o8P2QUTLOw3pq7gLqQW
	4INenCo+de/TKPt0RCN2CrHG5JVQ6rvmyDDMwWbv1PlG+7ll4VzRb8SrrdCBDxMkx2DSJPnKMxsiZ
	B4Ga8fWLongq1fYof9BZpg8f9147COyJDUS96Afn6xz2DkRT8YvGwPSqZUek0htHJlNB6tV9dlGSt
	Ux2uhESI3ddBzHFX9yBOXXw4SXrnd1DcNJ/KabUTUU6YsvbpmaUPq38Q5GXKh+pCkK5c25vMxvg5T
	D9ipze7itAnVAHEcsY/tUjQnsrFDVcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGg4w-0001WT-Tn; Tue, 24 Mar 2020 09:42:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGg4N-0001Lh-PZ; Tue, 24 Mar 2020 09:42:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id 65so3841644wrl.1;
 Tue, 24 Mar 2020 02:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UfwyyCOVp7fJ/e8HRRUukv3oRa/wd6NHXME/Nbpa+ws=;
 b=WPSgghiHRVzrwArc/G6qj7hS8TULYEmNI5RNn7iywgiMvs1JuSfMgnIRnzNDlwdlZd
 iH9wOswp2PzsKjU2K1d/QTcsBK01Bk01UYy4FW03l/Lbqi3SghtaXWTkmCmt6usq6nhV
 sTkAWHDkP9ZVSFl+TF4/xUAJrtdaqbWfHTrSzmxzn1qLeoiDM9S7PcrijO5e36VBEKI4
 C0osWAsK3zHTaEXUPiSDdLamAtSsG65g4U/jsfTj9kXoJanekC0nvdP1FRRJNSEgbHb7
 50djO41DN0X/DGnttXM+4dOqtOPXvPhmGwhgvhedb1RNcDMVQ9WsZWlbUhMaQKy2Mg/Z
 rYjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UfwyyCOVp7fJ/e8HRRUukv3oRa/wd6NHXME/Nbpa+ws=;
 b=ENgKnYeFnbaCh2KhlqRsQe4scFJJS/ukVq+HAtssYlFXuTkT3HZ/cYANQljXLjB20M
 2MDTWZy2zaqUiYHhctCGE9neLuojJy+Zsr6M0O3hjP7QtBGUbPAW4dKcy0apdHXKLpLa
 cZiLHQ4aTn8di5Y4ztclFuD/CB7huTWi2vWm+yVpludrMbkIffq0SkroS6JalC62a8oC
 xIOp4BNCWo7l+OBrv+WL14TX28XhGF1kowHYFxIUKFScycLULs9Yo0GR73Gz+KXQO0Q2
 g3hUZ+8lhRsg7DwE4i9QwhdRWm9vbVsXAH6OOcWyarpuRxt9fZG+w2rU1W6pbXvuYfCB
 4YWQ==
X-Gm-Message-State: ANhLgQ3BmtMJ9Ujs0bH52xr6iPJCM6fdXrQ3gI3SDxNd9Ofz+6Z13oU9
 Vq65firDg+6CYh7+iFqddfk=
X-Google-Smtp-Source: ADFU+vsqACwnEGdz/AJwhtKAn07kBM93otHuS309xoHIHLRUqkWj8CpyfKBlB8yVQzRrgyFFZ3Drow==
X-Received: by 2002:adf:d846:: with SMTP id k6mr2544744wrl.268.1585042917062; 
 Tue, 24 Mar 2020 02:41:57 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id r15sm22489916wra.19.2020.03.24.02.41.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 02:41:56 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: lgirdwood@gmail.com
Subject: [PATCH v2 1/3] dt-bindings: sound: convert rockchip i2s bindings to
 yaml
Date: Tue, 24 Mar 2020 10:41:47 +0100
Message-Id: <20200324094149.6904-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_024159_878489_251C503D 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current dts files with 'i2s' nodes are manually verified.
In order to automate this process rockchip-i2s.txt
has to be converted to yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changed V2:
  Add Reviewed-by
---
 .../devicetree/bindings/sound/rockchip-i2s.txt     |  49 ----------
 .../devicetree/bindings/sound/rockchip-i2s.yaml    | 106 +++++++++++++++++++++
 2 files changed, 106 insertions(+), 49 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/rockchip-i2s.txt
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml

diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.txt b/Documentation/devicetree/bindings/sound/rockchip-i2s.txt
deleted file mode 100644
index 54aefab71..000000000
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.txt
+++ /dev/null
@@ -1,49 +0,0 @@
-* Rockchip I2S controller
-
-The I2S bus (Inter-IC sound bus) is a serial link for digital
-audio data transfer between devices in the system.
-
-Required properties:
-
-- compatible: should be one of the following:
-   - "rockchip,rk3066-i2s": for rk3066
-   - "rockchip,px30-i2s", "rockchip,rk3066-i2s": for px30
-   - "rockchip,rk3036-i2s", "rockchip,rk3066-i2s": for rk3036
-   - "rockchip,rk3188-i2s", "rockchip,rk3066-i2s": for rk3188
-   - "rockchip,rk3228-i2s", "rockchip,rk3066-i2s": for rk3228
-   - "rockchip,rk3288-i2s", "rockchip,rk3066-i2s": for rk3288
-   - "rockchip,rk3328-i2s", "rockchip,rk3066-i2s": for rk3328
-   - "rockchip,rk3366-i2s", "rockchip,rk3066-i2s": for rk3366
-   - "rockchip,rk3368-i2s", "rockchip,rk3066-i2s": for rk3368
-   - "rockchip,rk3399-i2s", "rockchip,rk3066-i2s": for rk3399
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- interrupts: should contain the I2S interrupt.
-- dmas: DMA specifiers for tx and rx dma. See the DMA client binding,
-	Documentation/devicetree/bindings/dma/dma.txt
-- dma-names: should include "tx" and "rx".
-- clocks: a list of phandle + clock-specifer pairs, one for each entry in clock-names.
-- clock-names: should contain the following:
-   - "i2s_hclk": clock for I2S BUS
-   - "i2s_clk" : clock for I2S controller
-- rockchip,playback-channels: max playback channels, if not set, 8 channels default.
-- rockchip,capture-channels: max capture channels, if not set, 2 channels default.
-
-Required properties for controller which support multi channels
-playback/capture:
-
-- rockchip,grf: the phandle of the syscon node for GRF register.
-
-Example for rk3288 I2S controller:
-
-i2s@ff890000 {
-	compatible = "rockchip,rk3288-i2s", "rockchip,rk3066-i2s";
-	reg = <0xff890000 0x10000>;
-	interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
-	dmas = <&pdma1 0>, <&pdma1 1>;
-	dma-names = "tx", "rx";
-	clock-names = "i2s_hclk", "i2s_clk";
-	clocks = <&cru HCLK_I2S0>, <&cru SCLK_I2S0>;
-	rockchip,playback-channels = <8>;
-	rockchip,capture-channels = <2>;
-};
diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
new file mode 100644
index 000000000..eff06b4b5
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -0,0 +1,106 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/rockchip-i2s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip I2S controller
+
+description:
+  The I2S bus (Inter-IC sound bus) is a serial link for digital
+  audio data transfer between devices in the system.
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rk3066-i2s
+      - items:
+          - enum:
+            - rockchip,px30-i2s
+            - rockchip,rk3036-i2s
+            - rockchip,rk3188-i2s
+            - rockchip,rk3228-i2s
+            - rockchip,rk3288-i2s
+            - rockchip,rk3328-i2s
+            - rockchip,rk3366-i2s
+            - rockchip,rk3368-i2s
+            - rockchip,rk3399-i2s
+          - const: rockchip,rk3066-i2s
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: clock for I2S controller
+      - description: clock for I2S BUS
+
+  clock-names:
+    items:
+      - const: i2s_clk
+      - const: i2s_hclk
+
+  dmas:
+    items:
+      - description: TX DMA Channel
+      - description: RX DMA Channel
+
+  dma-names:
+    items:
+      - const: tx
+      - const: rx
+
+  rockchip,capture-channels:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+    default: 2
+    description:
+      Max capture channels, if not set, 2 channels default.
+
+  rockchip,playback-channels:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+    default: 8
+    description:
+      Max playback channels, if not set, 8 channels default.
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle of the syscon node for the GRF register.
+      Required property for controllers which support multi channel
+      playback/capture.
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
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3288-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2s@ff890000 {
+      compatible = "rockchip,rk3288-i2s", "rockchip,rk3066-i2s";
+      reg = <0xff890000 0x10000>;
+      interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru SCLK_I2S0>, <&cru HCLK_I2S0>;
+      clock-names = "i2s_clk", "i2s_hclk";
+      dmas = <&pdma1 0>, <&pdma1 1>;
+      dma-names = "tx", "rx";
+      rockchip,capture-channels = <2>;
+      rockchip,playback-channels = <8>;
+    };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
