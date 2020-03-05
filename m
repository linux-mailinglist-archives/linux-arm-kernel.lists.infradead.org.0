Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 387C317A798
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 15:36:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mT/wBBtLgVsUxPhl29YDTTOLa6FknKeosayAF6pybS8=; b=RVu
	Qjy9zRaXk/uTzFasFgbkFYgZpgqkKrRwwVMl/x9x2WBpe0NgndOeFpyuesEzzW3EG32jNMiT2jlgm
	wBMxWnfNzCqnWEyTDmjsGBvdnv2ol/L6wRvHzeXiVVWDsNNX8YCpdHt7weArgB92JHcLiThqDTK3k
	DdjOAxY1SYwhP0ebtFW1jKEBuEdpKV5CWDrEd4JfxskLpaZfAzuKCCySpXfzmTBCNcHOafeaSIa5y
	V51i36Cr+vR5M5XwqBQ8ebSBnNXUcPbwl10NpWukVA1dP/RKssN9wmgbarGs6jtWrfRAxSCPJQ7PY
	HnfRaRlD3D3HGex51nu/6bqu6fQsl1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9rc4-0001dK-2F; Thu, 05 Mar 2020 14:36:36 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9rbr-0001bB-BR; Thu, 05 Mar 2020 14:36:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id g134so6572301wme.3;
 Thu, 05 Mar 2020 06:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Fzw97o/L2ddgOD9Mk5ZgJ4mz/W2IqpyyO7RKo3ExDqI=;
 b=eGAZujSpLYN9hufM9nxWLtaND6o9cSpt+JU/hD4JLIn4WthADj76OEuPkhLFqQlGd9
 oMT5VpoAMrgSKvfmlBhBsFTqW88Ew4UHfRuTcR0GL1s7pnVZYNkqGDEijmLnqSHdL5gB
 7u7eqswqR7ezXwbyCBuYzXKFWIAinvGgoZNyhTHX2nYq7adyiTSXSbdUqn72zZy93iNp
 F0t+mLrEBZgySNr/cLo8rWmYaALeWt/vCC5FYUpH1UZz1mqw95qJYHFew/o8Xd2RkGUM
 i9lJQipeqZz2lZXEDcEQOADzGDludU75qctFHTIS5rwBQT/AIo6V95MiT4Nb37PIOht4
 M/JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Fzw97o/L2ddgOD9Mk5ZgJ4mz/W2IqpyyO7RKo3ExDqI=;
 b=ugSO555E+EzW/m+x3sfcxoB7Q71AwZve3qsH2JrgP0Mm48J/ThXfvVT4pLQbNA1xZw
 dDWN8SF1o6fzwJeE+E0GZEdxd3Vfs3lDqpnPD/XxflRwmIt3YEUrEC9+pNOq+6CIX3Ff
 KU1F/C/9iE1XcV8RXB4aE951vXE/eup65iYGJp8UCHTxyPABUhTsYiaCph+UNGRNwt8J
 6Msx9kt+sVZumQHawP7qAPx2/Mx2H0YXwaRkeJ5lSKmRO9GjaV0tukPXS9hN0hwKwl7X
 Eq9rjVVeN/i1bv/lLAvqY8msTgJUGfvgn+ch9hkqPsavt7WXWkAHO0Nyuo2L1VgnitJP
 IlZA==
X-Gm-Message-State: ANhLgQ1Epowmj8/sUCxa4rrKzTRgmuaMXV238HU0MucYQ1PJwh8VEATP
 anqpTu5z/1BbEKiJLkIYT4s=
X-Google-Smtp-Source: ADFU+vuyVhCo3qL7TfM1oGCbV9+9jXtHRiIy6N9lQU97La20DxCBKFLnBjzVm2081txVHj9hMj8+yQ==
X-Received: by 2002:a05:600c:22cd:: with SMTP id
 13mr10338852wmg.51.1583418980518; 
 Thu, 05 Mar 2020 06:36:20 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g201sm9365124wme.23.2020.03.05.06.36.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Mar 2020 06:36:20 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 1/5] dt-bindings: i2c: convert rockchip i2c bindings to yaml
