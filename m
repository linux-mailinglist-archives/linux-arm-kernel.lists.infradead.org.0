Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 208A919AD05
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 15:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y56tPb0O0dSaHEWLML2a8HtUNRJZjnlKqxBT0mP6OKQ=; b=mxtxAKw+3NqWhS
	idkdJlROd/MOTWnXPjXDv1nwE+ZPEHEdbPOIiR1/PWCsABh4nVkalCoBN2q8+Wg2G9pF7icpyJUOr
	UhAKzXqR6BEcnUfLqZ+Hwwx6QHqB+I2r7bjrZN9TjjVmePrYpvuvIYk6RdSx5M+mkyU+FKHGHfyQg
	IPuCB3Lho/4F9okOdMYKJiBmiOoCI8DhcdqIHUuq5f3fZkdZfQ7EoJunuk4qRaRxQICw6EE8Ja9uF
	sxgqqh0fSh1yEK0XxgYUMBkeAyy648+A8uk4qgN00QOCJL3R5kOrcFQsiSDpwLeXnLfJ2q47w8Klq
	XU2vAzpANBZsQ4PnBkWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJddo-0004wv-7Z; Wed, 01 Apr 2020 13:42:48 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJddg-0004vT-MA
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 13:42:42 +0000
Received: by mail-pj1-x1043.google.com with SMTP id g9so2744186pjp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Apr 2020 06:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nigauri-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hJRkuri+52/NYhR4P5oF7/5wtZs4I8toehnqIWt5fAw=;
 b=zKQiYJD43I58XZSGeOdLFmb066UAc9qa1JgNxJPsP9RoIqQVsFmHmId4uZqwtPh2jr
 jLUTOXuf2v/WGLTLgn/hx4i6rV7sDazrrx/x3rOJlXcdy/1cCRSQjHRdYad1NUKT4HEe
 ns2/XGeDQr+hXBUmixVdievZUsvm0oMdGVu/10OGeKnfOF7tAg/cFtqwAVgYjxXya+q1
 NvZZJ+w1vqQ8fU+QFckJ1rXxCHYqylPTEXBE5U66R3ERaK0zEVqCBex4o6xit70JScKF
 GuVUhND+iTDenLK6SzrfNdAFsUR2X2ZUsjOucAdjUbLk2MNnNDW17Rb85Kspne1ScnJz
 t1nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hJRkuri+52/NYhR4P5oF7/5wtZs4I8toehnqIWt5fAw=;
 b=g9OEA0fcD+uVjxXIVeTnpB+tWAMjDjnOCfTlt5tnjf2iupYiwlY3k7CraypKz6cBcR
 osVCjHkUpQNaCKex0wow7xB9e1Fpm8ZvrhwceKZYyTjBTCi9/QzfC6s+JDeA8e7ExTzj
 uvqZha4IppuFPTEhvHaAeS3xmaK3z3EOngSKfEEljwLdV/WyYxDQXzbgGPn5zAlLNxfc
 DUkcRkmmgymqzRgqAeNBjC/Sk/eQA7WgKuzNWpzy06kLkQ0mdnVF2Q3CIEj1mghXp76B
 +X4aYt9VGWejnO1xLbcQ2pnJkacccJfLvwoYvw3bMnNNRToY4cAtx8BAUxipXwkjfoQ2
 Qr4A==
X-Gm-Message-State: AGi0PuaxGdJyEKZXbbJR7HAK5cXUVdIFzsvLUuKWTsh0UzaCTTOJwcuv
 5Ys+78EkIybSg8J7JA26XD0S
X-Google-Smtp-Source: APiQypKPUCKj53e9OPViAg30mCZMfIwyCH5EpAb0FsfM18/PiV3fHoyFFllX8iterjb+8o+gHbzp/g==
X-Received: by 2002:a17:90a:94c8:: with SMTP id
 j8mr5035339pjw.155.1585748559475; 
 Wed, 01 Apr 2020 06:42:39 -0700 (PDT)
