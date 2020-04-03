Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B58119D730
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 15:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=R1jPeQ4m1k+rU4IywjcP6hX0QfHacXvh6laByHuWRLI=; b=lu8
	tvh0pke452AdT3bmOSmo27jFui6MXd2pTjd7r+eJVmp3mqAhVNIL0P3ltKu7U44riH2/9PRIINU9p
	/YF0N2EkuI9hiEM4CelgjmsQgtsGqE+18/esTqv3oj61TBPpAjt30xU+9ke0IXPzqmJ82wekkmgOe
	+anhCKGTzpxfgenqimXH+87DoAIpwXUccotI9k6eWcZdeXdJ04FuzJY6ntrkXoVmUjjQR/7xmI3aW
	XQ+ockoF09bD21pJXD+kO+B1XoD4+3vEs55AGRNt5U+InmsgNKFjLH5CTKLjKY9CC23xzSXJindWE
	59G3sA0j9+6hcIZ71Mr7DFUjfGsOc+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKM1f-00017o-Cg; Fri, 03 Apr 2020 13:06:23 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKM1Y-00016j-85; Fri, 03 Apr 2020 13:06:17 +0000
Received: by mail-wr1-x441.google.com with SMTP id h9so8445082wrc.8;
 Fri, 03 Apr 2020 06:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=YWX9cu/QSo8yRIN7AcBy13ogB4+/rJ1kxLeU3StGuPk=;
 b=Qi7RSUUREUB7NjQKdlKSApbx4ENGqn4aokUL81r8T9zR3j2ArRBvIMNQ6H0MBZxW7C
 RSkOkxN1mazkVMuF9ZInCYn+Lc/b3aIGlISZgDoKippise92hno9knc2+W9QFwFRtya3
 niaQ2NvYMGjI9Q517Xa2hzQdFKU28DDdb1T6fEpYjAdSz6hPUJmYxjVhprnul/rvxK0i
 TvVqe97bD++d7SdEJgolK7xZF7WdY7tqNQSfWzT5XhowIdQ9FJpFydwxJG9fOC7qdNSc
 +LAoVS0SSz8/V+jj4Gn0wVY/TM8cYFs19fc2b/LWEf4QwdMAgr8OTMTdheCIUcpBzLej
 vSdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YWX9cu/QSo8yRIN7AcBy13ogB4+/rJ1kxLeU3StGuPk=;
 b=nH/DYQH2oRhLoHIkfIrxnlZP6WCrCMR9q9AbxWIPNfJtD/JFrfy2Edq4F/uhiOneRf
 4m1weqql0dAoWK+kLZzFcAk+0zVoQ8AnIaXEnUsgozyIYCE4PBQ/ImY7d9kiZnM/WfS6
 3DfREkMpR/dfRam8i0tAWYnZ/JG5GZ+IpdjmmVb5wADAiv2fbsAyXk4rGgz/ZzZXAVKi
 XkJr+2gZmmgZPwBh0Bo0DnX66c6Hq7/1URzNiUEhqykHRgQz7xCrqeOdar1l124kMwGf
 OqkDUj9YrPEU2/63cta0piE9wkgZUQ5LS+gAbq4w3Lt658p62TmEOZIwy0RDFUzxiFtH
 esPQ==
X-Gm-Message-State: AGi0PuZMJ/uxNiCWZaC8WFTZryYMChk4w3d5hPcQ4LRNnhk0noqT3V+v
 Kr5zKcIfJ+sRslPNVoPeofaWHgWq
X-Google-Smtp-Source: APiQypIahrHiJOQlFe44D75IWRJ+qbieepz8CijZqcdOPl7y3Au0IjGYFn4Nnml+G/if8kVNM4+PZw==
X-Received: by 2002:adf:f3d2:: with SMTP id g18mr6387844wrp.356.1585919174979; 
 Fri, 03 Apr 2020 06:06:14 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o9sm7036093wru.29.2020.04.03.06.06.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Apr 2020 06:06:14 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: jacob-chen@iotwrt.com
Subject: [PATCH v2 1/2] dt-bindings: media: convert rockchip rga bindings to
 yaml
Date: Fri,  3 Apr 2020 15:06:06 +0200
Message-Id: <20200403130607.6138-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_060616_315404_0153F628 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Changes v2:
  Change MAINTAINERS
---
 .../devicetree/bindings/media/rockchip-rga.txt     | 34 ----------
 .../devicetree/bindings/media/rockchip-rga.yaml    | 78 ++++++++++++++++++++++
 MAINTAINERS                                        |  2 +-
 3 files changed, 79 insertions(+), 35 deletions(-)
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
diff --git a/MAINTAINERS b/MAINTAINERS
index ce80b22cf..ca7cdd2c0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14367,7 +14367,7 @@ M:	Ezequiel Garcia <ezequiel@collabora.com>
 L:	linux-media@vger.kernel.org
 S:	Maintained
 F:	drivers/media/platform/rockchip/rga/
-F:	Documentation/devicetree/bindings/media/rockchip-rga.txt
+F:	Documentation/devicetree/bindings/media/rockchip-rga.yaml
 
 HANTRO VPU CODEC DRIVER
 M:	Ezequiel Garcia <ezequiel@collabora.com>
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
