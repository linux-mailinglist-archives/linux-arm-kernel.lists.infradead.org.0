Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E96F13B481
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 22:39:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=73Pm+f2KgnD2ERylteGGyKKJC0UuKdFM1GSzZvkuSw8=; b=tg5XoyR706OGKa75Ep58icVkwn
	qE9JxxFO5GNTBPsRIbzRfWyoBT5NyeLGMGZJHJNlDEID82xOP5zGeEa+Ei/P12wQLIqRmMEEs86Qy
	3yO5Y2NylLQ3c4s6BfIZa54IuApht9b78rg3EXXgx6CpstFDoQfs+TfLEF0GvYHNxCFfd2qwcqrxA
	MxfwJKzKvD3tvXJHrNEIQNdeOsERmuRFJHHbWBXSarUuDSuohFViVNEu/QVNxVmrix36gyu/jC3dK
	t3fwgK8IpQYruB76oGEiRVzc+36Ib6poMqF2gZaN9Mepj38lZWfSBnz3m7HPrNRxPygiGh2F6Txd/
	jUcVjtuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irTtz-00011r-TR; Tue, 14 Jan 2020 21:39:07 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irTtF-0000RH-5C; Tue, 14 Jan 2020 21:38:24 +0000
Received: by mail-wm1-x343.google.com with SMTP id a5so15571468wmb.0;
 Tue, 14 Jan 2020 13:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zMlYSd9gdjSyr+fvrrUx7m71AJzwJ/EGsztEOkjtZkI=;
 b=QCy/XZq9cb8b44xp0o/+TDC5liA34MFVcL4GpiONMbdM8gdeUSZsH1x+R8ormLx550
 b5LsP0H9TqQTb81ITLUCQT3cRaSS2LYCgDyDhDihgYwCvhHjGSyfzVPXItD0K94sR8GW
 gdU5J0pR3jbq7UPdNyP3Q9LqetfUlGG+GU7TVeoIh4dAJ9d1BpvCEi3foRdKsynr/CtE
 UaBer7XAm6l6X/InpjngAem1ii1m/NTNyMKCUifts1f9l9O/LVJcbGBBaiFPSwSv1Hc3
 o7xDmMDbxqvgFHQ4FUnTKQf1CCJyP0sjiUxiDMYkxrkN3ZvelR5F+Xns+9xsvDBQIcM8
 L+GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zMlYSd9gdjSyr+fvrrUx7m71AJzwJ/EGsztEOkjtZkI=;
 b=BjgCri6m/QzsgJs8AQuaMiU5MLFlpjXD6o96cqzIdBKOz6ccQATVTMKBfxrCmrO3jv
 fmvTX2tHcPFRoCOk33V5FI+aoLcbC95KtoSc7E/vfaX8MXFOsNNUKg838Xd97fAQ7v2s
 KB9xXYtwQTv+/08rV96ianV+nYlcK1x7Vd7R78qRjd7k4UIutOCd2j5wFAo9C1WZ8ev3
 0Iy1j/3zk7TKwqseGGUuOGU7bqY2Mjg+dosR3Aa3OiU4JyL6i6kIkjPbXuQzz/ZTpW/U
 PYkagAuBg5+LU55y41hDCV3BvrbJimi99vEUzPPnD1jq8/9dZg4SE70uROThHVj9qlba
 xCLQ==
X-Gm-Message-State: APjAAAVdsTedvG09Lr0QoecI0xPZmeqxNEqHM9LIkjMetZ54CkfoRajn
 nU1LgcSWniCVtM9jWWJQrAggTnX5
X-Google-Smtp-Source: APXvYqwzBCnO8hbLw9uOyBWsVUBiO+5uZBrgww1tJVYeE/kYrgQQ5myt1/iRlL4meTPgZzB4RLDuVA==
X-Received: by 2002:a1c:3c8b:: with SMTP id j133mr29761712wma.66.1579037899924; 
 Tue, 14 Jan 2020 13:38:19 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w17sm21639511wrt.89.2020.01.14.13.38.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Jan 2020 13:38:19 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: ulf.hansson@linaro.org
Subject: [RFC PATCH v1 3/3] dt-bindings: mmc: convert rockchip dw-mshc
 bindings to yaml
Date: Tue, 14 Jan 2020 22:38:09 +0100
Message-Id: <20200114213809.27166-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200114213809.27166-1-jbx6244@gmail.com>
References: <20200114213809.27166-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_133821_217059_1E0899A3 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the Rockchip designware mobile storage host controller
device tree bindings to yaml.
Add maintainer.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/mmc/rockchip-dw-mshc.txt   |  49 --------
 .../devicetree/bindings/mmc/rockchip-dw-mshc.yaml  | 137 +++++++++++++++++++++
 MAINTAINERS                                        |   1 +
 3 files changed, 138 insertions(+), 49 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.txt
 create mode 100644 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.txt b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.txt
