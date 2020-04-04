Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE86819E478
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 12:28:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mZmQEnPBlSud99t6TDPDtf19Wx3Hy46eGVigOPIeKFE=; b=Dpv
	y72nYeYx8EJykw6PRIw14fr0XLxoTFv7mUOrx56w+vlEIxUt1u0TC68wJu5+opLnsaoxIbakzYmSI
	papOuZ94Q2BY4uO/SyaQqOtuW3dzPb+Ac31JRNKomzGxXmAIwZht380Drm9oVwkGuaOwD0Zul0uA+
	9LyNfeWVORXsl1x77opHDMVsGz1ywOttQYSGIVP1bjGVM64+F8IDo5/7u2DTWv2AiLU7fl194/Cb+
	UQG2Xr4vF0cPAilfGUE+HOZpDK6Qjjsja0BDer718AudRje/kySH7YnDP/WOUaClcCQpvIoI5g0We
	RmthehZhppM8Qe0YJI6+PUtuw0aI+PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKg1p-00044h-69; Sat, 04 Apr 2020 10:27:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKg1h-00043L-LM; Sat, 04 Apr 2020 10:27:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id c7so11497359wrx.5;
 Sat, 04 Apr 2020 03:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=eKih6FjvS7COYO30o3HFfIvnq7gBGzr/Z5TRQxkk1Js=;
 b=T4fs6URfTMMkZ58nZbKvih/9LwZ3LhYCyRbXeAohMQQ4T9dYz2r3ZiWknVAqSckEh/
 hQ3qIfXtZwqtL6KxsboiAi82o+DUnLkBMzRYRnT3JiRu+GRoxUQnRZZOUfPqRqavDUP1
 aarSCiwr2AxzJjHcDD5a3xJPhDVsDrz4fBo1s3ZQE2KHLQH0ZAU4CLZNfsCnbwk19CXg
 L4lLtUbGMIdQiwGShlJJaoOrImdJP37x40YxlbpmURRG2ggd6mdlEqeIQ1DbjmoisC6l
 h+8vatFLuBzt0IB9J/K/EOHFYIGpwS34d9iSxoNB3H0aaQD9LbAXif6F4VSDiuUUtr2j
 5Ewg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=eKih6FjvS7COYO30o3HFfIvnq7gBGzr/Z5TRQxkk1Js=;
 b=loFz0TfevrAoMteRnOg/w5Y8R+Eqm+/jyeGooO5G0j1HxcZMhAoR4ay2nPGATqOdUJ
 H6b90FsU3u0FGr0nS2pxgfzreF0Gwx/lwlyCY77bH0xxAve6+vpYGxwmMeOMHrXNrt/u
 m7mJHAfaeZDdFXK/PE3Nt6rc8R/3jB6M/x1JlOFHERmfX5SuykdcVl2RM679Mfb8Evqk
 lpTmPQ2he6g6K9LeHcHUYwLOCxvTZr2K35GLPds1De7fczIkm1wJI3xX1EBrGi02AIdW
 ESJePg6+tOJPUqmS7erlhmuGK4slj+KOK+7jWXr6vz6GBvmnYxo6S/YkX7kE6+EqIvNz
 oKYA==
X-Gm-Message-State: AGi0Pubn70bvUCHXKy77CLBq7ADpGIrILNsplx1O8wbEtOHrfNQyI1b9
 8ZEb21vuibthfWkYTPjKZRA=
X-Google-Smtp-Source: APiQypK6M5sqe1F1zgunzHFxzuhblxRRlmJsO1vLTsy5WHG5SCE4pD/ApQ3p4mlNoz43NETzsUdbkg==
X-Received: by 2002:adf:f9c6:: with SMTP id w6mr14222500wrr.10.1585996063988; 
 Sat, 04 Apr 2020 03:27:43 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c18sm15833178wrx.5.2020.04.04.03.27.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 Apr 2020 03:27:43 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v2 1/3] dt-bindings: iio: adc: convert rockchip saradc
 bindings to yaml
Date: Sat,  4 Apr 2020 12:27:28 +0200
Message-Id: <20200404102730.3295-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_032745_724627_BE1A7A8A 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes v2:
  Add reviewed by
  Fix irq.h already included in arm-gic.h
---
 .../bindings/iio/adc/rockchip-saradc.txt           | 37 ----------
 .../bindings/iio/adc/rockchip-saradc.yaml          | 78 ++++++++++++++++++++++
 2 files changed, 78 insertions(+), 37 deletions(-)
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
index 000000000..9b9882323
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -0,0 +1,78 @@
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
