Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BFC19D6E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 14:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=p/UzC6tOGWajgHJ73GlJkiheeZt1O/v45Ozjao77GXA=; b=DxG
	p/KadTNGfJmPqweWMBW08tdY12h3xgFZ6gs2SKhs10wAn9yGIbqaV7hHuNkPeJKtMCbsAatzjmPip
	4Vfbp7XvYROLEoL0aWHgbKiIOC/9w7SXGQH8i1pXc8twlM7IgtKFaJKFncjXX1H6U8MFfhg2Wu2ye
	VEsMhZLbtG11GrYV+PR6euFqJfqkOQmCPcaF4VFISD8VYhyL/ue44e4dsttLnIPHbnyCJdlnUe9FE
	Dl2ACOc2mRh6aqbNsGXY4Y/085aAgLmBNsGsTsEolxFxldn1SxI6Wrkr5vFXqdx3NItCNKaySwncc
	Y6MbQ5ccOI0KrdyKPoq0VCpAQYlOxhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKLfX-0002om-Q9; Fri, 03 Apr 2020 12:43:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKLfR-0002oM-I5; Fri, 03 Apr 2020 12:43:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id h9so8358011wrc.8;
 Fri, 03 Apr 2020 05:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=HKSaFU1ljMFGNxPUS/qIK5WBodsEvdWVlhlU/sdRISo=;
 b=Mz2mmnd8WwmABTgVe9q8mKJnoErjpgv8IbeGXxlmSqY0iG6TIrwohnd2JhYb8G37Yh
 mcK2rZQkNWMfOY0hbyAERWzwhq5qHvqRPfMaSNL+q+NeJlL4xC5xJKvpIiT1+ZQbEEYv
 UgZbbZF8KIGy3vcHR/toO0BZ8cTCVe6rQZayplH6C9PKuaQzlIrPmjXOAAE4wDduOfJq
 4SfEmO7ZeEvXsUkNABCFfb2wW8vSthEB2hq4+DZeCHlLUDaHCeRJfI8QK1UpcSob1Cx1
 LhiMdXmmXIKrPbHJGw7q+DsfNyTK2oe6gR5D4Temxgwh6IIgh8XW55/7vFR8YdC6rLD3
 5B7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HKSaFU1ljMFGNxPUS/qIK5WBodsEvdWVlhlU/sdRISo=;
 b=lDnq1yQFjXcbDWPhBYk3pQp64Au1phIy2MSvF+KONkq1L0sppclPxM+MdjoS4kyBYg
 sWwjgTUzwdKFEKy2ckAl8uvIw5/uNApm29SVucnfIUNz25bNZtV+DE4r2aXdM2MIayz9
 dqqrLF9br4+vxAJqtv4OSO/VMnKjyqhh/RLgZKszXdGTloWgzH+0U7Owp8LJ3S2XTUQu
 FJOSJ5/9oJru0YRCRUTB1RDA7bUxztVUKKVBRfDomKJtW1Rgik8W8Loz/Zjq6SSnSHms
 2iyqR0IUrxZ+iFUIxVZqyhg+D7kdY7ycA4CP7kG2vwT/pNFl9z0+ea2aATGAH3MvSH5/
 ISdQ==
X-Gm-Message-State: AGi0PuZURhzZ0XUovywwwziFx3xKlmgWE0AlEw+uNt0i+F+DnP/XLMnF
 9mq9ze6q1WJVbayDrJpaNY8=
X-Google-Smtp-Source: APiQypLA6bS2lGCmQmJDp4DJ7Dplpig1wUUk3XE/h5DvHOMnuRPKQ/v+JzBXiURE6qmjxUW6ZblJvw==
X-Received: by 2002:adf:a347:: with SMTP id d7mr2015540wrb.21.1585917803643;
 Fri, 03 Apr 2020 05:43:23 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id p10sm11735307wrm.6.2020.04.03.05.43.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Apr 2020 05:43:23 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: ezequiel@collabora.com