deleted file mode 100644
index 6f629b12b..000000000
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.txt
+++ /dev/null
@@ -1,49 +0,0 @@
-* Rockchip specific extensions to the Synopsys Designware Mobile
-  Storage Host Controller
-
-The Synopsys designware mobile storage host controller is used to interface
-a SoC with storage medium such as eMMC or SD/MMC cards. This file documents
-differences between the core Synopsys dw mshc controller properties described
-by synopsys-dw-mshc.txt and the properties used by the Rockchip specific
-extensions to the Synopsys Designware Mobile Storage Host Controller.
-
-Required Properties:
-
-* compatible: should be
-	- "rockchip,rk2928-dw-mshc": for Rockchip RK2928 and following,
-							before RK3288
-	- "rockchip,rk3288-dw-mshc": for Rockchip RK3288
-	- "rockchip,rv1108-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RV1108
-	- "rockchip,px30-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip PX30
-	- "rockchip,rk3036-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RK3036
-	- "rockchip,rk3228-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RK322x
-	- "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RK3328
-	- "rockchip,rk3368-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RK3368
-	- "rockchip,rk3399-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RK3399
-
-Optional Properties:
-* clocks: from common clock binding: if ciu-drive and ciu-sample are
-  specified in clock-names, should contain handles to these clocks.
-
-* clock-names: Apart from the clock-names described in synopsys-dw-mshc.txt
-  two more clocks "ciu-drive" and "ciu-sample" are supported. They are used
-  to control the clock phases, "ciu-sample" is required for tuning high-
-  speed modes.
-
-* rockchip,default-sample-phase: The default phase to set ciu-sample at
-  probing, low speeds or in case where all phases work at tuning time.
-  If not specified 0 deg will be used.
-
-* rockchip,desired-num-phases: The desired number of times that the host
-  execute tuning when needed. If not specified, the host will do tuning
-  for 360 times, namely tuning for each degree.
-
-Example:
-
-	rkdwmmc0@12200000 {
-		compatible = "rockchip,rk3288-dw-mshc";
-		reg = <0x12200000 0x1000>;
-		interrupts = <0 75 0>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-	};
diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
new file mode 100644
index 000000000..da16916b7
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -0,0 +1,137 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/rockchip-dw-mshc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip designware mobile storage host controller device tree bindings
+
+description:
+  Rockchip uses the Synopsys designware mobile storage host controller
+  to interface a SoC with storage medium such as eMMC or SD/MMC cards.
+  This file documents the combined properties for
+  the core Synopsys dw mshc controller that are not already included
+  in the synopsys-dw-mshc-common.yaml file and the Rockchip specific
+  extensions.
+
+allOf:
+  - $ref: "synopsys-dw-mshc-common.yaml"
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    oneOf:
+      # for Rockchip PX30
+      - items:
+          - const: rockchip,px30-dw-mshc
+          - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK2928 and before RK3288
+      - const: rockchip,rk2928-dw-mshc
+      # for Rockchip RK3036
+      - items:
+          - const: rockchip,rk3036-dw-mshc
+          - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK322x
+      - items:
+          - const: rockchip,rk3228-dw-mshc
+          - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK3288
+      - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK3328
+      - items:
+          - const: rockchip,rk3328-dw-mshc
+          - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK3368
+      - items:
+          - const: rockchip,rk3368-dw-mshc
+          - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK3399
+      - items:
+          - const: rockchip,rk3399-dw-mshc
+          - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RV1108
+      - items:
+          - const: rockchip,rv1108-dw-mshc
+          - const: rockchip,rk3288-dw-mshc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 4
+    description:
+      Handle to "biu" and "ciu" clocks for the bus interface unit clock and
+      the card interface unit clock. If "ciu-drive" and "ciu-sample" are
+      specified in clock-names, it should also contain
+      handles to these clocks.
+
+  clock-names:
+    oneOf:
+      - items:
+        - const: biu
+        - const: ciu
+      - items:
+        - const: biu
+        - const: ciu
+        - const: ciu-drive
+        - const: ciu-sample
+    description:
+      Apart from the clock-names "biu" and "ciu" two more clocks
+      "ciu-drive" and "ciu-sample" are supported. They are used
+      to control the clock phases, "ciu-sample" is required for tuning
+      high speed modes.
+
+  rockchip,default-sample-phase:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 360
+      - default: 0
+    description:
+      The default phase to set "ciu-sample" at probing,
+      low speeds or in case where all phases work at tuning time.
+      If not specified 0 deg will be used.
+
+  rockchip,desired-num-phases:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 360
+      - default: 360
+    description:
+      The desired number of times that the host execute tuning when needed.
+      If not specified, the host will do tuning for 360 times,
+      namely tuning for each degree.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3288-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    sdmmc: dwmmc@ff0c0000 {
+      compatible = "rockchip,rk3288-dw-mshc";
+      reg = <0x0 0xff0c0000 0x0 0x4000>;
+      interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
+               <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
+      clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+      resets = <&cru SRST_MMC0>;
+      reset-names = "reset";
+      fifo-depth = <0x100>;
+      max-frequency = <150000000>;
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index d6ad01d71..1b16c0fdf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2240,6 +2240,7 @@ L:	linux-rockchip@lists.infradead.org
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
 S:	Maintained
 F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.txt
+F:	Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
 F:	arch/arm/boot/dts/rk3*
 F:	arch/arm/boot/dts/rv1108*
 F:	arch/arm/mach-rockchip/
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
