Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2202E1571B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 10:28:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNWygilyqr7MHTpGSbkx3PSre5MCNUV1klQZNzT3S2c=; b=TvzNPNJDUf390M
	D4q5ioExVpcDWG1LMyigrtG47vHaRShQTyhe5YZ1imbUHAAgZzVrrKD8Qtjy3BAyjbbOIAk10lrwR
	JM5wXPJYYOaJcBza3hqNM6CflpPGJGDPbZmIPLbnzkTN0Yc45WOyW2Ip4AIUPeGbhtpnj5pEvafj5
	iCuTKubiqd4WuFyToPgecPXbjy9M718UB30gBh4+e4vGKAC6KlBA20qgg3nR1C6rwmMwV6wjo1UJV
	5jXJtt7KlcHkZpUwQ2bOYqbHKvRzLEkM+Ac4JblUwsQWIJy5zDaWPrJlIP4N4X4Ua+AsLqh4q7eaw
	gQljEHXrW55unLNgG55A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15N5-0007VQ-Ny; Mon, 10 Feb 2020 09:28:51 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15Lr-0006VJ-Ui
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 09:27:37 +0000
Received: by mail-lf1-x143.google.com with SMTP id b15so3667819lfc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 01:27:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BjsYE7IwesPMmpyoWDFFmaPCx/RAfe1hi/tzhTSvSdg=;
 b=l7uQesG6M28SqAQiPO0DR6OQH5YRu7JpfAa5/C+Bk02mHPFeXFB/4gQTiDc7CRf/JV
 Co6nbjws7QBm14CGymRUqxWdw3lFnD4GnIy0rupegH1pA9zo3ozlcc6oSlwom2RfeSXs
 PDbFDZLY2BQZsvo3+CgcCsUNd84ZLKER1LT6p23rK5XFr9xea/dkN/pa42w3dnOqD//Z
 QBBvlMkh2pl8te1B3vaW39HaeLxo2XaU+Uz92E/su7EoD9iPrWpSanYtAWVo5C5r1Q/f
 BCl9QezSH6nMBCoQKIt5mSQzG996FDRJY6ew2/88xak5v9jzgT/cDdsT/nRmfR4rupBz
 faTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BjsYE7IwesPMmpyoWDFFmaPCx/RAfe1hi/tzhTSvSdg=;
 b=LmsXnAjtVasjvCDRgpGfcVZj0OxX7nr6qNQbwZrVKn2VCgFcT+d7fnp08PVgYibTby
 rMsprdNTXjO9sgfrDr0NvO3whWxm2SecyTuKcRATnhLsPE+lFht2l3C35uwdil+1UTwx
 4NmCD6pEaiQVthQ3C2DfzCjes3PALM0tccYTy9HCq+O2I8T+dBpC6BOY3YPqr00+ct8s
 xuSZx9Fqex83ulFwdoIs8zDwQqFjIG6nf/DprIfW16GDsdhNAIVWEgikCFKCucwm5NLq
 b5TZFeRd/h850kaMkmLlO1vHcbngpvUy8DO90acBVKvNmdDw0bUQjIlM5MvAOQZlkQre
 FiMQ==
X-Gm-Message-State: APjAAAX7HsTk19ez0BQ8KPoYPi8j507mmxEaIGC6jYBlEkxh+9uCdkLr
 D3KYuQva2u54NLFxOh/+wAEdOA==
X-Google-Smtp-Source: APXvYqxZpnyyWZKheyuaFsm0KonLKcLW4pxi4HBtcPnzMpiGrdOf5lVgPrYFRID8AvhcdlKw6rauYw==
X-Received: by 2002:a19:c3ce:: with SMTP id t197mr286769lff.174.1581326853563; 
 Mon, 10 Feb 2020 01:27:33 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id d9sm5989882lja.73.2020.02.10.01.27.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 01:27:33 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 5/7] dt-bindings: arm: Add RealView YAML schema
Date: Mon, 10 Feb 2020 10:27:11 +0100
Message-Id: <20200210092713.279105-6-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200210092713.279105-1-linus.walleij@linaro.org>
References: <20200210092713.279105-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_012736_056866_BE1EDAF7 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This implements the top-level schema for the ARM RealView
platforms.

