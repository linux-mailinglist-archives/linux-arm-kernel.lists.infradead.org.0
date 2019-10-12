Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3524D51D4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 20:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2g1lTTb63SVUET1olJlyDVxcAkQO6O/7x9ogWD8OruY=; b=bDsNox5XTrm8QZ
	VTl5cb82JiItGBr4Q6a/D1g1U4SyOYbEmtw8asGrvSByhM6DVzURl0WWiFpLfpWSnkPCxe7jsovRu
	7BaMLs/iepw7K2MxLOHOP18cnxN7IwPfV0dOjyevzvCaQr1kKDWUr2WBniO0hqnPPretujegqx/bB
	8jO3pOcuthGH9bmnqLtwNgmlYnXtajPl9fH2lo7bHTZh0AFPOs54sBxTiHU/D+eOFTJb4I4ArJ8CD
	DsUpGtaeL8I2Xnlt4f2CIx/yG9oMbWThSPvnTz/CHxgU6XibcuRjHOAJkd7k0tU1XQZJlCTaHsmZA
	VEpZRgIuUrSC9t44r52Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJMS2-00039d-Ox; Sat, 12 Oct 2019 18:49:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJMRq-00037y-QW
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 18:49:04 +0000
Received: by mail-wm1-x344.google.com with SMTP id 5so13358940wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 11:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XSMaBnNcLIC/2A/YQA0ncniU4wnlx2r73tbiVGv77iU=;
 b=NPNVLmWAeFcXj3knWuqJnAxJ+1GylRrTwiTa77k1yTT3oxlyyyBt8UNmnledAaDpI1
 u6djkoPktc+ZxrfozJgsNZTrWPituND1cSkVXNqka6R00deTXKitvsGSNk3+t0qPVyW8
 yT7XSpCqhxzmpJpriicVF036kpd4rUTTMWSXi+T2cFU5hpL/5lUGiUOEJ/W6JBcGWYhl
 3vAHmdsKXaouQWUf/de7nSu2uvT4Uo/S9AevCKik2kgA2uR+3SBp60kTeEnNnf1bRyYO
 jOKz3Ex8yRvHwQI90qtb1BAs2iTY6ePGgL3ShQ+9AfQF5dXluk5hqD/AULQ4qleu/JmN
 7h7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XSMaBnNcLIC/2A/YQA0ncniU4wnlx2r73tbiVGv77iU=;
 b=pcMa5QCx/C7F8uzxX4k8hdIR8Soptf1/I6O1zATWycmS54UIJJEOn/t6yfS81bjR0k
 lWteu3MWKP4jMFEg+xzaYME5S7CwuAbcUX30eEjXW6Jagi3M3Iqzr2HB8w01D6mLNLFq
 ijtdBy5RvqLM7FXli63NtCIUH2LZrXpGB/bqCqx4PMBFfB13/8eXRqZVrfczoNWg3MJp
 q4Oi4HMnM9Z5IviWbKxk6PweeEjPl4yZnUgDsxHofhSAlEEvDaMcIGvw4KQNSi6xe7o5
 EbJ1oSq7Y+eqkqnu2xakGklUiKD0mxUFP8K6FlPi5MgW2ggr0lC156QzxWUA6l7LLRzo
 fj6w==
X-Gm-Message-State: APjAAAXQjiTEbZtHEPFMTXGRnamYBcCRX17RxEwVDQ5suIE10OHw0FIj
 uJeR0M+51y/iNo4ZdoOaTQE=
X-Google-Smtp-Source: APXvYqxgq2hv3i+rHpHikEMKw1s6a8GqUoLKsHkTq1qlgD7lEHfX/LfAbBnGE7cDTzg8cuhDZLNTzg==
X-Received: by 2002:a7b:cd04:: with SMTP id f4mr8103167wmj.91.1570906141381;
 Sat, 12 Oct 2019 11:49:01 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id a13sm33670580wrf.73.2019.10.12.11.49.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:49:00 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v4 03/11] dt-bindings: crypto: Add DT bindings documentation
 for sun8i-ce Crypto Engine
Date: Sat, 12 Oct 2019 20:48:44 +0200
Message-Id: <20191012184852.28329-4-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
References: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_114902_853903_B4500C5F 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
