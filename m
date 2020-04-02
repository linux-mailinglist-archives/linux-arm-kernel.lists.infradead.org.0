Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC80C19CCE9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 00:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=J1gNd2j57kd4z0s3/ppkvYz3z1NysITNKObPWusaLtE=; b=s86
	23fs+xYfYsk2tSNYP4g+5ja+mM5o4BjGpT6CLVql5DlrImLatQijeHMCW/rArYdDxQNjvBI0/iIvh
	AcjQ+I+HDCUYMVuny+mB0K6Dt6ETSrKMXQYmCEOcoRGC/lO789JsrffG39QDkNnI4E5r/oynMjqD1
	8AZo4r6E7SnGdcS8S4JT7iqzotNglvfPYv3A/WVQjtBkUyMj/OTOUyB31XD89ifLNk8FwZMv8uOXm
	UtRGv1iPPmGxTOQcrpdgPYVSuYQZJNSg11PtJpprf0gcYyi2y4eMypE89P9IIgq/t/hGdS390kwxe
	jPl18jW6B1o1KdUnYXhiSOr1eNcrMfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK8PF-00073s-PE; Thu, 02 Apr 2020 22:33:49 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK8Os-0006vF-6A; Thu, 02 Apr 2020 22:33:27 +0000
Received: by mail-wm1-x344.google.com with SMTP id t8so5177513wmi.2;
 Thu, 02 Apr 2020 15:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=OmDjT9copZDYM4pmPAbt/TsexMujcYzhtWf1bez84nA=;
 b=mIuef1iE5HqYFwoNjZRieAmjV7htv0wNmJV5Nta79Yast/o20W8VW9esTccDprQhUQ
 KD6JJtaxj1gK8iAA9S7/cyP0umJ5H3LDjtk2Oc2JvVQ7drV1Pk1CzoQ5IU90fdu6sos0
 gQ4MuCkSaD7LFJcJ/t8V/oxEs8dC7zpifdYO6OsCU1MlCMShn6Hr8sDvcrOnmIdAEkTG
 oCNNYzCrEYeHpQfyHK98EbApZ2PJhN7a3flWeJnwC+8hH+4p6DgKkMSiKXwz7wXVbL5C
 OCywYSxs5/mw10ZGlFA2EWsn8JYUWoNz3n0XPeitUXL+7kxD35TNLiXnLxfnERx9hXpE
 UGoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=OmDjT9copZDYM4pmPAbt/TsexMujcYzhtWf1bez84nA=;
 b=g+QCFRUvA5kzYHt0D82ppO9AlVBRXGhTObwyRg4VNRyDeFXxoJpDBsFI0dSqj9HGaq
 jz6bgCfrTn3IPj5rfMNwpKz0MgDAND/yJpcBURbD/sCwS6M703xrv+UpBrTJKb+rEPaf
 YslcKhGMFPJ1Va4nUZlSgOeYjY0HTqOggwITIb4vxIeyX+SC//OY6EgZXbib4z6BhYyi
 O8e5zEboXG7pRMw83SKffK423zMuhTcXpa3FoFQpoB+pNje6SaZXvhfRwbaGYdm3ud4l
 AaHb6nTK8NF0ekPjVVR1/pRWN7ePUIOR5/k0P5xSObjmjupINfh2i1kWUGbslS/ycGYJ
 GJGQ==
X-Gm-Message-State: AGi0Puaoj7gjhsHVU8JP3kjYnOP2ApZ1XJnmBLwbcsmSGyBNAgGolzqA
 bTnZ2E7ptc1UCFSas2iigIo=
X-Google-Smtp-Source: APiQypI6KSN4jgb1ptryf1N/48uD/v7HmEuB61QFUUzsXobb6C4PD97FmDdsZpsVoXI7Qu9xSfwqwQ==
X-Received: by 2002:a05:600c:218d:: with SMTP id
 e13mr5504068wme.148.1585866804335; 
 Thu, 02 Apr 2020 15:33:24 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g186sm9267729wmg.36.2020.04.02.15.33.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 Apr 2020 15:33:23 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: jacob-chen@iotwrt.com
