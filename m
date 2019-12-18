Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD6B123E75
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 05:22:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vaxy4fae7TT++Lz2w/bPPQWoHc5HVX1NhgLYZkGiQpo=; b=mwYQc71mMTvC0d
	ssig5pB/X94FMo8k92xUSjGxlet+S7JK/JyAWggKqVgDfx8Zp4qC032lXEIKKGs9M/SRX9oSGApgq
	RYxv7hwgtBXCoWXrLy+liqSeqYjIGIRsHKKI96XMSF3vcx8cGXKUX2MGu0LKUf1j4tw7plKGfwHEf
	8AmuFJa18RhUPIREgEenlrdTXFeCDOKC119KRSZ9iBzZiajnVVSSU1FvSKPPKxmIOSVjPxO13wlDP
	HO4ScI6tCw6muMWDVYuPe823tG7ktkSFDIL7CbMzDxLZCW3006LbAH9m2PPuWKPGcCyasNO7wDqyV
	/DLGYh0MZdszm9O0qj9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihQqr-00019L-AL; Wed, 18 Dec 2019 04:22:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihQq2-0000dF-KR
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 04:21:32 +0000
Received: by mail-pf1-x443.google.com with SMTP id p14so476334pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 20:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=npMj8u0di2OyfuNH4N410BtqEfh3bSH+Sq8lHYLRu2k=;
 b=skg64jTGQE65DyJCxi2WOtP+F0BF5VHFh+63lrWjnx7Brr/Vc7ngnKiSOO+K4XzV38
 0yWoM9kV/DpWAkDz4n9JnjPlLI74pUM2hPIM5Lj/p4pk8m/kVq/I4vVgqwVSD21VYB8n
 MobspSYphaSUsfLjq5CPhZd4vU/Pz0keFwyC2lupfa4vRruX4gUeSKPYAywecGj21BBQ
 r9ytK0Zk7w/S0ixBlGeg1Cqy5HY2ieQ4zLp2VYx3V5YuHzmVjTSMNw+T+p6oYOdTz1gu
 QVpTHwgI2lYIY6qc2bbd0PdyYG3MdisTBiAIxL8VqE8lW9OnJEZABkJt1fRZONB/pfuf
 T6MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=npMj8u0di2OyfuNH4N410BtqEfh3bSH+Sq8lHYLRu2k=;
 b=kD5sXDiac96MGgViYEBg5A3mffdHsMszurfKtP0pDxvXyhhHKXbBf+1AIAPdHFANPL
 u0h+yWDrVB6IVIW9g7BBmD+1eVAOPZ3DTaVE/sLfvkrzkT5EFFWfwompOfs14Wsh0aYx
 2E1PgEnqtHlejCGgkQg1eKzggP1y27f1/oWvnMjAGB33Jg2dnLD3uKQApDsK+wkXi9ZW
 i1/wdHCHbKNWix2HaI3bLCOFk/th5FHvyCMCB0h2+rZfJUR0px1iyLxxVwXr/bvpAxr5
 1Cx80oIsjy5k+4NQc0DMMnOsrxFYgzQ6poPUQuYFGAUupqtZp8cAG6XP3/dcWEvI5Rxh
 n0SQ==
X-Gm-Message-State: APjAAAUiF2fFo3KUBpCeX7ZWc61aUK0iZ2bzHXB/kNLLjooYx+T0Vu7a
 iJIzn4YQ3B/wBc8zVz61qdE=
X-Google-Smtp-Source: APXvYqzjRDLlV/nbrbOH2SEKHrMXnWg6SzAeK6/M5hYnY3GEoJvrWwu0E3JCNUUPG5fx7QApjbt4og==
X-Received: by 2002:a63:5809:: with SMTP id m9mr631607pgb.26.1576642889749;
 Tue, 17 Dec 2019 20:21:29 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id g17sm775380pfb.180.2019.12.17.20.21.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 20:21:29 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megous@megous.com>,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 2/7] dt-bindings: thermal: add YAML schema for
 sun8i-thermal driver bindings
Date: Tue, 17 Dec 2019 20:21:16 -0800
Message-Id: <20191218042121.1471954-3-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218042121.1471954-1-anarsoul@gmail.com>
References: <20191218042121.1471954-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_202130_671082_D3D0646B 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yangtao Li <tiny.windzz@gmail.com>

sun8i-thermal driver supports thermal sensor in wide range of Allwinner
SoCs. Add YAML schema for its bindings.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 .../thermal/allwinner,sun8i-a83t-ths.yaml     | 146 ++++++++++++++++++
 1 file changed, 146 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml

diff --git a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
new file mode 100644
index 000000000000..8768c2450633
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
@@ -0,0 +1,146 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/allwinner,sun8i-a83t-ths.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner SUN8I Thermal Controller Device Tree Bindings
+
+maintainers:
+  - Yangtao Li <tiny.windzz@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun8i-a83t-ths
+      - allwinner,sun8i-h3-ths
+      - allwinner,sun8i-r40-ths
+      - allwinner,sun50i-a64-ths
+      - allwinner,sun50i-h5-ths
+      - allwinner,sun50i-h6-ths
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  nvmem-cells:
+    maxItems: 1
+    description: Calibration data for thermal sensors
+
+  nvmem-cell-names:
+    const: calibration
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun50i-h6-ths
+
+    then:
+      properties:
+        clocks:
+          minItems: 1
+          maxItems: 1
+
+        clock-names:
+          minItems: 1
+          maxItems: 1
+          items:
+            - const: bus
+
+    else:
+      properties:
+        clocks:
+          minItems: 1
+          maxItems: 2
+
+        clock-names:
+          minItems: 1
+          maxItems: 2
+          items:
+            - const: bus
+            - const: mod
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun8i-h3-ths
+
+    then:
+      properties:
+        "#thermal-sensor-cells":
+          const: 0
+
+    else:
+      properties:
+        "#thermal-sensor-cells":
+          const: 1
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - const: allwinner,sun8i-h3-ths
+              - const: allwinner,sun8i-r40-ths
+              - const: allwinner,sun50i-a64-ths
+              - const: allwinner,sun50i-h5-ths
+              - const: allwinner,sun50i-h6-ths
+
+    then:
+      required:
+        - clocks
+        - clock-names
+        - resets
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - '#thermal-sensor-cells'
+
+examples:
+  - |
+    thermal-sensor@1f04000 {
+         compatible = "allwinner,sun8i-a83t-ths";
+         reg = <0x01f04000 0x100>;
+         interrupts = <0 31 0>;
+         nvmem-cells = <&ths_calibration>;
+         nvmem-cell-names = "calibration";
+         #thermal-sensor-cells = <1>;
+    };
+
+  - |
+    thermal-sensor@1c25000 {
+         compatible = "allwinner,sun8i-h3-ths";
+         reg = <0x01c25000 0x400>;
+         clocks = <&ccu 0>, <&ccu 1>;
+         clock-names = "bus", "mod";
+         resets = <&ccu 2>;
+         interrupts = <0 31 0>;
+         nvmem-cells = <&ths_calibration>;
+         nvmem-cell-names = "calibration";
+         #thermal-sensor-cells = <0>;
+    };
+
+  - |
+    thermal-sensor@5070400 {
+         compatible = "allwinner,sun50i-h6-ths";
+         reg = <0x05070400 0x100>;
+         clocks = <&ccu 0>;
+         clock-names = "bus";
+         resets = <&ccu 2>;
+         interrupts = <0 15 0>;
+         nvmem-cells = <&ths_calibration>;
+         nvmem-cell-names = "calibration";
+         #thermal-sensor-cells = <1>;
+    };
+
+...
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
