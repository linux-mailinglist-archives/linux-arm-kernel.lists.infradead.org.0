Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFB818481C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 14:29:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=y37dgsESoE5MBYP9Coalwwh3CxKz6pD1W6CK4sDIbuI=; b=Z5D
	mSeytLenwpytGElsAjTnISzLK1IhaZ0IzAjfQxPdw6XxuoDsHobRjk8kduZesKBvQZe20lxdOi9Bs
	nR1PJacs6hsu4Ya8YsndYsmtYSEs80bTl+UOFLWDnrsE+w8sTiD8b0L3QU63PziARVnfOdvqS9AsN
	wqgGGfgw3CJzXYmOeBk5mkuo8CVAR2YbyWaL7OLVJyq1oqhfD/NJ+3VSpKNAR6jhmyYB4V6BpG3xk
	8FdJSNbgqZrO6WKxO5VuYBVCB3a5/6Nr/cGl0w1wvtEpKWS11uWJotQ9ScakXYrnEhXhYj7tv2jV8
	avUC2N7pmXJdbv+r9p9rFJHIktlHstw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCkNn-0000Rp-4z; Fri, 13 Mar 2020 13:29:47 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCkNc-0000Qd-Ea; Fri, 13 Mar 2020 13:29:38 +0000
Received: by mail-wm1-x342.google.com with SMTP id z12so1106799wmf.5;
 Fri, 13 Mar 2020 06:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=lEkfce6ps+UhmXb+c5fNG4aKtiEwyEYC75rMDl9C7ik=;
 b=lgLZJy0utG5SoquafA2HUHEAEzHi6MbriJ8r9wAgdDRgVB2UtbAZqIS9doBFyBn3qu
 Q2bNE2bCyi7HWDSFqYn8JmXEjvphB0AqR1ZNHDbsufLASftuPV69RiuqYldlc6/WN7Ha
 zR5lmfpQ7nri6Bca+EYYbwZ5kKoQhFK4gp95yK+5hWrYljn5dtHXRw0sAedWmvk/fGXX
 2tRzWrz68bGvC0eIpVNS8fkhSIiGMkNhXRDVw8IoG6JWL8vNqt2WKRdw6qeOwDtpEcVC
 ixNbQEOScjAkEd0eBflSBkhNSc/7DDrBk60Lniac6tGbGmJ0OjLgDfdN9w42I5//RhQl
 bsbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=lEkfce6ps+UhmXb+c5fNG4aKtiEwyEYC75rMDl9C7ik=;
 b=mbsXTcgUeysguhdrh0+ju4lhVmZImR5mLOEPR5/Y0VCMy1XocqkHyLXZ1vd2TUdf4u
 kFKEkWmaADpc7GSOU1BsrbarChxopmUpanx4YiLj9k1d1iI0j+X42JfbG3+SXmJVxRGD
 5BX4O2U+dPLGshkk4aZ2kg5t6aK4THt20m+JNTcA9y3CJlt7w6FT50gafQqn6limP7ML
 6obCmElv34RKAhUn5emCiQlQKN129ZO8Bv1YvafbkLykn8iGFSrILIGiPb0kFx4ccRm8
 J29Qb7Xu/GfHZJ9cJW9QvoMlxFor/KeeARU3WibOwfduoiOxMzhURuO3UyerKkaWZ3x1
 2+AA==
X-Gm-Message-State: ANhLgQ0kWsxWK7AqzfILvm/yRTEZoh1IKPbMvcidXFUMatmJYtoloHRN
 iDHqOEidzX+Lun5b/55/z6A=
X-Google-Smtp-Source: ADFU+vuwLQmmZnIs6S6VI+FSvk9wQ+gnswe4ErfBUUselxUc9eSD+2hTZU+er34sHCdtoP1Bo4k4Mg==
X-Received: by 2002:a1c:68d5:: with SMTP id d204mr10866750wmc.15.1584106173975; 
 Fri, 13 Mar 2020 06:29:33 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id z19sm17576705wma.41.2020.03.13.06.29.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Mar 2020 06:29:33 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v1 1/3] dt-bindings: iio: adc: convert rockchip saradc
 bindings to yaml
