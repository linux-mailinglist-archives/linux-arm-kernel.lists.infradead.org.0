Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED584D3044
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 20:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRfoBIc4/rXLQ9fRcteZMIwaoPTbnSqBU5hsJkAQ4g8=; b=I7/pBbiBnwZueS
	1Vr1L9TlLiC4znq2AbEBY7/SRnp8scJpyZR+w68w0gWvv+tHuBUAvN8r1B7ZHTXMVXIB3z8hv1amH
	wzWYTqDPMcroM04BQzjfBL0LS/GLFDPXil/F0TLPsFtKAAhIvgZ05+WgSKRsBf6UND0WAfKXxvE/V
	4vEUTgctJKrxR8dT+0Hkop9w59pCXiX98k45+oZgZGwShG7Jki+gn6ysef+3x7eh9n6P6crTo6UBr
	G5Dg2NCOeJPkMDnR6/t66S+GHJwYwuhNX0RJXP0X39K9UeYzaJgV1d2NV1xu2KmxFZqFy2DggvgGF
	HTGTj0YSckQ1bDj5zZpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iId7I-00037N-If; Thu, 10 Oct 2019 18:24:48 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iId6T-0002Zj-Vt
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 18:23:59 +0000
Received: by mail-wm1-x342.google.com with SMTP id a6so7939886wma.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 11:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1FMzJIIyw4z/wqW7e42wz5NIx7jF256+N5mF2lPv9Ug=;
 b=QpEo/GnRkai8NNa+QWMvtXcFWa9Q5DycFBkMC2Q6z9IiLbjtRRyHUqnaBC/tSD75gB
 d2+Iduaj3ZEjNsSKxotbCsnYWW4fOSeBPN7r3WHswD1hjmec8Zn9Tb6q9LRscBM6SCDF
 E2rtfziCQUXEImJpkOuCR3+xCNBqneLI14f0J6dsphh70OKJ/fzTDEYwmJ9Ui5WA4qRQ
 f22sTQQxsvi0UTixfjwThSgwTLlFSICR8M9WLTkur2rIBxRZJ/XpxrDvRFfBtJpWMVJ4
 7x36pfBMn95Od51H26thWUdZUNgEl4+EZYpTrQmiggEH58bF4MGMdLDtdk0TEx0S6PCW
 BROg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1FMzJIIyw4z/wqW7e42wz5NIx7jF256+N5mF2lPv9Ug=;
 b=f8+scHj1FALU7gokw905BFlqwrAeMESk2vRsj+m+DhQwfVAv+R0/Q7aFJpYrZ3jkRn
 5AGq0i1sFFfxDQloygkXQrajcDzgAXKZzTAPsR5FD0m8GTXw6HTiL10pqqcCQKSpn+E2
 pWY/8fjDvU2MRIptJqzzGlUl/ajbIsWKOgq3tJZPWWaRWfoxLeKLHIP7vrLXsHu/bC2Q
 SibE1BvIiWJeDH62zFv7ljbQ5k2+XOfmp1begBqkzQ7TIuw3ju8fC8HGkQjk1Z7oLKzT
 WgqcuPLSZQZ+BJ6p0WrUYcazBjMH3qJ5GYBHpH2SEyIwHMTSCPNaQVB0CsqH43irnlGS
 XZpQ==
X-Gm-Message-State: APjAAAWntTISmsR4qUJ7L5Eh9IdeVQD27fo2s988MW6rrGNtjtIQEDGZ
 lzUZi2iFjLpK/ygMFuLLiYA=
X-Google-Smtp-Source: APXvYqzAJTnCoh1W/7nHXKHA7V3gqZzMl3fnZehxL1H/ZYsMDzH5oxLVlCdICBmUcwhle8kEtEaC2Q==
X-Received: by 2002:a7b:ce07:: with SMTP id m7mr8893122wmc.117.1570731836816; 
 Thu, 10 Oct 2019 11:23:56 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 y186sm11367664wmb.41.2019.10.10.11.23.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 11:23:55 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v3 03/11] dt-bindings: crypto: Add DT bindings documentation
 for sun8i-ce Crypto Engine
Date: Thu, 10 Oct 2019 20:23:20 +0200
Message-Id: <20191010182328.15826-4-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
References: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_112358_072787_F849FEAC 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds documentation for Device-Tree bindings for the
Crypto Engine cryptographic accelerator driver.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 .../bindings/crypto/allwinner,sun8i-ce.yaml   | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml

diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
new file mode 100644
index 000000000000..a5c8f90d267f
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
@@ -0,0 +1,92 @@
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
+  reset-names:
+    const: bus
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
+      reset-names = "bus";
+    };
+
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
