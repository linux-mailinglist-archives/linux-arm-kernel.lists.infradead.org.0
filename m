Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E50AB1571AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 10:28:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byI8uPJVv6dmvwB79Dg6O4liI97R+E6SIXd4McnSFL0=; b=GRE9jP5flBM8cB
	z20y2eHOb33jqhNQRk9+3CLpWUCgTf6FOAHiQKGdPkdtgC78VghrqPn7fku0To3/AUCUcQklu/brh
	1D226QVguMuScTpcuKUlKRPkmV6CxsT7Z6u3XgIhtMxKbCWnB5UcFTAwGB7zHQSPB6kn3wy4/Ce0+
	DX1s7TaTQyt++I71nhgR4s1C8EGTt+rthX9H94J0jjGZBSqOya3xtBw7h7fouaD+Z22uX4fK4Y5BD
	IX7Q3Bs/zeZv0a2yTEBQNIySY+ygr4d/41TlzHlBK7xa31VJ9GXWOaBBHy07KuNhmSUPb8u3IUfi9
	gM0DXJDXvBB7laHniyHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15MY-00071U-VS; Mon, 10 Feb 2020 09:28:18 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15Ln-0006QW-UL
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 09:27:33 +0000
Received: by mail-lj1-x242.google.com with SMTP id x14so6246612ljd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 01:27:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kFLmtO0qC4EaVwrrh7e6Vy7NDWK/PC6a9SN2FOBadcg=;
 b=llFDLP5PXba6ytakgS+GATLFcR2XiettUpM9VuIsmtRN1KDHgz7FiuqPhhN55QFqPo
 ZNoaSbCkrNCtyK5rVmiGGoo0G9rtk+VeBzYPYCEAENyAvRUCtgH3h31Q9VLefU2VHhXx
 PTpYphtDHVz9LBNJi/zayDaz/TOJbRhAUHatni0uTEkM2we0Yn/rqLX7Xw1o8yvBCY0h
 kh7jwwSIKowH5nr3a5wR5QgjYQgHEt/H+eZtYVszOxERRW/rzvp5DDCu1Zfv8q4XgKYn
 VEcKWp+pU7cQGpSNimPaWyPq77bgsPSCc1We167QrVR7DxsHijMSub5zgj5zfwE2+kuI
 vjZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kFLmtO0qC4EaVwrrh7e6Vy7NDWK/PC6a9SN2FOBadcg=;
 b=rdledZ0uHeaeKqPhUCOOAeRMGTbiGhTgo/hj8jQO2foeneGw4oZo0vD+WkV57Sirax
 GqqysbLop/Eqcf+lRzm7EbFAaNUvH5AdLKGNJDyfVBghcstzGiU5xXQ90fARsnrXM2sS
 4h6+UaPheS6cAYZLjhhz20L9wB9NpAPF6S27E9Duh/7vThNYleD/1G8vRwUHVol28ZPM
 1HFtlrXbw3URD068oeAWsS+ZxKFymWhuXzjW27fTsAPMkesWTslLPlS31MEVWYECo+fV
 LqXVXs0oVl6m9cWxpyqPhOaeexIxOp9WY/jhDQBMCk6fhlRiz8MYoEPlDVwx3gMVINoO
 sqdw==
X-Gm-Message-State: APjAAAUEFcj8zG6laHjxLYPOojLSiqcLUxyzhwQOSBYSOSHRk7I3yKNT
 C2Xkp99sRFHEt5qYDrvX26uxWg==
X-Google-Smtp-Source: APXvYqyU75R1YbtpR14fLyyJdEq9Jb+9J2i6jY+AOWmEwmycd6oAX99ys9OUonkjlzRZ46ED4WhDKw==
X-Received: by 2002:a2e:7812:: with SMTP id t18mr302226ljc.289.1581326849944; 
 Mon, 10 Feb 2020 01:27:29 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id d9sm5989882lja.73.2020.02.10.01.27.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 01:27:29 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 3/7] dt-bindings: arm: Add Integrator YAML schema
Date: Mon, 10 Feb 2020 10:27:09 +0100
Message-Id: <20200210092713.279105-4-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200210092713.279105-1-linus.walleij@linaro.org>
References: <20200210092713.279105-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_012731_985669_1795B374 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

This implements the top-level schema for the ARM Integrator
platforms.

Cc: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/arm/arm,integrator.yaml          | 85 +++++++++++++++++++
 1 file changed, 85 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,integrator.yaml

diff --git a/Documentation/devicetree/bindings/arm/arm,integrator.yaml b/Documentation/devicetree/bindings/arm/arm,integrator.yaml
new file mode 100644
index 000000000000..39aa3e31f934
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/arm,integrator.yaml
@@ -0,0 +1,85 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/arm,integrator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Integrator Boards Device Tree Bindings
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |+
+  These were the first ARM platforms officially supported by ARM Ltd.
+  They are ARMv4, ARMv5 and ARMv6-capable using different core tiles,
+  so the system is modular and can host a variety of CPU tiles called
+  "core tiles" and referred to in the device tree as "core modules".
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: ARM Integrator Application Platform, this board has a PCI
+          host and several PCI slots, as well as a number of slots for logical
+          expansion modules, it is referred to as an "ASIC Development
+          Motherboard" and is extended with custom FPGA and is intended for
+          rapid prototyping. See ARM DUI 0098B. This board can physically come
+          pre-packaged in a PC Tower form factor called Integrator/PP1 or a
+          special metal fixture called Integrator/PP2, see ARM DUI 0169A.
+        items:
+          - const: arm,integrator-ap
+      - description: ARM Integrator Compact Platform (HBI-0086), this board has
+          a compact form factor and mainly consists of the bare minimum
+          peripherals to make use of the core module. See ARM DUI 0159B.
+        items:
+          - const: arm,integrator-cp
+      - description: ARM Integrator Standard Development Board (SDB) Platform,
+          this board is a PCI-based board conforming to the Microsoft SDB
+          (HARP) specification. See ARM DUI 0099A.
+        items:
+          - const: arm,integrator-sp
+
+  syscon:
+    description: All Integrator boards must provide a system controller as a
+      node in the root of the device tree.
+    type: object
+    properties:
+      compatible:
+        oneOf:
+          - items:
+            - const: arm,integrator-ap-syscon
+            - const: syscon
+          - items:
+            - const: arm,integrator-cp-syscon
+            - const: syscon
+          - items:
+            - const: arm,integrator-sp-syscon
+            - const: syscon
+    required:
+      - compatible
+      - reg
+
+patternProperties:
+  "^core-module@[0-9a-f]+$":
+    type: object
+    description: the root node in the Integrator platforms must contain
+      a core module child node. They are always at physical address
+      0x10000000 in all the Integrator variants.
+    properties:
+      compatible:
+        contains:
+          const: arm,core-module-integrator
+        description: this node is the core module node, it can be compatible
+          with syscon and simple-bus as well
+
+    required:
+      - compatible
+      - reg
+
+required:
+  - compatible
+  - syscon
+  - core-module@10000000
+
+...
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