Date: Fri, 13 Mar 2020 14:29:24 +0100
Message-Id: <20200313132926.10543-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_062936_493757_6AB31F28 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: devicetree@vger.kernel.org, lars@metafoo.de, heiko@sntech.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current dts files with 'saradc' nodes are manually verified.
In order to automate this process rockchip-saradc.txt
has to be converted to yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/iio/adc/rockchip-saradc.txt           | 37 ----------
 .../bindings/iio/adc/rockchip-saradc.yaml          | 79 ++++++++++++++++++++++
 2 files changed, 79 insertions(+), 37 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
deleted file mode 100644
index c2c50b598..000000000
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
+++ /dev/null
@@ -1,37 +0,0 @@
-Rockchip Successive Approximation Register (SAR) A/D Converter bindings
-
-Required properties:
-- compatible: should be "rockchip,<name>-saradc" or "rockchip,rk3066-tsadc"
-   - "rockchip,saradc": for rk3188, rk3288
-   - "rockchip,rk3066-tsadc": for rk3036
-   - "rockchip,rk3328-saradc", "rockchip,rk3399-saradc": for rk3328
-   - "rockchip,rk3399-saradc": for rk3399
-   - "rockchip,rv1108-saradc", "rockchip,rk3399-saradc": for rv1108
-
-- reg: physical base address of the controller and length of memory mapped
-       region.
-- interrupts: The interrupt number to the cpu. The interrupt specifier format
-              depends on the interrupt controller.
-- clocks: Must contain an entry for each entry in clock-names.
-- clock-names: Shall be "saradc" for the converter-clock, and "apb_pclk" for
-               the peripheral clock.
-- vref-supply: The regulator supply ADC reference voltage.
-- #io-channel-cells: Should be 1, see ../iio-bindings.txt
-
-Optional properties:
-- resets: Must contain an entry for each entry in reset-names if need support
-	  this option. See ../reset/reset.txt for details.
-- reset-names: Must include the name "saradc-apb".
-
-Example:
-	saradc: saradc@2006c000 {
-		compatible = "rockchip,saradc";
-		reg = <0x2006c000 0x100>;
-		interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru SCLK_SARADC>, <&cru PCLK_SARADC>;
-		clock-names = "saradc", "apb_pclk";
-		resets = <&cru SRST_SARADC>;
-		reset-names = "saradc-apb";
-		#io-channel-cells = <1>;
-		vref-supply = <&vcc18>;
-	};
diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
new file mode 100644
index 000000000..2908788b3
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/rockchip-saradc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Successive Approximation Register (SAR) A/D Converter
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,saradc
+      - const: rockchip,rk3066-tsadc
+      - const: rockchip,rk3399-saradc
+      - items:
+          - enum:
+            - rockchip,rk3328-saradc
+            - rockchip,rv1108-saradc
+          - const: rockchip,rk3399-saradc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: converter clock
+      - description: peripheral clock
+
+  clock-names:
+    items:
+      - const: saradc
+      - const: apb_pclk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: saradc-apb
+
+  vref-supply:
+    description:
+      The regulator supply for the ADC reference voltage.
+
+  "#io-channel-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - vref-supply
+  - "#io-channel-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3288-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    saradc: saradc@2006c000 {
+      compatible = "rockchip,saradc";
+      reg = <0x2006c000 0x100>;
+      interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru SCLK_SARADC>, <&cru PCLK_SARADC>;
+      clock-names = "saradc", "apb_pclk";
+      resets = <&cru SRST_SARADC>;
+      reset-names = "saradc-apb";
+      vref-supply = <&vcc18>;
+      #io-channel-cells = <1>;
+    };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