Subject: [PATCH v1 1/2] dt-bindings: media: convert rockchip rga bindings to
 yaml
Date: Fri,  3 Apr 2020 00:33:14 +0200
Message-Id: <20200402223315.12260-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_153326_254057_EA38C068 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current dts files for Rockchip with 'rga' nodes
are manually verified. In order to automate this process
rockchip-rga.txt has to be converted to yaml.

Changed:
  Add missing reg property

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/media/rockchip-rga.txt     | 34 ----------
 .../devicetree/bindings/media/rockchip-rga.yaml    | 78 ++++++++++++++++++++++
 2 files changed, 78 insertions(+), 34 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/rockchip-rga.txt
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-rga.yaml

diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.txt b/Documentation/devicetree/bindings/media/rockchip-rga.txt
deleted file mode 100644
index c53a8e513..000000000
--- a/Documentation/devicetree/bindings/media/rockchip-rga.txt
+++ /dev/null
@@ -1,34 +0,0 @@
-device-tree bindings for rockchip 2D raster graphic acceleration controller (RGA)
-
-RGA is a standalone 2D raster graphic acceleration unit. It accelerates 2D
-graphics operations, such as point/line drawing, image scaling, rotation,
-BitBLT, alpha blending and image blur/sharpness.
-
-Required properties:
-- compatible: value should be one of the following
-  "rockchip,rk3228-rga", "rockchip,rk3288-rga": for Rockchip RK3228
-  "rockchip,rk3288-rga": for Rockchip RK3288
-  "rockchip,rk3399-rga": for Rockchip RK3399
-
-- interrupts: RGA interrupt specifier.
-
-- clocks: phandle to RGA sclk/hclk/aclk clocks
-
-- clock-names: should be "aclk", "hclk" and "sclk"
-
-- resets: Must contain an entry for each entry in reset-names.
-  See ../reset/reset.txt for details.
-- reset-names: should be "core", "axi" and "ahb"
-
-Example:
-SoC-specific DT entry:
-	rga: rga@ff680000 {
-		compatible = "rockchip,rk3399-rga";
-		reg = <0xff680000 0x10000>;
-		interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
-		clock-names = "aclk", "hclk", "sclk";
-
-		resets = <&cru SRST_RGA_CORE>, <&cru SRST_A_RGA>, <&cru SRST_H_RGA>;
-		reset-names = "core, "axi", "ahb";
-	};
diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
new file mode 100644
index 000000000..3b110b574
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/rockchip-rga.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip 2D raster graphic acceleration controller (RGA)
+
+description:
+  RGA is a standalone 2D raster graphic acceleration unit. It accelerates 2D
+  graphics operations, such as point/line drawing, image scaling, rotation,
+  BitBLT, alpha blending and image blur/sharpness.
+
+maintainers:
+  - Jacob Chen <jacob-chen@iotwrt.com>
+  - Ezequiel Garcia <ezequiel@collabora.com>
+
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rk3288-rga
+      - const: rockchip,rk3399-rga
+      - items:
+          - const: rockchip,rk3228-rga
+          - const: rockchip,rk3288-rga
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclk
+      - const: sclk
+
+  resets:
+    maxItems: 3
+
+  reset-names:
+    items:
+      - const: core
+      - const: axi
+      - const: ahb
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    rga: rga@ff680000 {
+      compatible = "rockchip,rk3399-rga";
+      reg = <0xff680000 0x10000>;
+      interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru ACLK_RGA>,
+               <&cru HCLK_RGA>,
+               <&cru SCLK_RGA_CORE>;
+      clock-names = "aclk", "hclk", "sclk";
+      resets = <&cru SRST_RGA_CORE>,
+               <&cru SRST_A_RGA>,
+               <&cru SRST_H_RGA>;
+      reset-names = "core", "axi", "ahb";
+    };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