Subject: [PATCH v1] dt-bindings: media: convert rockchip vpu bindings to yaml
Date: Fri,  3 Apr 2020 14:43:16 +0200
Message-Id: <20200403124316.5445-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_054325_622308_AC4CB421 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current dts files for Rockchip with 'vpu' nodes
are manually verified. In order to automate this process
rockchip-vpu.txt has to be converted to yaml.

Changed:
  Add missing reg property

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/media/rockchip-vpu.txt     | 43 -------------
 .../devicetree/bindings/media/rockchip-vpu.yaml    | 75 ++++++++++++++++++++++
 MAINTAINERS                                        |  2 +-
 3 files changed, 76 insertions(+), 44 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.txt
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.yaml

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.txt b/Documentation/devicetree/bindings/media/rockchip-vpu.txt
deleted file mode 100644
index 339252d9c..000000000
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.txt
+++ /dev/null
@@ -1,43 +0,0 @@
-device-tree bindings for rockchip VPU codec
-
-Rockchip (Video Processing Unit) present in various Rockchip platforms,
-such as RK3288, RK3328 and RK3399.
-
-Required properties:
-- compatible: value should be one of the following
-		"rockchip,rk3288-vpu";
-		"rockchip,rk3328-vpu";
-		"rockchip,rk3399-vpu";
-- interrupts: encoding and decoding interrupt specifiers
-- interrupt-names: should be
-		"vepu", "vdpu" on RK3288 and RK3399,
-		"vdpu" on RK3328.
-- clocks: phandle to VPU aclk, hclk clocks
-- clock-names: should be "aclk" and "hclk"
-- power-domains: phandle to power domain node
-- iommus: phandle to a iommu node
-
-Example:
-SoC-specific DT entry:
-	vpu: video-codec@ff9a0000 {
-		compatible = "rockchip,rk3288-vpu";
-		reg = <0x0 0xff9a0000 0x0 0x800>;
-		interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vepu", "vdpu";
-		clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
-		clock-names = "aclk", "hclk";
-		power-domains = <&power RK3288_PD_VIDEO>;
-		iommus = <&vpu_mmu>;
-	};
-
-	vpu: video-codec@ff350000 {
-		compatible = "rockchip,rk3328-vpu";
-		reg = <0x0 0xff350000 0x0 0x800>;
-		interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vdpu";
-		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
-		clock-names = "aclk", "hclk";
-		power-domains = <&power RK3328_PD_VPU>;
-		iommus = <&vpu_mmu>;
-	};
diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
new file mode 100644
index 000000000..c64c33923
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip video processing unit (VPU) codec
+
+maintainers:
+  - Ezequiel Garcia <ezequiel@collabora.com>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3288-vpu
+      - rockchip,rk3328-vpu
+      - rockchip,rk3399-vpu
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+
+  interrupt-names:
+    oneOf:
+      - const: vdpu
+      - items:
+        - const: vepu
+        - const: vdpu
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclk
+
+  iommus:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+  - iommus
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3288-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3288-power.h>
+    vpu: video-codec@ff9a0000 {
+      compatible = "rockchip,rk3288-vpu";
+      reg = <0x0 0xff9a0000 0x0 0x800>;
+      interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
+                   <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+      interrupt-names = "vepu", "vdpu";
+      clocks = <&cru ACLK_VCODEC>,
+               <&cru HCLK_VCODEC>;
+      clock-names = "aclk", "hclk";
+      iommus = <&vpu_mmu>;
+      power-domains = <&power RK3288_PD_VIDEO>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index a480cec62..ce80b22cf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14374,7 +14374,7 @@ M:	Ezequiel Garcia <ezequiel@collabora.com>
 L:	linux-media@vger.kernel.org
 S:	Maintained
 F:	drivers/staging/media/hantro/
-F:	Documentation/devicetree/bindings/media/rockchip-vpu.txt
+F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
 
 ROCKER DRIVER
 M:	Jiri Pirko <jiri@resnulli.us>
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