Cc: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/arm/arm,realview.yaml | 123 ++++++++++++++++++
 1 file changed, 123 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,realview.yaml

diff --git a/Documentation/devicetree/bindings/arm/arm,realview.yaml b/Documentation/devicetree/bindings/arm/arm,realview.yaml
new file mode 100644
index 000000000000..d6e85d198afe
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/arm,realview.yaml
@@ -0,0 +1,123 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/arm,realview.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM RealView Boards Device Tree Bindings
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |+
+  The ARM RealView series of reference designs were built to explore the ARM
+  11, Cortex A-8 and Cortex A-9 CPUs. This included new features compared to
+  the earlier CPUs such as TrustZone and multicore (MPCore).
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: ARM RealView Emulation Baseboard (HBI-0140) was created
+          as a generic platform to test different FPGA designs, and has
+          pluggable CPU modules, see ARM DUI 0303E.
+        items:
+          - const: arm,realview-eb
+      - description: ARM RealView Platform Baseboard for ARM1176JZF-S
+          (HBI-0147) was created as a development board to test ARM TrustZone,
+          CoreSight and Intelligent Energy Management (IEM) see ARM DUI 0425F.
+        items:
+          - const: arm,realview-pb1176
+      - description: ARM RealView Platform Baseboard for ARM 11 MPCore
+          (HBI-0159, HBI-0175 and HBI-0176) was created to showcase
+          multiprocessing with ARM11 using MPCore using symmetric
+          multiprocessing (SMP). See ARM DUI 0351E.
+        items:
+          - const: arm,realview-pb11mp
+      - description: ARM RealView Platform Baseboard for Cortex-A8 (HBI-0178,
+          HBI-0176 and HBI-0175) was the first reference platform for the
+          Cortex CPU family, including a Cortex-A8 test chip.
+        items:
+          - const: arm,realview-pba8
+      - description: ARM RealView Platform Baseboard Explore for Cortex-A9
+          (HBI-0182 and HBI-0183) was the reference platform for the Cortex-A9
+          CPU.
+        items:
+          - const: arm,realview-pbx
+
+  soc:
+    description: All RealView boards must provide a soc node in the root of the
+      device tree, representing the System-on-Chip since these test chips are
+      rather complex.
+    type: object
+    properties:
+      compatible:
+        oneOf:
+          - items:
+            - const: arm,realview-eb-soc
+            - const: simple-bus
+          - items:
+            - const: arm,realview-pb1176-soc
+            - const: simple-bus
+          - items:
+            - const: arm,realview-pb11mp-soc
+            - const: simple-bus
+          - items:
+            - const: arm,realview-pba8-soc
+            - const: simple-bus
+          - items:
+            - const: arm,realview-pbx-soc
+            - const: simple-bus
+
+    patternProperties:
+      "^.*syscon@[0-9a-f]+$":
+        type: object
+        description: All RealView boards must provide a syscon system controller
+          node inside the soc node.
+        properties:
+          compatible:
+            oneOf:
+              - items:
+                - const: arm,realview-eb11mp-revb-syscon
+                - const: arm,realview-eb-syscon
+                - const: syscon
+                - const: simple-mfd
+              - items:
+                - const: arm,realview-eb11mp-revc-syscon
+                - const: arm,realview-eb-syscon
+                - const: syscon
+                - const: simple-mfd
+              - items:
+                - const: arm,realview-eb-syscon
+                - const: syscon
+                - const: simple-mfd
+              - items:
+                - const: arm,realview-pb1176-syscon
+                - const: syscon
+                - const: simple-mfd
+              - items:
+                - const: arm,realview-pb11mp-syscon
+                - const: syscon
+                - const: simple-mfd
+              - items:
+                - const: arm,realview-pba8-syscon
+                - const: syscon
+                - const: simple-mfd
+              - items:
+                - const: arm,realview-pbx-syscon
+                - const: syscon
+                - const: simple-mfd
+
+        required:
+          - compatible
+          - reg
+
+    required:
+      - compatible
+
+required:
+  - compatible
+  - soc
+
+...
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