Received: from localhost ([2405:6581:5360:1800:bf52:1f8e:88d2:6ec])
 by smtp.gmail.com with ESMTPSA id lj14sm1710606pjb.25.2020.04.01.06.42.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2020 06:42:38 -0700 (PDT)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: i2c: cadence: Migrate i2c-cadence documentation
 to YAML
Date: Wed,  1 Apr 2020 22:42:22 +0900
Message-Id: <20200401134222.60317-1-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_064240_790056_D34A8C63 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>, Wolfram Sang <wsa@the-dreams.de>,
 Michal Simek <michal.simek@xilinx.com>, Rob Herring <robh+dt@kernel.org>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The document was migrated to YAML format and renamed cdns,i2c-r1p10.yaml

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 .../bindings/i2c/cdns,i2c-r1p10.yaml          | 58 +++++++++++++++++++
 .../devicetree/bindings/i2c/i2c-cadence.txt   | 28 ---------
 MAINTAINERS                                   |  2 +-
 3 files changed, 59 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-cadence.txt

diff --git a/Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml b/Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml
new file mode 100644
index 0000000000000..dc0952f3780fe
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/i2c/cdns,i2c-r1p10.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Cadence I2C controller Device Tree Bindings
+
+maintainers:
+  - Michal Simek <michal.simek@xilinx.com>
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+properties:
+  compatible:
+    enum:
+      - cdns,i2c-r1p10 # cadence i2c controller version 1.0
+      - cdns,i2c-r1p14 # cadence i2c controller version 1.4
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clock-frequency:
+    minimum: 1
+    maximum: 400000
+    description: |
+      Desired operating frequency, in Hz, of the bus.
+
+  clock-name:
+    const: pclk
+    description: |
+      Input clock name.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    i2c@e0004000 {
+        compatible = "cdns,i2c-r1p10";
+        clocks = <&clkc 38>;
+        interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+        reg = <0xe0004000 0x1000>;
+        clock-frequency = <400000>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+    };
diff --git a/Documentation/devicetree/bindings/i2c/i2c-cadence.txt b/Documentation/devicetree/bindings/i2c/i2c-cadence.txt
deleted file mode 100644
index ebaa90c58c8e7..0000000000000
--- a/Documentation/devicetree/bindings/i2c/i2c-cadence.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Binding for the Cadence I2C controller
-
-Required properties:
-  - reg: Physical base address and size of the controller's register area.
-  - compatible: Should contain one of:
-		* "cdns,i2c-r1p10"
-		Note:	Use this when cadence i2c controller version 1.0 is used.
-		* "cdns,i2c-r1p14"
-		Note:	Use this when cadence i2c controller version 1.4 is used.
-  - clocks: Input clock specifier. Refer to common clock bindings.
-  - interrupts: Interrupt specifier. Refer to interrupt bindings.
-  - #address-cells: Should be 1.
-  - #size-cells: Should be 0.
-
-Optional properties:
-  - clock-frequency: Desired operating frequency, in Hz, of the bus.
-  - clock-names: Input clock name, should be 'pclk'.
-
-Example:
-	i2c@e0004000 {
-		compatible = "cdns,i2c-r1p10";
-		clocks = <&clkc 38>;
-		interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
-		reg = <0xe0004000 0x1000>;
-		clock-frequency = <400000>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-	};
diff --git a/MAINTAINERS b/MAINTAINERS
index 38fe2f3f7b6f2..1fb95a12eda48 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2672,7 +2672,7 @@ F:	drivers/cpuidle/cpuidle-zynq.c
 F:	drivers/block/xsysace.c
 N:	zynq
 N:	xilinx
-F:	Documentation/devicetree/bindings/i2c/i2c-cadence.txt
+F:	Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml
 F:	Documentation/devicetree/bindings/i2c/i2c-xiic.txt
 F:	drivers/clocksource/timer-cadence-ttc.c
 F:	drivers/i2c/busses/i2c-cadence.c
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