Date: Thu,  5 Mar 2020 15:36:07 +0100
Message-Id: <20200305143611.10733-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_063623_395452_3184A5ED 
X-CRM114-Status: GOOD (  20.23  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current dts files with 'i2c' nodes are manually verified.
In order to automate this process i2c-rk3x.txt
has to be converted to yaml. In the new setup
i2c-rk3x.yaml will inherit properties from
i2c-controller.yaml.

Also change document name in MAINTAINERS.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/i2c/i2c-rk3x.txt |  68 -----------
 .../devicetree/bindings/i2c/i2c-rk3x.yaml          | 129 +++++++++++++++++++++
 MAINTAINERS                                        |   2 +-
 3 files changed, 130 insertions(+), 69 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-rk3x.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-rk3x.txt b/Documentation/devicetree/bindings/i2c/i2c-rk3x.txt
deleted file mode 100644
index 22f2eeb2c..000000000
--- a/Documentation/devicetree/bindings/i2c/i2c-rk3x.txt
+++ /dev/null
@@ -1,68 +0,0 @@
-* Rockchip RK3xxx I2C controller
-
-This driver interfaces with the native I2C controller present in Rockchip
-RK3xxx SoCs.
-
-Required properties :
-
- - reg : Offset and length of the register set for the device
- - compatible: should be one of the following:
-   - "rockchip,rv1108-i2c": for rv1108
-   - "rockchip,rk3066-i2c": for rk3066
-   - "rockchip,rk3188-i2c": for rk3188
-   - "rockchip,rk3228-i2c": for rk3228
-   - "rockchip,rk3288-i2c": for rk3288
-   - "rockchip,rk3328-i2c", "rockchip,rk3399-i2c": for rk3328
-   - "rockchip,rk3399-i2c": for rk3399
- - interrupts : interrupt number
- - clocks: See ../clock/clock-bindings.txt
-   - For older hardware (rk3066, rk3188, rk3228, rk3288):
-     - There is one clock that's used both to derive the functional clock
-       for the device and as the bus clock.
-   - For newer hardware (rk3399): specified by name
-     - "i2c": This is used to derive the functional clock.
-     - "pclk": This is the bus clock.
-
-Required on RK3066, RK3188 :
-
- - rockchip,grf : the phandle of the syscon node for the general register
-		  file (GRF)
- - on those SoCs an alias with the correct I2C bus ID (bit offset in the GRF)
-   is also required.
-
-Optional properties :
-
- - clock-frequency : SCL frequency to use (in Hz). If omitted, 100kHz is used.
- - i2c-scl-rising-time-ns : Number of nanoseconds the SCL signal takes to rise
-	(t(r) in I2C specification). If not specified this is assumed to be
-	the maximum the specification allows(1000 ns for Standard-mode,
-	300 ns for Fast-mode) which might cause slightly slower communication.
- - i2c-scl-falling-time-ns : Number of nanoseconds the SCL signal takes to fall
-	(t(f) in the I2C specification). If not specified this is assumed to
-	be the maximum the specification allows (300 ns) which might cause
-	slightly slower communication.
- - i2c-sda-falling-time-ns : Number of nanoseconds the SDA signal takes to fall
-	(t(f) in the I2C specification). If not specified we'll use the SCL
-	value since they are the same in nearly all cases.
-
-Example:
-
-aliases {
-	i2c0 = &i2c0;
-}
-
-i2c0: i2c@2002d000 {
-	compatible = "rockchip,rk3188-i2c";
-	reg = <0x2002d000 0x1000>;
-	interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	rockchip,grf = <&grf>;
-
-	clock-names = "i2c";
-	clocks = <&cru PCLK_I2C0>;
-
-	i2c-scl-rising-time-ns = <800>;
-	i2c-scl-falling-time-ns = <100>;
-};
diff --git a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
new file mode 100644
index 000000000..962aefb7d
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
@@ -0,0 +1,129 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/i2c-rk3x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3xxx I2C controller
+
+description:
+  This driver interfaces with the native I2C controller present in Rockchip
+  RK3xxx SoCs.
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+# Everything else is described in the common file
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rv1108-i2c
+      - const: rockchip,rk3066-i2c
+      - const: rockchip,rk3188-i2c
+      - const: rockchip,rk3228-i2c
+      - const: rockchip,rk3288-i2c
+      - const: rockchip,rk3399-i2c
+      - items:
+          - enum:
+            - rockchip,rk3328-i2c
+          - const: rockchip,rk3399-i2c
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    items:
+      - description:
+          For older hardware (rk3066, rk3188, rk3228, rk3288)
+          there is one clock that is used both to derive the functional clock
+          for the device and as the bus clock.
+          For newer hardware (rk3399) this clock is used to derive
+          the functional clock
+      - description:
+          For newer hardware (rk3399) this is the bus clock
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: i2c
+      - const: pclk
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Required on RK3066, RK3188 the phandle of the syscon node for
+      the general register file (GRF)
+      On those SoCs an alias with the correct I2C bus ID
+      (bit offset in the GRF) is also required.
+
+  clock-frequency:
+    default: 100000
+    description:
+      SCL frequency to use (in Hz). If omitted, 100kHz is used.
+
+  i2c-scl-rising-time-ns:
+    default: 1000
+    description:
+      Number of nanoseconds the SCL signal takes to rise
+      (t(r) in I2C specification). If not specified this is assumed to be
+      the maximum the specification allows(1000 ns for Standard-mode,
+      300 ns for Fast-mode) which might cause slightly slower communication.
+
+  i2c-scl-falling-time-ns:
+    default: 300
+    description:
+      Number of nanoseconds the SCL signal takes to fall
+      (t(f) in the I2C specification). If not specified this is assumed to
+      be the maximum the specification allows (300 ns) which might cause
+      slightly slower communication.
+
+  i2c-sda-falling-time-ns:
+    default: 300
+    description:
+      Number of nanoseconds the SDA signal takes to fall
+      (t(f) in the I2C specification). If not specified we will use the SCL
+      value since they are the same in nearly all cases.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - rockchip,rk3066-i2c
+          - rockchip,rk3188-i2c
+
+then:
+  required:
+    - rockchip,grf
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3188-cru-common.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c0: i2c@2002d000 {
+      compatible = "rockchip,rk3188-i2c";
+      reg = <0x2002d000 0x1000>;
+      interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru PCLK_I2C0>;
+      clock-names = "i2c";
+      rockchip,grf = <&grf>;
+      i2c-scl-falling-time-ns = <100>;
+      i2c-scl-rising-time-ns = <800>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 42c21184d..a480cec62 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2279,7 +2279,7 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	linux-rockchip@lists.infradead.org
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
 S:	Maintained
-F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.txt
+F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
 F:	Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
 F:	Documentation/devicetree/bindings/spi/spi-rockchip.yaml
 F:	arch/arm/boot/dts/rk3*
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
