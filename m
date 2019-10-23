Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C6DE23F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2g1lTTb63SVUET1olJlyDVxcAkQO6O/7x9ogWD8OruY=; b=SimK210MmQc0BU
	mz+uVLa3vr82PKODjc+j9BxmYKibojzshamXWJZAYnzdyZUWn/9ckT51n+cMszzkm0Xj+8uWLRu9i
	tHA4oEXN1J5VhKlwJlntkaEIGB0LbzvYTsVa5A4SC871wpBekTZT44NhNAMOiuymsJ0uTqu/zb3Dg
	Gg+KhzjyinkNsd4X+jyW6ekFAfq+pUQ7aexN0jxIAx52OR5DTl+uUakCOqLFwp8AN6LpyeJe0fUz7
	v6TYBXW9wj4cQGXjVEOmBCcps3Iy6ywy44ZghH+LpfK+VSm8FmENRxexms8dWyFchXGL9yMVOV/cJ
	/aRK9wPyqkg7IPGHq2ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMtf-0001Zz-Ty; Wed, 23 Oct 2019 20:06:19 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMsm-000135-Pi
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:05:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id t16so18311246wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XSMaBnNcLIC/2A/YQA0ncniU4wnlx2r73tbiVGv77iU=;
 b=qxjiPCFqDFEdtTP50g5dELIWeOTq4rW9OWwBEH106Ku4PwBoHFMq1ZmfMXKGRueonD
 6sTdWIA0ufEia32xU7QofsL2fbE0VL8kW1Vbb1+IXyxhdJFckqAk4E1MekTBqxV/AdCV
 5AbfectYLoxVSXXS/6AAWNiO17zOqwcvZjIUZOK43qYpoA5j0Z3ydOqq6bGRU/zuiO5M
 Cx7BPDHlk5JYX7w44EI221C0zpEJunwvhsdMGb58QQqfKzBXN3M1r2OERBZJ5ZzU8vNg
 yTy12K0NipPm6oBxr5GMZQNkJ1+TuPThpJkc7qlhJFc4OR1VyokE42nE/2tGEWuv+Qq7
 QgiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XSMaBnNcLIC/2A/YQA0ncniU4wnlx2r73tbiVGv77iU=;
 b=NdudMPjsDvV/pKlCTmgRNgFIv7qtcGR2JUcT/7L+4WKjArHcqWOFa2qHu8e+K09CGd
 VZuI2MP24lOmwnZasnVzRIzzRC7F5V2P7Z65CP/XqlcKMB/QE01fSekyJXohI+FHN6Ip
 c5RXe7lv0DwVLU+s/d0paiTHUQzFkzHbPLXG9SvJXdygS4u6nZ2PjwQxEA72wTnWN4X7
 hlsTZQ/a8kwJkgQpXg7HkwdjNEptkYL0GT8UnLxkPjrUppF7o6/Y54S77Zuw0VGVNeDl
 tCvolZlR03sSiLsTwuVYIWfWH5+ccbVRCYl8ujFQsAMrEmTag6xkyagI3uJGvLfRwLOn
 fSYA==
X-Gm-Message-State: APjAAAVjbOtOsiby13SUdXC2rXHv0CK5CFtQqQutPUlkXW+F7F0PBqUC
 dkBWjZvAQSFNor1UFlfU+EUsSey+
X-Google-Smtp-Source: APXvYqxkKsYv+SLGi42ULrVoLAnEzTY36NlrGjW/ZS6V4TyqutUOhjgjf7uUGlhOrPsSxX7lpNzQgA==
X-Received: by 2002:a5d:4aca:: with SMTP id y10mr416770wrs.292.1571861123069; 
 Wed, 23 Oct 2019 13:05:23 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id b5sm177555wmj.18.2019.10.23.13.05.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:05:22 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v6 03/11] dt-bindings: crypto: Add DT bindings documentation
 for sun8i-ce Crypto Engine
Date: Wed, 23 Oct 2019 22:05:05 +0200
Message-Id: <20191023200513.22630-4-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
References: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_130524_924330_238EF3A4 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds documentation for Device-Tree bindings for the
Crypto Engine cryptographic accelerator driver.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 .../bindings/crypto/allwinner,sun8i-ce.yaml   | 88 +++++++++++++++++++
 1 file changed, 88 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml

diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
new file mode 100644
index 000000000000..2c459b8c76ff
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/allwinner,sun8i-ce.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner Crypto Engine driver
+
+maintainers:
+  - Corentin Labbe <clabbe.montjoie@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun8i-h3-crypto
+      - allwinner,sun8i-r40-crypto
+      - allwinner,sun50i-a64-crypto
+      - allwinner,sun50i-h5-crypto
+      - allwinner,sun50i-h6-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Bus clock
+      - description: Module clock
+      - description: MBus clock
+    minItems: 2
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: bus
+      - const: mod
+      - const: ram
+    minItems: 2
+    maxItems: 3
+
+  resets:
+    maxItems: 1
+
+if:
+  properties:
+    compatible:
+      items:
+        const: allwinner,sun50i-h6-crypto
+then:
+  properties:
+      clocks:
+        minItems: 3
+      clock-names:
+        minItems: 3
+else:
+  properties:
+      clocks:
+        maxItems: 2
+      clock-names:
+        maxItems: 2
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/sun50i-a64-ccu.h>
+    #include <dt-bindings/reset/sun50i-a64-ccu.h>
+
+    crypto: crypto@1c15000 {
+      compatible = "allwinner,sun8i-h3-crypto";
+      reg = <0x01c15000 0x1000>;
+      interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+      clock-names = "bus", "mod";
+      resets = <&ccu RST_BUS_CE>;
+    };
+
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
