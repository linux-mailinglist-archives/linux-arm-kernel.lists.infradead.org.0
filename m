Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3F01571B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 10:29:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPxT/uvET7GMjgnVJi3Nd/XrgaNDYTCPwdfSBJJuba0=; b=GMlQS7n/G67AYL
	as+m0vEuyvYNNGp4EXZR6giS8i7VuDNjw0Kyncg8koWbHBWeYBFFiuR+fUCs484B1LKXgq5r1eS/z
	mYilvf0h8BPLHhYyETVPJZDJe0HI5MT25fIWhZ1hA7VbJGIp1n7rXRJ4klEgvZkqX3IYr8iXuy/r8
	wtxHamc80seU3+W2nesvXVEGVhYIE2qVUQ1Vv2JSmGxhqc5jjR5Thh3ezE6+4keeCb9hXtnopsuQr
	InQAiKBattyBYTdg00OSCfKNXwqU0hTKcnbXTobbahFt0XLYzO/XGMgpfaexHyiCU0SRT8deNNGAP
	CEjqYqAJcVP7LgmBYyug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15NH-0007ll-UI; Mon, 10 Feb 2020 09:29:03 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15Lt-0006Wo-HZ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 09:27:40 +0000
Received: by mail-lf1-x143.google.com with SMTP id t23so3656492lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 01:27:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jAkaYaS1dWjwotJL6Ekax5c9MO/wRSZYk2j1/gM/YaQ=;
 b=e/RqvAgWE9raJPkliN8umOw06eNe7EOMSAJLg1J0mGXZ4TRpDe/nyACa4AwrABj4sG
 hHBgUdaRp0G9LUnjcXJdO5KF/30+uphZZYi5L7W6jKksZCZiwNECA+l7uXIQA0BXQb5L
 MQCI9/xxvZqyaRHrtVHkopKDhkLtkzMypKcyMSnm/RBZMqmb17wwprWoB+rVRnuhhPcZ
 H8LUxbauOEEFKK5Q7ROkXYOdIVwl7p39mkMGd5hykTXpo4kfMxZR0Yck72/9ZaG2F8vc
 xdCV+bBkE049TmXTFfelvyf55hGlbD1lUYQ2Em1xmYNmmarOGxav6xA4TlqhCQ4ebJ6W
 rQWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jAkaYaS1dWjwotJL6Ekax5c9MO/wRSZYk2j1/gM/YaQ=;
 b=pfcBwTxN1LMB3ChUPXqgGhk2P61tcIxoNwAk0JFMZdfq/By9z/T5yv7ltTQu9uL4w1
 u+OXWh18I6uNOZzqVYajarwzaYxMA16nkM+KsPbh2QipiIBlR31AY9vJkI38aApUQKp3
 lFNOP2ysdShgy74XJSGjZE12WqD3W7ehIthmuRUR5Veo7um+9dJlqDylkzYZ600gcsRD
 Wd39IQH0A4iAOZukqyfUOSCNm1foiuVTz2hEWsqlq68xfaSKg005MA3Lrq9rBLW3B84d
 EzJcjSu7IEoi2xTLa+J920/lv0iu0/HwoYBVNnjEnxymdBIvErjYr6OQBttqmQ8L1i8l
 egPw==
X-Gm-Message-State: APjAAAUzp+HPBD8PzB2QrcdNK1eF8eFhY8Er1LGnHo1aIuPvJGfG6f0L
 DmIeqYiPGfBzOcd7/xZkHho5OT406yY=
X-Google-Smtp-Source: APXvYqzoiljqCocVevGzEspn0FFdQcd+EWibgTR+iXw11ag1cVDxjNin8zY+APNspo2m/9p35xPkCg==
X-Received: by 2002:a05:6512:3ac:: with SMTP id
 v12mr260046lfp.205.1581326855205; 
 Mon, 10 Feb 2020 01:27:35 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id d9sm5989882lja.73.2020.02.10.01.27.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 01:27:34 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 6/7] dt-bindings: arm: Add Versatile Express and Juno YAML
 schema
Date: Mon, 10 Feb 2020 10:27:12 +0100
Message-Id: <20200210092713.279105-7-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200210092713.279105-1-linus.walleij@linaro.org>
References: <20200210092713.279105-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_012738_040993_D52CA285 
X-CRM114-Status: GOOD (  16.14  )
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

This implements the top-level schema for the ARM Versatile
Express and Juno platforms.

Cc: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/arm/arm,vexpress-juno.yaml       | 118 ++++++++++++++++++
 1 file changed, 118 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml

diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
new file mode 100644
index 000000000000..f22edf66b622
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
@@ -0,0 +1,118 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/arm,vexpress-juno.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Versatile Express and Juno Boards Device Tree Bindings
+
+maintainers:
+  - Sudeep Holla <sudeep.holla@arm.com>
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |+
+  ARM's Versatile Express platform were built as reference designs for exploring
+  multicore Cortex-A class systems. The Versatile Express family contains both
+  32 bit (Aarch32) and 64 bit (Aarch64) systems.
+
+  The board consist of a motherboard and one or more daughterboards (tiles). The
+  motherboard provides a set of peripherals. Processor and RAM "live" on the
+  tiles.
+
+  The motherboard and each core tile should be described by a separate Device
+  Tree source file, with the tile's description including the motherboard file
+  using an include directive. As the motherboard can be initialized in one of
+  two different configurations ("memory maps"), care must be taken to include
+  the correct one.
+
+  When a new generation of boards were introduced under the name "Juno", these
+  shared to many common characteristics with the Versatile Express that the
+  "arm,vexpress" compatible was retained in the root node, and these are
+  included in this binding schema as well.
+
+  The root node indicates the CPU SoC on the core tile, and this
+  is a daughterboard to the main motherboard. The name used in the compatible
+  string shall match the name given in the core tile's technical reference
+  manual, followed by "arm,vexpress" as an additional compatible value. If
+  further subvariants are released of the core tile, even more fine-granular
+  compatible strings with up to three compatible strings are used.
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: CoreTile Express A9x4 (V2P-CA9) has 4 Cortex A9 CPU cores
+          in MPCore configuration in a test chip on the core tile. See ARM
+          DUI 0448I. This was the first Versatile Express platform.
+        items:
+          - const: arm,vexpress,v2p-ca9
+          - const: arm,vexpress
+      - description: CoreTile Express A5x2 (V2P-CA5s) has 2 Cortex A5 CPU cores
+          in a test chip on the core tile. It is intended to evaluate NEON, FPU
+          and Jazelle support in the Cortex A5 family. See ARM DUI 0541C.
+        items:
+          - const: arm,vexpress,v2p-ca5s
+          - const: arm,vexpress
+      - description: Coretile Express A15x2 (V2P-CA15) has 2 Cortex A15 CPU
+          cores in a MPCore configuration in a test chip on the core tile. See
+          ARM DUI 0604F.
+        items:
+          - const: arm,vexpress,v2p-ca15
+          - const: arm,vexpress
+      - description: CoreTile Express A15x4 (V2P-CA15, HBI-0237A) has 4 Cortex
+          A15 CPU cores in a test chip on the core tile. This is the first test
+          chip called "TC1".
+        items:
+          - const: arm,vexpress,v2p-ca15,tc1
+          - const: arm,vexpress,v2p-ca15
+          - const: arm,vexpress
+      - description: Coretile Express A15x2 A7x3 (V2P-CA15_A7) has 2 Cortex A15
+          CPU cores and 3 Cortex A7 cores in a big.LITTLE MPCore configuration
+          in a test chip on the core tile. See ARM DDI 0503I.
+        items:
+          - const: arm,vexpress,v2p-ca15_a7
+          - const: arm,vexpress
+      - description: LogicTile Express 20MG (V2F-1XV7) has 2 Cortex A53 CPU
+          cores in a test chip on the core tile. See ARM DDI 0498D.
+        items:
+          - const: arm,vexpress,v2f-1xv7,ca53x2
+          - const: arm,vexpress,v2f-1xv7
+          - const: arm,vexpress
+      - description: Arm Versatile Express Juno "r0" (the first Juno board,
+          V2M-Juno) was introduced as a vehicle for evaluating big.LITTLE on
+          AArch64 CPU cores. It has 2 Cortex A57 CPU cores and 4 Cortex A53
+          cores in a big.LITTLE configuration. It also features the MALI T624
+          GPU. See ARM document 100113_0000_07_en.
+        items:
+          - const: arm,juno
+          - const: arm,vexpress
+      - description: Arm Versatile Express Juno r1 Development Platform
+          (V2M-Juno r1) was introduced mainly aimed at development of PCIe
+          based systems. Juno r1 also has support for AXI masters placed on
+          the TLX connectors to join the coherency domain. Otherwise it is the
+          same configuration as Juno r0. See ARM document 100122_0100_06_en.
+        items:
+          - const: arm,juno-r1
+          - const: arm,vexpress
+      - description: Arm Versatile Express Juno r2 Development Platform
+          (V2M-Juno r2). It has the same feature set as Juno r0 and r1. See
+          ARM document 100114_0200_04_en.
+        items:
+          - const: arm,juno-r2
+          - const: arm,vexpress
+
+  arm,hbi:
+    $ref: '/schemas/types.yaml#/definitions/uint32'
+    description: This indicates the ARM HBI (Hardware Board ID), this is
+      ARM's unique board model ID, visible on the PCB's silkscreen.
+
+  arm,vexpress-site:
+    $ref: '/schemas/types.yaml#/definitions/uint32'
+    description: Site
+
+required:
+  - compatible
+  - arm,hbi
+
+...
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
