Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8391188A6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 17:36:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DhmkyMvFnAKjR2YU6SFuGphk01t0YHv7YCSvGYBrzkQ=; b=nOv
	Pwbj8+VyIIOX5qk9VcBFHoYvIFrAcf/8pX14m1VfGyNdCAy9jZSGtFQnW6J1mZ6eR3qbSaJiqcLOb
	1A9ym9t+fQk9TiytI2IzU51TFyFhp6skXJhCV82GzBBhb8tOCFNKCZho6p4QV1EOa9YGD5uUubuJS
	dhhWOzIhXGk8vOBC2WFcP9bWasM7f4sBFHHtoKxk3G7ZwSS48XOVoja3oCg9psQSjHGMhrUiGTUxw
	3NpxXWgoGqCIoN/+ViXxbGGSD/Oz2k2511a9aNrvNzkDw0FvrL3+26F6sg0rTo4qGypp+EcDky/tH
	XLTOsOr55u3GsqQmATXHYPjDvFiAUwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFCO-00034F-Dx; Tue, 17 Mar 2020 16:36:12 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFCG-00033H-2W; Tue, 17 Mar 2020 16:36:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id z13so6134043wml.0;
 Tue, 17 Mar 2020 09:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=WiB0u/leEGdcW1B+cHUhgFUc+5o/BZhuLHHQx8vVK4Y=;
 b=a47jTiixaLJG9rKjBDKQjHrYCYALh0axG7IEvuZmG5kxyTi7LzW49WxdAtDI3N1B08
 fNZ9DSCMu+gE61Ca4ftdVmbNPN0bDsaPdrrtdhYEv50m827YOKLS/6Gd6O1NLO+0l5gG
 vUrhlc3K4hhmbVBv7ceC0vxDHPBGEoACsmXtx9T3Xr/zY5gZyyuJ0tycgNE6D7Gnu7tv
 bNyRVzJDxkwtExRU1s39sfiYY+LuPgFnZzZ3qyWB+emuzKu5yUnPOvqpIgSNHZzkLnkh
 KrweK3LyHhw3j9ITk66Fqm7fVi8MzYGKDkLeVbXd+Pf/yQe8aJIv53p17+b3NigbrGjg
 /zoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WiB0u/leEGdcW1B+cHUhgFUc+5o/BZhuLHHQx8vVK4Y=;
 b=i5px2cq6PK/yPUKcpJ9cunz/uzATDi1FYVKfYLpr+XHrIOjD61//Xn66wnPNpOUnHX
 RQGlrUMNYPh6uStPzP4bfgSQsdBP78mM7zn7uh4Eh/JF3f4eiU4KKMXzNeqVPPpXbASh
 zf7/SIvQCQsrFqply+gDKACgPEUuzZszMKp2KJvB1uNZ++7lhdlfggqi/kHW5+pJTwsX
 Q5l90l5iGUv2yC28nJdhp3UpwQ6eoY9MUJ0i6oBPezrRLA2zrDuN+mJw1bsuMBKpVQai
 MHHvsBtJmiDwoIxz8+iRURaa+jdCfegMIOFOznc6k0q1PUGfmNcCyrGNmxVhNPakpdJJ
 Xc/w==
X-Gm-Message-State: ANhLgQ1hL0//9sf/Cxmfsz4yBhSj1xhdM4aNyG67tC0HGviPnZLULd9R
 kpzZe8qJdk6v7qTMjKD4B10=
X-Google-Smtp-Source: ADFU+vvTbdxbQ8NuM1t3+foh2whJCugiJIlAkWJHzkdA1yliE1Ar3iJ2fVnrlc/J0tx6/r10MnuCGw==
X-Received: by 2002:a1c:7f10:: with SMTP id a16mr145719wmd.1.1584462962316;
 Tue, 17 Mar 2020 09:36:02 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b10sm5389702wrm.30.2020.03.17.09.36.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Mar 2020 09:36:01 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH 1/2] dt-bindings: sram: convert rockchip-pmu-sram bindings
 to yaml
Date: Tue, 17 Mar 2020 17:35:54 +0100
Message-Id: <20200317163555.18107-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_093604_141097_BC3BE8CA 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current dts files with 'rockchip-pmu-sram' compatible nodes
are manually verified. In order to automate this process
rockchip-pmu-sram.txt has to be converted to yaml.

A check with the command below gives for example this error:

arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff700000:
compatible:0:
'rockchip,rk3288-pmu-sram' was expected
arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff700000:
compatible:
['mmio-sram'] is too short

Fix this error by adding an extra 'mmio-sram' compatible and
'if then' structure to filter yaml warnings.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/
rockchip-pmu-sram.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/sram/rockchip-pmu-sram.txt | 16 --------
 .../bindings/sram/rockchip-pmu-sram.yaml           | 46 ++++++++++++++++++++++
 2 files changed, 46 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
 create mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.yaml

diff --git a/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt b/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
deleted file mode 100644
index 6b42fda30..000000000
--- a/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-Rockchip SRAM for pmu:
-------------------------------
-
-The sram of pmu is used to store the function of resume from maskrom(the 1st
-level loader). This is a common use of the "pmu-sram" because it keeps power
-even in low power states in the system.
-
-Required node properties:
-- compatible : should be "rockchip,rk3288-pmu-sram"
-- reg : physical base address and the size of the registers window
-
-Example:
-	sram@ff720000 {
-		compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
-		reg = <0xff720000 0x1000>;
-	};
diff --git a/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.yaml b/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.yaml
new file mode 100644
index 000000000..bb72e4f53
--- /dev/null
+++ b/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sram/rockchip-pmu-sram.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SRAM for pmu
+
+description:
+  The sram of pmu is used to store the function of resume from maskrom(the 1st
+  level loader). This is a common use of the "pmu-sram" because it keeps power
+  even in low power states in the system.
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+# The extra 'mmio-sram' compatible and 'if then' structure is needed
+# to filter yaml warnings.
+properties:
+  compatible:
+    oneOf:
+      - const: mmio-sram
+      - items:
+        - const: rockchip,rk3288-pmu-sram
+        - const: mmio-sram
+
+  reg:
+    maxItems: 1
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: rockchip,rk3288-pmu-sram
+
+then:
+  required:
+    - compatible
+    - reg
+
+examples:
+  - |
+    pmu_sram: sram@ff720000 {
+      compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
+      reg = <0xff720000 0x1000>;
+    };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
