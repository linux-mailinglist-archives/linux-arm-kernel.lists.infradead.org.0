Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F98112681A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 18:29:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIcGLP1AeYqIUBZ1vddbeZtbUH91fzZiZQdNzNy9s4U=; b=eydJXPEy+5Sl1g
	rSKflOWXm2lCFYruD/45LImSpIOBOzeX1oPsQWyeA0fqA/7BVTpGhIItETrfRAEf8Em4/UQ08vaSA
	tgYCnBf4AoVG50LjSkOhsu/uobuNQmKWMypjj8Vhuv+/hwzT7JWMbvN3Q0576vU9wGr5wZ8DVDmyY
	9r+zYpfngvm+Isa587uCvGG3/cokRIKbZhmfDlvcNMo2AYYEhjwH0CONkG1pm2SPq9yJUH/l64H9G
	6Xgeiu2U4xnYZFyvqnYs69Q8AJrNjNTozmimAbBPuSP78gJWKoUXiswwKJZAaLohyzyhRnvvs1kKc
	97G11bsN6sZJkeXmWgog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihzc6-0005E2-Ss; Thu, 19 Dec 2019 17:29:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihzbI-0004is-As
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 17:28:38 +0000
Received: by mail-pg1-x542.google.com with SMTP id z124so3452645pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 09:28:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e3InGdrhpW/KFEKCJevkSkCg0s1j2OL38jx4frb9szs=;
 b=Wsf3R1uMAUach3XE6iWhG1D9/GXB8M5kwET7ibyp1tCrm4L2T1qCT1UPf734SZ8DDU
 10YDrdEqsyY1+tGrGdaKNbz08QM6DUCA1mZCje9ybR70fP9gsK22ESwZlN7pRVm7j4Bk
 L1AnQ7RJBXCX0wxTynFTSpz5eJUAfo/MySgs52o3gmmjaM45btwVVOsN0ngQ1DWn1Hrq
 DaamtOSR6QO5RAaY1mtYALbdAn4HCtZkcHMIzTnc1Gb67JWf50DMjsZIrtYl0Bu3UOAw
 7U3XYtedIpXqAdl1q2vU9O0q08ZEknQ/3FV67pfuUVFVdNRg1X9Nn+rUQT24zNi1dyV9
 Tj3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e3InGdrhpW/KFEKCJevkSkCg0s1j2OL38jx4frb9szs=;
 b=ZyG6VY9QlHMd3KuT/MU2qK7pV9x6CBpSozo8qIA1QmR5/qrlPNqBm+LKcpZ41K9IzL
 ssnboGb6T6kuh3YQlJz+rKeui917PbkSDBD9dFNTaH5paVXaUcdBRWSHpP6T4bFZI1YQ
 LXShAyvHo14EtR+Mk3AgqnElYk6OKkT6z6CURQro5vbID7d+v6MckmW/13ukSUCCNtKI
 zE+06ORYGEU9Pbu2ewqdfp0J6aKGKjedvXMEy4qhfZBUnecWiodLEtnJIg2BmRMVbxX/
 JAaZ+5qo2GE2lDhMe3Tt5n7if/Gw+9Hgxz2cp0UuoI/wCAewroLpk/57nxu1fzrvREPo
 jL4w==
X-Gm-Message-State: APjAAAX0E0cOVb1qMnLHCYbtZhG/xzGQlmEKKaqs5hC1QOQIKUqstTCS
 TZLiJq6d3XBoo5TnB0r5HJeUDL6QevA=
X-Google-Smtp-Source: APXvYqzwDCblQ9076CWYrCAih5FSrXhjVCXbFNvklN6EzJLQsKc5svJnBA87rZmDJlPqP80g6g/zSw==
X-Received: by 2002:a62:446:: with SMTP id 67mr10455562pfe.109.1576776515822; 
 Thu, 19 Dec 2019 09:28:35 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id v143sm536209pfc.71.2019.12.19.09.28.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 09:28:34 -0800 (PST)
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
Subject: [PATCH v8 2/7] dt-bindings: thermal: add YAML schema for
 sun8i-thermal driver bindings
Date: Thu, 19 Dec 2019 09:28:18 -0800
Message-Id: <20191219172823.1652600-3-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219172823.1652600-1-anarsoul@gmail.com>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_092836_383997_51036545 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 .../thermal/allwinner,sun8i-a83t-ths.yaml     | 160 ++++++++++++++++++
 1 file changed, 160 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml

diff --git a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
new file mode 100644
index 000000000000..87369264feb9
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
@@ -0,0 +1,160 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/allwinner,sun8i-a83t-ths.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner SUN8I Thermal Controller Device Tree Bindings
+
+maintainers:
+  - Vasily Khoruzhick <anarsoul@gmail.com>
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
+  clocks:
+    minItems: 1
+    maxItems: 2
+    items:
+      - description: Bus Clock
+      - description: Module Clock
+
+  clock-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      - const: bus
+      - const: mod
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
+  # See ./thermal.txt for details
+  "#thermal-sensor-cells":
+    enum:
+      - 0
+      - 1
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
+          maxItems: 1
+
+        clock-names:
+          maxItems: 1
+
+    else:
+      properties:
+        clocks:
+          minItems: 2
+
+        clock-names:
+          minItems: 2
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
+additionalProperties: false
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
